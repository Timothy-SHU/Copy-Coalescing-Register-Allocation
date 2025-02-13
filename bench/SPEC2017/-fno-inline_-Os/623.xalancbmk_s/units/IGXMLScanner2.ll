; ModuleID = 'IGXMLScanner2.cpp'
source_filename = "IGXMLScanner2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::IGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
%"struct.xercesc_2_7::PSVIElemContext" = type { i8, i8, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.2" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.8" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::PSVIAttributeList" = type <{ ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSSimpleTypeDefinition" = type { %"class.xercesc_2_7::XSTypeDefinition", i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::RefHash2KeysTableOf.4" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.5" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem.6" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.9" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.12" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.3" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.13" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.15" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.16" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.17" = type { ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::XMLDTDDescriptionImpl" = type { %"class.xercesc_2_7::XMLDTDDescription", ptr, ptr }
%"class.xercesc_2_7::XMLDTDDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XMLGrammarDescription" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf.18" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.19" }
%"class.xercesc_2_7::ValueVectorOf.19" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"class.xercesc_2_7::IdentityConstraintHandler" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLSchemaDescriptionImpl" = type { %"class.xercesc_2_7::XMLSchemaDescription", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLSchemaDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XSDDOMParser" = type { %"class.xercesc_2_7::XercesDOMParser", i8, i32, i32, i32, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XSDErrorReporter", %"class.xercesc_2_7::XSDLocator" }
%"class.xercesc_2_7::XercesDOMParser" = type { %"class.xercesc_2_7::AbstractDOMParser", ptr, ptr, ptr }
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XSDLocator" = type { %"class.xercesc_2_7::Locator", i64, i64, ptr, ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::TraverseSchema" = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, ptr, ptr, %"class.xercesc_2_7::GeneralAttributeCheck" }
%"class.xercesc_2_7::GeneralAttributeCheck" = type { ptr, ptr, %"class.xercesc_2_7::IDDatatypeValidator" }
%"class.xercesc_2_7::IDDatatypeValidator" = type { %"class.xercesc_2_7::StringDatatypeValidator" }
%"class.xercesc_2_7::StringDatatypeValidator" = type { %"class.xercesc_2_7::AbstractStringValidator" }
%"class.xercesc_2_7::AbstractStringValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i32, i32, i32, i8, ptr }
%"class.xercesc_2_7::ValueVectorOf.20" = type { i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::ThrowEOEJanitor" = type { i8, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::NameIdPool.21" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem.23" = type { ptr, ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.24" = type { i8, i32, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZNK11xercesc_2_712KVStringPair6getKeyEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPt = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_712ArrayJanitorItEixEi = comdat any

$_ZNK11xercesc_2_712ArrayJanitorItE3getEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv = comdat any

$_ZN11xercesc_2_717SchemaElementDecl14getAttWildCardEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv = comdat any

$_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE11containsKeyEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZNK11xercesc_2_712KVStringPair8getValueEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv = comdat any

$_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_ = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZN11xercesc_2_77XMLAttr12setSpecifiedEb = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_ = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_713getAttDefListEbPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef10isExternalEv = comdat any

$_ZNK11xercesc_2_77XMLAttr9getPrefixEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_713PSVIAttribute14updateValidityENS_8PSVIItem14VALIDITY_STATEE = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv = comdat any

$_ZN11xercesc_2_77XMLAttrD2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_ = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemIjEC2EPviPjPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE5resetEPS3_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb = comdat any

$_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE = comdat any

$_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner22resetValidationContextEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_712ValueStackOfIbE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv = comdat any

$_ZNK11xercesc_2_79XMLBuffer7isEmptyEv = comdat any

$_ZNK11xercesc_2_79XMLBuffer6getLenEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv = comdat any

$_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt = comdat any

$_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv = comdat any

$_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZN11xercesc_2_715SchemaValidator11setNillableEb = comdat any

$_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPtE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierD2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_ = comdat any

$_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv = comdat any

$_ZN11xercesc_2_79ElemStack17setValidationFlagEb = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_ = comdat any

$_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv = comdat any

$_ZNK11xercesc_2_79XMLReader9isXMLCharEt = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl10isExternalEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt = comdat any

$_ZNK11xercesc_2_79XMLBufBid6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBid3setEPKtj = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb = comdat any

$_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt = comdat any

$_ZNK11xercesc_2_79ElemStack7isEmptyEv = comdat any

$_ZN11xercesc_2_79ElemStack19setReferenceEscapedEv = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorD2Ev = comdat any

$_ZNK11xercesc_2_720EndOfEntityException9getEntityEv = comdat any

$_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv = comdat any

$_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb = comdat any

$_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt = comdat any

$_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt = comdat any

$_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi = comdat any

$_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_79XMLBufBid7isEmptyEv = comdat any

$_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl8getValueEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv = comdat any

$_ZN11xercesc_2_79ReaderMgr12skipPastCharEt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev = comdat any

$_ZNK11xercesc_2_712SchemaAttDef16getNamespaceListEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [18 x i8] c"IGXMLScanner2.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712IGXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !352 {
  %6 = alloca i32, align 4
  %7 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = alloca [100 x i16], align 16
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %14 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  store i32 %2, ptr %6, align 4, !tbaa !353
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %16 = load ptr, ptr %15, align 8, !tbaa !357
  %17 = load ptr, ptr %16, align 8, !tbaa !372
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  %21 = icmp ne i32 %20, 1
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %23 = load i8, ptr %22, align 8, !range !374
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %39, label %26, !prof !375

26:                                               ; preds = %5
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %28 = load ptr, ptr %27, align 8, !tbaa !376
  %29 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %28) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34, !prof !377

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 8, !tbaa !376
  %33 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %32) #13
  br label %39

34:                                               ; preds = %26
  %35 = load i8, ptr %22, align 8, !range !374
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37, !prof !378

37:                                               ; preds = %34
  %38 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %29) #13
  br label %47

39:                                               ; preds = %5, %31, %34
  %40 = phi i1 [ false, %34 ], [ true, %31 ], [ true, %5 ]
  %41 = phi ptr [ %29, %34 ], [ null, %31 ], [ null, %5 ]
  %42 = phi ptr [ null, %34 ], [ %33, %31 ], [ null, %5 ]
  %43 = load ptr, ptr %3, align 8, !tbaa !372
  %44 = getelementptr inbounds ptr, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef zeroext i1 %45(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
  br label %47

47:                                               ; preds = %39, %37
  %48 = phi i1 [ false, %37 ], [ %40, %39 ]
  %49 = phi ptr [ %29, %37 ], [ %41, %39 ]
  %50 = phi ptr [ null, %37 ], [ %42, %39 ]
  %51 = phi i1 [ %38, %37 ], [ %46, %39 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 16
  %53 = load i32, ptr %52, align 8, !tbaa !379
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8, !tbaa !379
  %55 = icmp ne i32 %2, 0
  %56 = or i1 %51, %55
  br i1 %56, label %57, label %966, !prof !383

57:                                               ; preds = %47
  %58 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %59) #13
  %60 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 0, ptr %8, align 1, !tbaa !384
  %61 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !385
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67, !prof !386

64:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(1) %8) #13
          to label %67 unwind label %65

65:                                               ; preds = %64
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %964

67:                                               ; preds = %64, %57
  %68 = load i32, ptr %6, align 4, !tbaa !353
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %724, label %70, !prof !387

70:                                               ; preds = %67
  %71 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %74 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  br label %77

77:                                               ; preds = %70, %715
  %78 = phi i64 [ 0, %70 ], [ %716, %715 ]
  %79 = trunc i64 %78 to i32
  %80 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %79) #13
          to label %81 unwind label %94

81:                                               ; preds = %77
  %82 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %80) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %10) #11
  %83 = load ptr, ptr %71, align 8, !tbaa !388
  %84 = getelementptr inbounds i32, ptr %83, i64 %78
  %85 = load i32, ptr %84, align 4, !tbaa !353
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %113, label %87, !prof !389

87:                                               ; preds = %81
  %88 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %82) #13
  %89 = icmp ult i32 %88, 100
  br i1 %89, label %90, label %98, !prof !390

90:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %10, ptr noundef %82) #13
          to label %91 unwind label %96

91:                                               ; preds = %90
  %92 = sext i32 %85 to i64
  %93 = getelementptr inbounds [100 x i16], ptr %10, i64 0, i64 %92
  store i16 0, ptr %93, align 2, !tbaa !391
  br label %108

94:                                               ; preds = %77
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %964

96:                                               ; preds = %102, %98, %90
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %720

98:                                               ; preds = %87
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %100 = load ptr, ptr %99, align 8, !tbaa !393
  %101 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %82, ptr noundef %100) #13
          to label %102 unwind label %96

102:                                              ; preds = %98
  %103 = load ptr, ptr %99, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %101, ptr noundef %103) #13
          to label %104 unwind label %96

104:                                              ; preds = %102
  %105 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xercesc_2_712ArrayJanitorItEixEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %85) #13
  store i16 0, ptr %105, align 2, !tbaa !391
  %106 = call noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  %107 = sext i32 %85 to i64
  br label %108

108:                                              ; preds = %104, %91
  %109 = phi i64 [ %107, %104 ], [ %92, %91 ]
  %110 = phi ptr [ %106, %104 ], [ %10, %91 ]
  %111 = getelementptr inbounds i16, ptr %82, i64 %109
  %112 = getelementptr inbounds i16, ptr %111, i64 1
  br label %113

113:                                              ; preds = %81, %108
  %114 = phi ptr [ %112, %108 ], [ %82, %81 ]
  %115 = phi ptr [ %110, %108 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %81 ]
  %116 = invoke noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %115, i32 noundef 0) #13
          to label %117 unwind label %135

117:                                              ; preds = %113
  %118 = load i32, ptr %72, align 8, !tbaa !394
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %126, label %120, !prof !395

120:                                              ; preds = %117
  %121 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %114, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #13
  br i1 %121, label %126, label %122, !prof !396

122:                                              ; preds = %120
  %123 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %116) #13
          to label %124 unwind label %137

124:                                              ; preds = %122
  %125 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %123, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #13
  br i1 %125, label %126, label %130, !prof !397

126:                                              ; preds = %120, %117, %124
  %127 = load i32, ptr %61, align 4, !tbaa !385
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %597, !prof !398

129:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1, !tbaa !384
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 0, ptr %12, align 1, !tbaa !384
  br label %243

130:                                              ; preds = %124
  %131 = load i32, ptr %61, align 4, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1, !tbaa !384
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 0, ptr %12, align 1, !tbaa !384
  switch i32 %131, label %301 [
    i32 1, label %132
    i32 0, label %243
  ], !prof !399

132:                                              ; preds = %130
  br i1 %48, label %141, label %133, !prof !400

133:                                              ; preds = %132
  %134 = invoke noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %49, ptr noundef %114, i32 noundef %116) #13
          to label %143 unwind label %139

135:                                              ; preds = %113
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %720

137:                                              ; preds = %122
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %720

139:                                              ; preds = %239, %233, %223, %219, %213, %203, %198, %190, %154, %133
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %595

141:                                              ; preds = %132
  %142 = icmp eq ptr %50, null
  br i1 %142, label %151, label %287

143:                                              ; preds = %133
  %144 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %49) #13
  %145 = icmp eq ptr %134, null
  br i1 %145, label %149, label %146, !prof !378

146:                                              ; preds = %143
  %147 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %134) #13
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %257, !prof !400

149:                                              ; preds = %146, %143
  %150 = icmp eq ptr %144, null
  br i1 %150, label %186, label %154

151:                                              ; preds = %141
  %152 = call noundef ptr @_ZN11xercesc_2_717SchemaElementDecl14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(147) %3) #13
  %153 = icmp eq ptr %152, null
  br i1 %153, label %287, label %154

154:                                              ; preds = %151, %149
  %155 = phi ptr [ %152, %151 ], [ %144, %149 ]
  %156 = phi ptr [ null, %151 ], [ %134, %149 ]
  %157 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %155, i32 noundef %116, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %11) #13
          to label %158 unwind label %139

158:                                              ; preds = %154
  %159 = load i8, ptr %12, align 1, !range !374
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %157, i1 %160, i1 false
  br i1 %161, label %162, label %247

162:                                              ; preds = %158
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %164 = load ptr, ptr %163, align 8, !tbaa !401
  %165 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %116) #13
          to label %166 unwind label %182

166:                                              ; preds = %162
  %167 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %164, ptr noundef %165) #13
          to label %168 unwind label %182

168:                                              ; preds = %166
  %169 = icmp eq ptr %167, null
  br i1 %169, label %247, label %170

170:                                              ; preds = %168
  %171 = load ptr, ptr %167, align 8, !tbaa !372
  %172 = getelementptr inbounds ptr, ptr %171, i64 5
  %173 = load ptr, ptr %172, align 8
  %174 = invoke noundef i32 %173(ptr noundef nonnull align 8 dereferenceable(160) %167) #13
          to label %175 unwind label %182

175:                                              ; preds = %170
  %176 = icmp eq i32 %174, 1
  br i1 %176, label %177, label %247

177:                                              ; preds = %175
  %178 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %167) #13
  %179 = icmp eq ptr %178, null
  br i1 %179, label %247, label %180

180:                                              ; preds = %177
  %181 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %178, ptr noundef %114) #13
          to label %247 unwind label %184

182:                                              ; preds = %170, %166, %162
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %595

184:                                              ; preds = %180
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %595

186:                                              ; preds = %149
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %188 = load i32, ptr %187, align 4, !tbaa !402
  %189 = icmp eq i32 %116, %188
  br i1 %189, label %190, label %223

190:                                              ; preds = %186
  %191 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %192 = load ptr, ptr %191, align 8, !tbaa !403
  %193 = load ptr, ptr %15, align 8, !tbaa !357
  %194 = load ptr, ptr %193, align 8, !tbaa !372
  %195 = getelementptr inbounds ptr, ptr %194, i64 6
  %196 = load ptr, ptr %195, align 8
  %197 = invoke noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(8) %193) #13
          to label %198 unwind label %139

198:                                              ; preds = %190
  %199 = load ptr, ptr %192, align 8, !tbaa !372
  %200 = getelementptr inbounds ptr, ptr %199, i64 9
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef i32 %201(ptr noundef nonnull align 8 dereferenceable(40) %192, ptr noundef %197) #13
          to label %203 unwind label %139

203:                                              ; preds = %198
  %204 = invoke noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %49, ptr noundef %114, i32 noundef %202) #13
          to label %205 unwind label %139

205:                                              ; preds = %203
  %206 = load i8, ptr %22, align 8, !tbaa !404, !range !374, !noundef !405
  %207 = icmp ne i8 %206, 0
  %208 = icmp ne ptr %204, null
  %209 = and i1 %208, %207
  br i1 %209, label %210, label %247

210:                                              ; preds = %205
  %211 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %204) #13
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %257, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %73, align 8, !tbaa !376
  %215 = load ptr, ptr %204, align 8, !tbaa !372
  %216 = getelementptr inbounds ptr, ptr %215, i64 5
  %217 = load ptr, ptr %216, align 8
  %218 = invoke noundef ptr %217(ptr noundef nonnull align 8 dereferenceable(56) %204) #13
          to label %219 unwind label %139

219:                                              ; preds = %213
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %214, i32 noundef 95, ptr noundef %218, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %220 unwind label %139

220:                                              ; preds = %219
  %221 = load i32, ptr %61, align 4, !tbaa !385
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %251, label %257

223:                                              ; preds = %186
  %224 = invoke noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %49, ptr noundef %114, i32 noundef %188) #13
          to label %225 unwind label %139

225:                                              ; preds = %223
  %226 = load i8, ptr %22, align 8, !tbaa !404, !range !374, !noundef !405
  %227 = icmp ne i8 %226, 0
  %228 = icmp ne ptr %224, null
  %229 = and i1 %228, %227
  br i1 %229, label %230, label %247

230:                                              ; preds = %225
  %231 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %224) #13
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %257, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %73, align 8, !tbaa !376
  %235 = load ptr, ptr %224, align 8, !tbaa !372
  %236 = getelementptr inbounds ptr, ptr %235, i64 5
  %237 = load ptr, ptr %236, align 8
  %238 = invoke noundef ptr %237(ptr noundef nonnull align 8 dereferenceable(56) %224) #13
          to label %239 unwind label %139

239:                                              ; preds = %233
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %234, i32 noundef 96, ptr noundef %238, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %240 unwind label %139

240:                                              ; preds = %239
  %241 = load i32, ptr %61, align 4, !tbaa !385
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %251, label %257

243:                                              ; preds = %129, %130
  %244 = invoke noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %82) #13
          to label %247 unwind label %245

245:                                              ; preds = %311, %309, %307, %301, %300, %298, %296, %291, %243
  %246 = landingpad { ptr, i32 }
          cleanup
  br label %595

247:                                              ; preds = %243, %225, %205, %158, %177, %180, %175, %168
  %248 = phi ptr [ %156, %158 ], [ %204, %205 ], [ %224, %225 ], [ %156, %177 ], [ %156, %180 ], [ %156, %175 ], [ %156, %168 ], [ %244, %243 ]
  %249 = phi ptr [ null, %158 ], [ null, %205 ], [ null, %225 ], [ null, %177 ], [ %181, %180 ], [ null, %175 ], [ null, %168 ], [ null, %243 ]
  %250 = icmp eq ptr %248, null
  br i1 %250, label %287, label %257, !prof !406

251:                                              ; preds = %240, %220
  %252 = phi ptr [ %204, %220 ], [ %224, %240 ]
  %253 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %253, align 1, !tbaa !407
  %254 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %255 = icmp eq ptr %254, null
  %256 = select i1 %255, i32 2, i32 1
  br label %257

257:                                              ; preds = %251, %146, %230, %240, %210, %220, %247
  %258 = phi i32 [ 2, %247 ], [ 2, %146 ], [ 2, %230 ], [ 2, %240 ], [ 2, %210 ], [ 2, %220 ], [ %256, %251 ]
  %259 = phi ptr [ %249, %247 ], [ null, %146 ], [ null, %230 ], [ null, %240 ], [ null, %210 ], [ null, %220 ], [ null, %251 ]
  %260 = phi ptr [ %248, %247 ], [ %134, %146 ], [ %224, %230 ], [ %224, %240 ], [ %204, %210 ], [ %204, %220 ], [ %252, %251 ]
  %261 = load ptr, ptr %74, align 8, !tbaa !408
  %262 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %261, ptr noundef nonnull %260) #13
          to label %263 unwind label %270

263:                                              ; preds = %257
  %264 = icmp eq ptr %262, null
  br i1 %264, label %265, label %272, !prof !409

265:                                              ; preds = %263
  %266 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %267 unwind label %270

267:                                              ; preds = %265
  %268 = load i32, ptr %52, align 8, !tbaa !379
  store i32 %268, ptr %266, align 4, !tbaa !353
  %269 = load ptr, ptr %74, align 8, !tbaa !408
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %269, ptr noundef nonnull %260, ptr noundef nonnull %266) #13
          to label %314 unwind label %270

270:                                              ; preds = %284, %282, %277, %267, %265, %257
  %271 = landingpad { ptr, i32 }
          cleanup
  br label %595

272:                                              ; preds = %263
  %273 = load i32, ptr %262, align 4, !tbaa !353
  %274 = load i32, ptr %52, align 8, !tbaa !379
  %275 = icmp ult i32 %273, %274
  br i1 %275, label %276, label %277, !prof !410

276:                                              ; preds = %272
  store i32 %274, ptr %262, align 4, !tbaa !353
  br label %314

277:                                              ; preds = %272
  %278 = load ptr, ptr %260, align 8, !tbaa !372
  %279 = getelementptr inbounds ptr, ptr %278, i64 5
  %280 = load ptr, ptr %279, align 8
  %281 = invoke noundef ptr %280(ptr noundef nonnull align 8 dereferenceable(56) %260) #13
          to label %282 unwind label %270

282:                                              ; preds = %277
  %283 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
          to label %284 unwind label %270

284:                                              ; preds = %282
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %281, ptr noundef %283, ptr noundef null, ptr noundef null) #13
          to label %285 unwind label %270

285:                                              ; preds = %284
  %286 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %286, align 1, !tbaa !407
  br label %314

287:                                              ; preds = %141, %151, %247
  %288 = phi ptr [ null, %151 ], [ %249, %247 ], [ null, %141 ]
  %289 = load i32, ptr %61, align 4, !tbaa !385
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %301, !prof !411

291:                                              ; preds = %287
  %292 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %293 = load ptr, ptr %292, align 8, !tbaa !412
  %294 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %293, ptr noundef %82) #13
          to label %295 unwind label %245

295:                                              ; preds = %291
  br i1 %294, label %298, label %296, !prof !413

296:                                              ; preds = %295
  %297 = load ptr, ptr %292, align 8, !tbaa !412
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %297, ptr noundef %82, ptr noundef null) #13
          to label %316 unwind label %245

298:                                              ; preds = %295
  %299 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
          to label %300 unwind label %245

300:                                              ; preds = %298
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %82, ptr noundef %299, ptr noundef null, ptr noundef null) #13
          to label %316 unwind label %245

301:                                              ; preds = %130, %287
  %302 = phi ptr [ %288, %287 ], [ null, %130 ]
  %303 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %304 = load ptr, ptr %303, align 8, !tbaa !414
  %305 = invoke noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %304, ptr noundef %114, i32 noundef %116) #13
          to label %306 unwind label %245

306:                                              ; preds = %301
  br i1 %305, label %309, label %307

307:                                              ; preds = %306
  %308 = load ptr, ptr %303, align 8, !tbaa !414
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %308, ptr noundef %114, i32 noundef %116, ptr noundef null) #13
          to label %316 unwind label %245

309:                                              ; preds = %306
  %310 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
          to label %311 unwind label %245

311:                                              ; preds = %309
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %82, ptr noundef %310, ptr noundef null, ptr noundef null) #13
          to label %312 unwind label %245

312:                                              ; preds = %311
  %313 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %313, align 1, !tbaa !407
  br label %316

314:                                              ; preds = %276, %285, %267
  %315 = icmp eq ptr %259, null
  br i1 %315, label %441, label %392, !prof !415

316:                                              ; preds = %300, %296, %307, %312
  %317 = phi ptr [ %288, %300 ], [ %288, %296 ], [ %302, %307 ], [ %302, %312 ]
  %318 = load i32, ptr %61, align 4, !tbaa !385
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %340, !prof !416

320:                                              ; preds = %316
  %321 = icmp eq ptr %317, null
  br i1 %321, label %322, label %392, !prof !417

322:                                              ; preds = %320
  %323 = load i8, ptr %11, align 1, !tbaa !384, !range !374, !noundef !405
  %324 = icmp eq i8 %323, 0
  %325 = load i8, ptr %12, align 1, !range !374
  %326 = icmp eq i8 %325, 0
  %327 = select i1 %324, i1 %326, i1 false
  br i1 %327, label %328, label %333

328:                                              ; preds = %322
  %329 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %329, align 1, !tbaa !407
  %330 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %331 = icmp eq ptr %330, null
  %332 = select i1 %331, i32 2, i32 1
  br label %340

333:                                              ; preds = %322
  %334 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %335 = icmp eq ptr %334, null
  %336 = xor i1 %324, true
  %337 = zext i1 %336 to i32
  %338 = select i1 %335, i32 2, i32 %337
  %339 = select i1 %335, i32 2, i32 0
  br label %340

340:                                              ; preds = %333, %328, %316
  %341 = phi ptr [ %317, %316 ], [ null, %328 ], [ null, %333 ]
  %342 = phi i32 [ 2, %316 ], [ 2, %328 ], [ %338, %333 ]
  %343 = phi i32 [ 2, %316 ], [ %332, %328 ], [ %339, %333 ]
  %344 = load i8, ptr %22, align 8, !tbaa !404, !range !374, !noundef !405
  %345 = icmp ne i8 %344, 0
  %346 = icmp eq ptr %341, null
  %347 = and i1 %346, %345
  br i1 %347, label %348, label %390, !prof !418

348:                                              ; preds = %340
  %349 = load i8, ptr %12, align 1, !tbaa !384, !range !374, !noundef !405
  %350 = icmp eq i8 %349, 0
  %351 = load i8, ptr %11, align 1, !range !374
  %352 = icmp eq i8 %351, 0
  %353 = select i1 %350, i1 %352, i1 false
  br i1 %353, label %354, label %390

354:                                              ; preds = %348
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %59) #13
          to label %355 unwind label %369

355:                                              ; preds = %354
  %356 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %357 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #13
  %358 = load i32, ptr %356, align 4, !tbaa !402
  %359 = icmp eq i32 %116, %358
  br i1 %359, label %379, label %360

360:                                              ; preds = %355
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %59) #13
          to label %361 unwind label %373

361:                                              ; preds = %360
  %362 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #13
  %363 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %116, ptr noundef nonnull align 8 dereferenceable(40) %362) #13
          to label %364 unwind label %375

364:                                              ; preds = %361
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %357, i16 noundef zeroext 123) #13
          to label %365 unwind label %375

365:                                              ; preds = %364
  %366 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %362) #13
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %357, ptr noundef %366) #13
          to label %367 unwind label %375

367:                                              ; preds = %365
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %357, i16 noundef zeroext 125) #13
          to label %368 unwind label %375

368:                                              ; preds = %367
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #11
  br label %379

369:                                              ; preds = %354
  %370 = landingpad { ptr, i32 }
          cleanup
  br label %388

371:                                              ; preds = %384, %380, %379
  %372 = landingpad { ptr, i32 }
          cleanup
  br label %386

373:                                              ; preds = %360
  %374 = landingpad { ptr, i32 }
          cleanup
  br label %377

375:                                              ; preds = %367, %365, %364, %361
  %376 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #14
  br label %377

377:                                              ; preds = %375, %373
  %378 = phi { ptr, i32 } [ %376, %375 ], [ %374, %373 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #11
  br label %386

379:                                              ; preds = %368, %355
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %357, ptr noundef %114) #13
          to label %380 unwind label %371

380:                                              ; preds = %379
  %381 = load ptr, ptr %73, align 8, !tbaa !376
  %382 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %357) #13
  %383 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
          to label %384 unwind label %371

384:                                              ; preds = %380
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %381, i32 noundef 17, ptr noundef %382, ptr noundef %383, ptr noundef null, ptr noundef null) #13
          to label %385 unwind label %371

385:                                              ; preds = %384
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  br label %441

386:                                              ; preds = %377, %371
  %387 = phi { ptr, i32 } [ %372, %371 ], [ %378, %377 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #14
  br label %388

388:                                              ; preds = %386, %369
  %389 = phi { ptr, i32 } [ %387, %386 ], [ %370, %369 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  br label %595

390:                                              ; preds = %348, %340
  %391 = phi ptr [ null, %348 ], [ %341, %340 ]
  br i1 %346, label %441, label %392, !prof !415

392:                                              ; preds = %314, %320, %390
  %393 = phi ptr [ null, %390 ], [ null, %320 ], [ %260, %314 ]
  %394 = phi ptr [ %391, %390 ], [ %317, %320 ], [ %259, %314 ]
  %395 = phi i1 [ false, %390 ], [ false, %320 ], [ true, %314 ]
  %396 = phi i32 [ %342, %390 ], [ 2, %320 ], [ 2, %314 ]
  %397 = phi i32 [ %343, %390 ], [ 2, %320 ], [ %258, %314 ]
  %398 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %80) #13
  %399 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %394, ptr noundef %82, ptr noundef %398, ptr noundef nonnull align 8 dereferenceable(40) %60) #13
          to label %400 unwind label %417

400:                                              ; preds = %392
  %401 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %60) #13
  %402 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %394) #13
  %403 = icmp eq ptr %402, null
  br i1 %403, label %421, label %404

404:                                              ; preds = %400
  %405 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %402) #13
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %421, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %73, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %408, ptr noundef nonnull %402, ptr noundef %401, ptr noundef nonnull align 8 dereferenceable(40) %75) #13
          to label %409 unwind label %419

409:                                              ; preds = %407
  %410 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %75) #13
  %411 = load i8, ptr %76, align 8, !tbaa !419, !range !374, !noundef !405
  %412 = icmp eq i8 %411, 0
  %413 = load i8, ptr %22, align 8, !range !374
  %414 = icmp eq i8 %413, 0
  %415 = select i1 %412, i1 true, i1 %414
  br i1 %415, label %424, label %416

416:                                              ; preds = %409
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %60, ptr noundef %410) #13
          to label %421 unwind label %419

417:                                              ; preds = %552, %543, %506, %441, %392
  %418 = landingpad { ptr, i32 }
          cleanup
  br label %595

419:                                              ; preds = %438, %428, %416, %407
  %420 = landingpad { ptr, i32 }
          cleanup
  br label %595

421:                                              ; preds = %400, %404, %416
  %422 = phi ptr [ %401, %400 ], [ %401, %404 ], [ %410, %416 ]
  %423 = load i8, ptr %22, align 8, !tbaa !404
  br label %424

424:                                              ; preds = %421, %409
  %425 = phi i8 [ %423, %421 ], [ %413, %409 ]
  %426 = phi ptr [ %422, %421 ], [ %410, %409 ]
  %427 = icmp eq i8 %425, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %424
  %429 = load ptr, ptr %73, align 8, !tbaa !376
  %430 = load ptr, ptr %429, align 8, !tbaa !372
  %431 = getelementptr inbounds ptr, ptr %430, i64 8
  %432 = load ptr, ptr %431, align 8
  invoke void %432(ptr noundef nonnull align 8 dereferenceable(40) %429, ptr noundef nonnull %394, ptr noundef %426, i1 noundef zeroext false, ptr noundef %3) #13
          to label %433 unwind label %419

433:                                              ; preds = %428
  %434 = load ptr, ptr %73, align 8, !tbaa !376
  %435 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %434) #13
  %436 = load ptr, ptr %73, align 8, !tbaa !376
  %437 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %436) #13
  br i1 %437, label %509, label %521

438:                                              ; preds = %424
  %439 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #13
  %440 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %439, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #13
          to label %521 unwind label %419

441:                                              ; preds = %314, %385, %390
  %442 = phi i32 [ %343, %385 ], [ %343, %390 ], [ %258, %314 ]
  %443 = phi i32 [ %342, %385 ], [ %342, %390 ], [ 2, %314 ]
  %444 = phi i1 [ false, %385 ], [ false, %390 ], [ true, %314 ]
  %445 = phi ptr [ null, %385 ], [ %391, %390 ], [ null, %314 ]
  %446 = phi ptr [ null, %385 ], [ null, %390 ], [ %260, %314 ]
  %447 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %80) #13
  %448 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %446, ptr noundef %82, ptr noundef %447, ptr noundef nonnull align 8 dereferenceable(40) %60) #13
          to label %449 unwind label %417

449:                                              ; preds = %441
  br i1 %444, label %450, label %503, !prof !420

450:                                              ; preds = %449
  %451 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %60) #13
  %452 = load i32, ptr %61, align 4, !tbaa !385
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %454, label %477, !prof !421

454:                                              ; preds = %450
  %455 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %446) #13
  %456 = icmp eq ptr %455, null
  br i1 %456, label %477, label %457, !prof !400

457:                                              ; preds = %454
  %458 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %455) #13
  %459 = icmp eq i16 %458, 0
  br i1 %459, label %477, label %460, !prof !422

460:                                              ; preds = %457
  %461 = load ptr, ptr %73, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %461, ptr noundef nonnull %455, ptr noundef %451, ptr noundef nonnull align 8 dereferenceable(40) %75) #13
          to label %462 unwind label %475

462:                                              ; preds = %460
  %463 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %75) #13
  %464 = load i8, ptr %76, align 8, !tbaa !419, !range !374, !noundef !405
  %465 = icmp ne i8 %464, 0
  %466 = load i8, ptr %22, align 8, !range !374
  %467 = icmp ne i8 %466, 0
  %468 = select i1 %465, i1 %467, i1 false
  %469 = load i8, ptr %12, align 1, !range !374
  %470 = icmp eq i8 %469, 0
  %471 = select i1 %468, i1 %470, i1 false
  br i1 %471, label %472, label %477, !prof !423

472:                                              ; preds = %462
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %60, ptr noundef %463) #13
          to label %477 unwind label %475

473:                                              ; preds = %500, %484
  %474 = landingpad { ptr, i32 }
          cleanup
  br label %595

475:                                              ; preds = %472, %460
  %476 = landingpad { ptr, i32 }
          cleanup
  br label %595

477:                                              ; preds = %454, %457, %472, %462, %450
  %478 = phi ptr [ %451, %450 ], [ %463, %472 ], [ %463, %462 ], [ %451, %457 ], [ %451, %454 ]
  %479 = load i8, ptr %22, align 8, !tbaa !404, !range !374, !noundef !405
  %480 = icmp ne i8 %479, 0
  %481 = load i8, ptr %12, align 1, !range !374
  %482 = icmp eq i8 %481, 0
  %483 = select i1 %480, i1 %482, i1 false
  br i1 %483, label %484, label %497, !prof !424

484:                                              ; preds = %477
  %485 = load ptr, ptr %73, align 8, !tbaa !376
  %486 = load ptr, ptr %485, align 8, !tbaa !372
  %487 = getelementptr inbounds ptr, ptr %486, i64 8
  %488 = load ptr, ptr %487, align 8
  invoke void %488(ptr noundef nonnull align 8 dereferenceable(40) %485, ptr noundef nonnull %446, ptr noundef %478, i1 noundef zeroext false, ptr noundef %3) #13
          to label %489 unwind label %473

489:                                              ; preds = %484
  %490 = load i32, ptr %61, align 4, !tbaa !385
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %521, !prof !421

492:                                              ; preds = %489
  %493 = load ptr, ptr %73, align 8, !tbaa !376
  %494 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %493) #13
  %495 = load ptr, ptr %73, align 8, !tbaa !376
  %496 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %495) #13
  br i1 %496, label %509, label %521, !prof !400

497:                                              ; preds = %477
  %498 = load i32, ptr %61, align 4, !tbaa !385
  %499 = icmp eq i32 %498, 1
  br i1 %499, label %500, label %521

500:                                              ; preds = %497
  %501 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #13
  %502 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %501, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #13
          to label %521 unwind label %473

503:                                              ; preds = %449
  %504 = load i32, ptr %61, align 4, !tbaa !385
  %505 = icmp eq i32 %504, 1
  br i1 %505, label %506, label %530, !prof !413

506:                                              ; preds = %503
  %507 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #13
  %508 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %507, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #13
          to label %530 unwind label %417

509:                                              ; preds = %492, %433
  %510 = phi i32 [ %397, %433 ], [ %442, %492 ]
  %511 = phi ptr [ %394, %433 ], [ %446, %492 ]
  %512 = phi ptr [ %393, %433 ], [ %446, %492 ]
  %513 = phi ptr [ %394, %433 ], [ %445, %492 ]
  %514 = phi i1 [ %395, %433 ], [ true, %492 ]
  %515 = phi i32 [ %396, %433 ], [ %443, %492 ]
  %516 = phi ptr [ %435, %433 ], [ %494, %492 ]
  %517 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %517, align 1, !tbaa !407
  %518 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %519 = icmp eq ptr %518, null
  %520 = select i1 %519, i32 %510, i32 1
  br label %521

521:                                              ; preds = %509, %500, %497, %489, %492, %433, %438
  %522 = phi ptr [ %394, %438 ], [ %394, %433 ], [ %446, %492 ], [ %446, %489 ], [ %446, %497 ], [ %446, %500 ], [ %511, %509 ]
  %523 = phi ptr [ %393, %438 ], [ %393, %433 ], [ %446, %492 ], [ %446, %489 ], [ %446, %497 ], [ %446, %500 ], [ %512, %509 ]
  %524 = phi ptr [ %394, %438 ], [ %394, %433 ], [ %445, %492 ], [ %445, %489 ], [ %445, %497 ], [ %445, %500 ], [ %513, %509 ]
  %525 = phi i1 [ %395, %438 ], [ %395, %433 ], [ true, %492 ], [ true, %489 ], [ true, %497 ], [ true, %500 ], [ %514, %509 ]
  %526 = phi i32 [ %396, %438 ], [ %396, %433 ], [ %443, %492 ], [ %443, %489 ], [ %443, %497 ], [ %443, %500 ], [ %515, %509 ]
  %527 = phi ptr [ %440, %438 ], [ %435, %433 ], [ %494, %492 ], [ null, %489 ], [ null, %497 ], [ %502, %500 ], [ %516, %509 ]
  %528 = phi i32 [ %397, %438 ], [ %397, %433 ], [ %442, %492 ], [ %442, %489 ], [ %442, %497 ], [ %442, %500 ], [ %520, %509 ]
  %529 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %522) #13
  br label %530

530:                                              ; preds = %521, %503, %506
  %531 = phi ptr [ %446, %506 ], [ %446, %503 ], [ %523, %521 ]
  %532 = phi ptr [ %445, %506 ], [ %445, %503 ], [ %524, %521 ]
  %533 = phi i1 [ false, %506 ], [ false, %503 ], [ %525, %521 ]
  %534 = phi i32 [ %443, %506 ], [ %443, %503 ], [ %526, %521 ]
  %535 = phi ptr [ %508, %506 ], [ null, %503 ], [ %527, %521 ]
  %536 = phi i32 [ 0, %506 ], [ 0, %503 ], [ %529, %521 ]
  %537 = phi i32 [ %442, %506 ], [ %442, %503 ], [ %528, %521 ]
  %538 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %539 = icmp eq ptr %538, null
  br i1 %539, label %593, label %540, !prof !425

540:                                              ; preds = %530
  %541 = load i32, ptr %61, align 4, !tbaa !385
  %542 = icmp eq i32 %541, 1
  br i1 %542, label %543, label %593

543:                                              ; preds = %540
  %544 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %545 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %546 = load ptr, ptr %545, align 8, !tbaa !426
  %547 = load ptr, ptr %544, align 8, !tbaa !403
  %548 = load ptr, ptr %547, align 8, !tbaa !372
  %549 = getelementptr inbounds ptr, ptr %548, i64 10
  %550 = load ptr, ptr %549, align 8
  %551 = invoke noundef ptr %550(ptr noundef nonnull align 8 dereferenceable(40) %547, i32 noundef %116) #13
          to label %552 unwind label %417

552:                                              ; preds = %543
  %553 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %546, ptr noundef %114, ptr noundef %551) #13
          to label %554 unwind label %417

554:                                              ; preds = %552
  %555 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %556 = select i1 %533, ptr %531, ptr %532
  %557 = icmp eq ptr %556, null
  br i1 %557, label %589, label %558

558:                                              ; preds = %554
  %559 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %560 = load ptr, ptr %559, align 8, !tbaa !427
  %561 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %560, ptr noundef nonnull %556) #13
          to label %562 unwind label %571

562:                                              ; preds = %558
  %563 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %556) #13
  %564 = load ptr, ptr %559, align 8, !tbaa !427
  %565 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %564, ptr noundef %563) #13
          to label %566 unwind label %573

566:                                              ; preds = %562
  %567 = icmp eq i32 %537, 2
  br i1 %567, label %575, label %568

568:                                              ; preds = %566
  %569 = load ptr, ptr %555, align 8, !tbaa !428
  %570 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %556) #13
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %553, ptr noundef %569, i32 noundef %537, i32 noundef %534, ptr noundef %565, ptr noundef null, ptr noundef %570, i1 noundef zeroext false, ptr noundef %561, ptr noundef null) #13
          to label %593 unwind label %573

571:                                              ; preds = %558
  %572 = landingpad { ptr, i32 }
          cleanup
  br label %595

573:                                              ; preds = %568, %562
  %574 = landingpad { ptr, i32 }
          cleanup
  br label %595

575:                                              ; preds = %566
  %576 = call noundef i32 @_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv(ptr noundef nonnull align 8 dereferenceable(128) %565) #13
  %577 = icmp eq i32 %576, 3
  br i1 %577, label %578, label %583

578:                                              ; preds = %575
  %579 = load ptr, ptr %559, align 8, !tbaa !427
  %580 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %579, ptr noundef %535) #13
          to label %583 unwind label %581

581:                                              ; preds = %583, %578
  %582 = landingpad { ptr, i32 }
          cleanup
  br label %595

583:                                              ; preds = %578, %575
  %584 = phi ptr [ null, %575 ], [ %580, %578 ]
  %585 = load ptr, ptr %555, align 8, !tbaa !428
  %586 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %556) #13
  %587 = icmp eq ptr %584, null
  %588 = select i1 %587, ptr %563, ptr %535
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %553, ptr noundef %585, i32 noundef 2, i32 noundef %534, ptr noundef nonnull %565, ptr noundef %584, ptr noundef %586, i1 noundef zeroext false, ptr noundef %561, ptr noundef %588) #13
          to label %593 unwind label %581

589:                                              ; preds = %554
  %590 = load ptr, ptr %555, align 8, !tbaa !428
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %553, ptr noundef %590, i32 noundef %537, i32 noundef %534, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #13
          to label %593 unwind label %591

591:                                              ; preds = %589
  %592 = landingpad { ptr, i32 }
          cleanup
  br label %595

593:                                              ; preds = %589, %583, %568, %540, %530
  %594 = phi ptr [ null, %540 ], [ null, %530 ], [ %553, %568 ], [ %553, %583 ], [ %553, %589 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  br label %642

595:                                              ; preds = %388, %417, %419, %475, %473, %571, %581, %573, %591, %139, %184, %182, %270, %245
  %596 = phi { ptr, i32 } [ %271, %270 ], [ %246, %245 ], [ %140, %139 ], [ %185, %184 ], [ %183, %182 ], [ %418, %417 ], [ %420, %419 ], [ %389, %388 ], [ %474, %473 ], [ %476, %475 ], [ %592, %591 ], [ %572, %571 ], [ %574, %573 ], [ %582, %581 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  br label %720

597:                                              ; preds = %126
  %598 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %80) #13
  %599 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %82, ptr noundef %598, ptr noundef nonnull align 8 dereferenceable(40) %60) #13
          to label %600 unwind label %610

600:                                              ; preds = %597
  %601 = load i32, ptr %72, align 8, !tbaa !394
  %602 = icmp eq i32 %116, %601
  br i1 %602, label %607, label %603, !prof !429

603:                                              ; preds = %600
  %604 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %116) #13
          to label %605 unwind label %610

605:                                              ; preds = %603
  %606 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %604, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #13
  br i1 %606, label %607, label %612, !prof !430

607:                                              ; preds = %605, %600
  %608 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #13
  %609 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %608, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE) #13
          to label %612 unwind label %610

610:                                              ; preds = %628, %619, %607, %603, %597
  %611 = landingpad { ptr, i32 }
          cleanup
  br label %720

612:                                              ; preds = %607, %605
  %613 = phi ptr [ null, %605 ], [ %609, %607 ]
  %614 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %615 = icmp ne ptr %614, null
  %616 = load i32, ptr %61, align 4
  %617 = icmp eq i32 %616, 1
  %618 = select i1 %615, i1 %617, i1 false
  br i1 %618, label %619, label %646, !prof !431

619:                                              ; preds = %612
  %620 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %621 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %622 = load ptr, ptr %621, align 8, !tbaa !426
  %623 = load ptr, ptr %620, align 8, !tbaa !403
  %624 = load ptr, ptr %623, align 8, !tbaa !372
  %625 = getelementptr inbounds ptr, ptr %624, i64 10
  %626 = load ptr, ptr %625, align 8
  %627 = invoke noundef ptr %626(ptr noundef nonnull align 8 dereferenceable(40) %623, i32 noundef %116) #13
          to label %628 unwind label %610

628:                                              ; preds = %619
  %629 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %622, ptr noundef %114, ptr noundef %627) #13
          to label %630 unwind label %610

630:                                              ; preds = %628
  %631 = icmp eq ptr %613, null
  br i1 %631, label %636, label %632

632:                                              ; preds = %630
  %633 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %634 = load ptr, ptr %633, align 8, !tbaa !427
  %635 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %634, ptr noundef nonnull %613) #13
          to label %636 unwind label %640

636:                                              ; preds = %630, %632
  %637 = phi ptr [ %635, %632 ], [ null, %630 ]
  %638 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %639 = load ptr, ptr %638, align 8, !tbaa !428
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %629, ptr noundef %639, i32 noundef 0, i32 noundef 0, ptr noundef %637, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef %613) #13
          to label %642 unwind label %640

640:                                              ; preds = %636, %632
  %641 = landingpad { ptr, i32 }
          cleanup
  br label %720

642:                                              ; preds = %593, %636
  %643 = phi ptr [ %629, %636 ], [ %594, %593 ]
  %644 = phi i32 [ 0, %636 ], [ %536, %593 ]
  %645 = load i32, ptr %61, align 4, !tbaa !385
  br label %646

646:                                              ; preds = %642, %612
  %647 = phi i32 [ %645, %642 ], [ %616, %612 ]
  %648 = phi ptr [ %643, %642 ], [ null, %612 ]
  %649 = phi i32 [ %644, %642 ], [ 0, %612 ]
  %650 = icmp eq i32 %647, 0
  br i1 %650, label %651, label %687, !prof !432

651:                                              ; preds = %646
  %652 = load i8, ptr %8, align 1, !tbaa !384, !range !374, !noundef !405
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %654, label %677, !prof !433

654:                                              ; preds = %651
  %655 = icmp eq i32 %79, 0
  br i1 %655, label %687, label %656, !prof !434

656:                                              ; preds = %654, %674
  %657 = phi i32 [ %675, %674 ], [ 0, %654 ]
  %658 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %657) #13
          to label %659 unwind label %672

659:                                              ; preds = %656
  %660 = invoke noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %658) #13
          to label %661 unwind label %672

661:                                              ; preds = %659
  %662 = icmp eq i32 %116, %660
  br i1 %662, label %663, label %674, !prof !435

663:                                              ; preds = %661
  %664 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %658) #13
          to label %665 unwind label %672

665:                                              ; preds = %663
  %666 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %114, ptr noundef %664) #13
  br i1 %666, label %667, label %674, !prof !436

667:                                              ; preds = %665
  %668 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %658) #13
          to label %669 unwind label %672

669:                                              ; preds = %667
  %670 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
          to label %671 unwind label %672

671:                                              ; preds = %669
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %668, ptr noundef %670, ptr noundef null, ptr noundef null) #13
          to label %674 unwind label %672

672:                                              ; preds = %671, %669, %667, %663, %659, %656
  %673 = landingpad { ptr, i32 }
          cleanup
  br label %720

674:                                              ; preds = %661, %665, %671
  %675 = add nuw i32 %657, 1
  %676 = icmp eq i32 %675, %79
  br i1 %676, label %687, label %656, !prof !437, !llvm.loop !438

677:                                              ; preds = %651
  %678 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %679 = load ptr, ptr %678, align 8, !tbaa !440
  %680 = invoke noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %679, ptr noundef %114, i32 noundef %116) #13
          to label %681 unwind label %685

681:                                              ; preds = %677
  br i1 %680, label %682, label %687

682:                                              ; preds = %681
  %683 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
          to label %684 unwind label %685

684:                                              ; preds = %682
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %114, ptr noundef %683, ptr noundef null, ptr noundef null) #13
          to label %687 unwind label %685

685:                                              ; preds = %713, %708, %701, %699, %696, %689, %684, %682, %677
  %686 = landingpad { ptr, i32 }
          cleanup
  br label %720

687:                                              ; preds = %674, %654, %684, %681, %646
  %688 = icmp ugt i32 %58, %79
  br i1 %688, label %699, label %689, !prof !441

689:                                              ; preds = %687
  %690 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %691 = load ptr, ptr %690, align 8, !tbaa !393
  %692 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %691) #13
          to label %693 unwind label %685

693:                                              ; preds = %689
  %694 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %60) #13
  %695 = load ptr, ptr %690, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %692, i32 noundef %116, ptr noundef %114, ptr noundef %115, ptr noundef %694, i32 noundef %649, i1 noundef zeroext true, ptr noundef %695, ptr noundef null, i1 noundef zeroext false) #13
          to label %696 unwind label %697

696:                                              ; preds = %693
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %692) #13
          to label %704 unwind label %685

697:                                              ; preds = %693
  %698 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %692, ptr noundef %691) #14
  br label %720

699:                                              ; preds = %687
  %700 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %79) #13
          to label %701 unwind label %685

701:                                              ; preds = %699
  %702 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %60) #13
  invoke void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %700, i32 noundef %116, ptr noundef %114, ptr noundef %115, ptr noundef %702, i32 noundef %649, ptr noundef null, i1 noundef zeroext false) #13
          to label %703 unwind label %685

703:                                              ; preds = %701
  call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %700, i1 noundef zeroext true) #13
  br label %704

704:                                              ; preds = %696, %703
  %705 = phi ptr [ %692, %696 ], [ %700, %703 ]
  %706 = load i8, ptr %8, align 1, !tbaa !384, !range !374, !noundef !405
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %711, label %708, !prof !442

708:                                              ; preds = %704
  %709 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %710 = load ptr, ptr %709, align 8, !tbaa !440
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %710, ptr noundef %114, i32 noundef %116, ptr noundef nonnull %705) #13
          to label %711 unwind label %685

711:                                              ; preds = %708, %704
  %712 = icmp eq ptr %648, null
  br i1 %712, label %715, label %713, !prof !442

713:                                              ; preds = %711
  %714 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %705) #13
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %648, ptr noundef %714) #13
          to label %715 unwind label %685

715:                                              ; preds = %713, %711
  %716 = add nuw nsw i64 %78, 1
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  %717 = load i32, ptr %6, align 4, !tbaa !353
  %718 = zext i32 %717 to i64
  %719 = icmp ult i64 %716, %718
  br i1 %719, label %77, label %722, !prof !443, !llvm.loop !444

720:                                              ; preds = %135, %595, %610, %640, %697, %685, %672, %137, %96
  %721 = phi { ptr, i32 } [ %97, %96 ], [ %136, %135 ], [ %138, %137 ], [ %596, %595 ], [ %641, %640 ], [ %611, %610 ], [ %686, %685 ], [ %698, %697 ], [ %673, %672 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %964

722:                                              ; preds = %715
  %723 = trunc i64 %716 to i32
  br label %724

724:                                              ; preds = %722, %67
  %725 = phi i32 [ 0, %67 ], [ %723, %722 ]
  br i1 %51, label %726, label %962, !prof !445

726:                                              ; preds = %724
  %727 = load i32, ptr %61, align 4, !tbaa !385
  %728 = icmp eq i32 %727, 1
  %729 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xercesc_2_713getAttDefListEbPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE(i1 noundef zeroext %728, ptr noundef %49, ptr noundef %3) #13
          to label %730 unwind label %741

730:                                              ; preds = %726
  %731 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  br label %732

732:                                              ; preds = %730, %959
  %733 = phi i32 [ %961, %959 ], [ 0, %730 ]
  %734 = phi i32 [ %960, %959 ], [ %725, %730 ]
  %735 = load ptr, ptr %729, align 8, !tbaa !372
  %736 = getelementptr inbounds ptr, ptr %735, i64 13
  %737 = load ptr, ptr %736, align 8
  %738 = invoke noundef i32 %737(ptr noundef nonnull align 8 dereferenceable(16) %729) #13
          to label %739 unwind label %743

739:                                              ; preds = %732
  %740 = icmp ult i32 %733, %738
  br i1 %740, label %745, label %962, !prof !446

741:                                              ; preds = %726
  %742 = landingpad { ptr, i32 }
          cleanup
  br label %964

743:                                              ; preds = %732
  %744 = landingpad { ptr, i32 }
          cleanup
  br label %964

745:                                              ; preds = %739
  %746 = load ptr, ptr %729, align 8, !tbaa !372
  %747 = getelementptr inbounds ptr, ptr %746, i64 14
  %748 = load ptr, ptr %747, align 8
  %749 = invoke noundef nonnull align 8 dereferenceable(56) ptr %748(ptr noundef nonnull align 8 dereferenceable(16) %729, i32 noundef %733) #13
          to label %750 unwind label %779

750:                                              ; preds = %745
  %751 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
  %752 = load ptr, ptr %731, align 8, !tbaa !408
  %753 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %752, ptr noundef nonnull %749) #13
          to label %754 unwind label %781

754:                                              ; preds = %750
  %755 = icmp eq ptr %753, null
  br i1 %755, label %760, label %756, !prof !447

756:                                              ; preds = %754
  %757 = load i32, ptr %753, align 4, !tbaa !353
  %758 = load i32, ptr %52, align 8, !tbaa !379
  %759 = icmp ult i32 %757, %758
  br i1 %759, label %760, label %922, !prof !448

760:                                              ; preds = %756, %754
  %761 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %762 = load i8, ptr %22, align 8, !tbaa !404, !range !374, !noundef !405
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %805, label %764, !prof !449

764:                                              ; preds = %760
  %765 = and i32 %751, -2
  %766 = icmp eq i32 %765, 2
  br i1 %766, label %767, label %783, !prof !450

767:                                              ; preds = %764
  %768 = load ptr, ptr %761, align 8, !tbaa !376
  %769 = load ptr, ptr %749, align 8, !tbaa !372
  %770 = getelementptr inbounds ptr, ptr %769, i64 5
  %771 = load ptr, ptr %770, align 8
  %772 = invoke noundef ptr %771(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
          to label %773 unwind label %781

773:                                              ; preds = %767
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %768, i32 noundef 6, ptr noundef %772, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %774 unwind label %781

774:                                              ; preds = %773
  %775 = load i32, ptr %61, align 4, !tbaa !385
  %776 = icmp eq i32 %775, 1
  br i1 %776, label %777, label %959

777:                                              ; preds = %774
  %778 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %778, align 1, !tbaa !407
  br label %959

779:                                              ; preds = %745
  %780 = landingpad { ptr, i32 }
          cleanup
  br label %964

781:                                              ; preds = %934, %927, %810, %799, %797, %791, %773, %767, %750
  %782 = landingpad { ptr, i32 }
          cleanup
  br label %964

783:                                              ; preds = %764
  %784 = icmp ult i32 %751, 2
  br i1 %784, label %785, label %959, !prof !451

785:                                              ; preds = %783
  %786 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %787 = load i8, ptr %786, align 2, !tbaa !452, !range !374, !noundef !405
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %807, label %789, !prof !449

789:                                              ; preds = %785
  %790 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
  br i1 %790, label %791, label %807, !prof !449

791:                                              ; preds = %789
  %792 = load ptr, ptr %761, align 8, !tbaa !376
  %793 = load ptr, ptr %749, align 8, !tbaa !372
  %794 = getelementptr inbounds ptr, ptr %793, i64 5
  %795 = load ptr, ptr %794, align 8
  %796 = invoke noundef ptr %795(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
          to label %797 unwind label %781

797:                                              ; preds = %791
  %798 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #13
          to label %799 unwind label %781

799:                                              ; preds = %797
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %792, i32 noundef 82, ptr noundef %796, ptr noundef %798, ptr noundef null, ptr noundef null) #13
          to label %800 unwind label %781

800:                                              ; preds = %799
  %801 = load i32, ptr %61, align 4, !tbaa !385
  %802 = icmp eq i32 %801, 1
  br i1 %802, label %803, label %807

803:                                              ; preds = %800
  %804 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %804, align 1, !tbaa !407
  br label %807

805:                                              ; preds = %760
  %806 = icmp ult i32 %751, 2
  br i1 %806, label %816, label %959, !prof !453

807:                                              ; preds = %785, %789, %803, %800
  %808 = load i8, ptr %22, align 8, !tbaa !404
  %809 = icmp eq i8 %808, 0
  br i1 %809, label %816, label %810, !prof !378

810:                                              ; preds = %807
  %811 = load ptr, ptr %761, align 8, !tbaa !376
  %812 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
  %813 = load ptr, ptr %811, align 8, !tbaa !372
  %814 = getelementptr inbounds ptr, ptr %813, i64 8
  %815 = load ptr, ptr %814, align 8
  invoke void %815(ptr noundef nonnull align 8 dereferenceable(40) %811, ptr noundef nonnull %749, ptr noundef %812, i1 noundef zeroext false, ptr noundef %3) #13
          to label %816 unwind label %781

816:                                              ; preds = %805, %810, %807
  %817 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %818 = icmp ult i32 %734, %58
  br i1 %818, label %836, label %819, !prof !454

819:                                              ; preds = %816
  %820 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %821 = load ptr, ptr %820, align 8, !tbaa !393
  %822 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %821) #13
          to label %823 unwind label %832

823:                                              ; preds = %819
  %824 = load ptr, ptr %820, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49) %822, ptr noundef %824) #13
          to label %825 unwind label %834

825:                                              ; preds = %823
  %826 = load ptr, ptr %761, align 8, !tbaa !376
  %827 = load ptr, ptr %826, align 8, !tbaa !372
  %828 = getelementptr inbounds ptr, ptr %827, i64 3
  %829 = load ptr, ptr %828, align 8
  invoke void %829(ptr noundef nonnull align 8 dereferenceable(40) %826, ptr noundef nonnull align 8 dereferenceable(49) %822, ptr noundef nonnull align 8 dereferenceable(56) %749) #13
          to label %830 unwind label %832

830:                                              ; preds = %825
  %831 = load ptr, ptr %817, align 8, !tbaa !455
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %831, ptr noundef nonnull %822) #13
          to label %844 unwind label %832

832:                                              ; preds = %852, %850, %848, %839, %836, %830, %825, %819
  %833 = landingpad { ptr, i32 }
          cleanup
  br label %964

834:                                              ; preds = %823
  %835 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %822, ptr noundef %821) #14
  br label %964

836:                                              ; preds = %816
  %837 = load ptr, ptr %817, align 8, !tbaa !455
  %838 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %837, i32 noundef %734) #13
          to label %839 unwind label %832

839:                                              ; preds = %836
  %840 = load ptr, ptr %761, align 8, !tbaa !376
  %841 = load ptr, ptr %840, align 8, !tbaa !372
  %842 = getelementptr inbounds ptr, ptr %841, i64 3
  %843 = load ptr, ptr %842, align 8
  invoke void %843(ptr noundef nonnull align 8 dereferenceable(40) %840, ptr noundef nonnull align 8 dereferenceable(49) %838, ptr noundef nonnull align 8 dereferenceable(56) %749) #13
          to label %844 unwind label %832

844:                                              ; preds = %839, %830
  %845 = phi ptr [ %822, %830 ], [ %838, %839 ]
  %846 = load i32, ptr %61, align 4, !tbaa !385
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %848, label %853, !prof !449

848:                                              ; preds = %844
  %849 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %845) #13
          to label %850 unwind label %832

850:                                              ; preds = %848
  %851 = invoke noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %849, i32 noundef 0) #13
          to label %852 unwind label %832

852:                                              ; preds = %850
  invoke void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %845, i32 noundef %851) #13
          to label %853 unwind label %832

853:                                              ; preds = %852, %844
  call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %845, i1 noundef zeroext false) #13
  %854 = add i32 %734, 1
  %855 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %856 = icmp eq ptr %855, null
  br i1 %856, label %959, label %857, !prof !454

857:                                              ; preds = %853
  %858 = load i32, ptr %61, align 4, !tbaa !385
  %859 = icmp eq i32 %858, 1
  br i1 %859, label %860, label %959

860:                                              ; preds = %857
  %861 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %862 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %863 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %749) #13
  %864 = load ptr, ptr %861, align 8, !tbaa !426
  %865 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %863) #13
  %866 = load ptr, ptr %862, align 8, !tbaa !403
  %867 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %863) #13
  %868 = load ptr, ptr %866, align 8, !tbaa !372
  %869 = getelementptr inbounds ptr, ptr %868, i64 10
  %870 = load ptr, ptr %869, align 8
  %871 = invoke noundef ptr %870(ptr noundef nonnull align 8 dereferenceable(40) %866, i32 noundef %867) #13
          to label %872 unwind label %889

872:                                              ; preds = %860
  %873 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %864, ptr noundef %865, ptr noundef %871) #13
          to label %874 unwind label %889

874:                                              ; preds = %872
  %875 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %876 = load ptr, ptr %875, align 8, !tbaa !427
  %877 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %876, ptr noundef nonnull %749) #13
          to label %878 unwind label %891

878:                                              ; preds = %874
  %879 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %749) #13
  %880 = load ptr, ptr %875, align 8, !tbaa !427
  %881 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %880, ptr noundef %879) #13
          to label %882 unwind label %893

882:                                              ; preds = %878
  %883 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %884 = load ptr, ptr %761, align 8, !tbaa !376
  %885 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %884) #13
  br i1 %885, label %886, label %895

886:                                              ; preds = %882
  %887 = load ptr, ptr %883, align 8, !tbaa !428
  %888 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %873, ptr noundef %887, i32 noundef 1, i32 noundef 2, ptr noundef %881, ptr noundef null, ptr noundef %888, i1 noundef zeroext true, ptr noundef %877, ptr noundef null) #13
          to label %920 unwind label %893

889:                                              ; preds = %872, %860
  %890 = landingpad { ptr, i32 }
          cleanup
  br label %964

891:                                              ; preds = %874
  %892 = landingpad { ptr, i32 }
          cleanup
  br label %964

893:                                              ; preds = %920, %886, %878
  %894 = landingpad { ptr, i32 }
          cleanup
  br label %964

895:                                              ; preds = %882
  %896 = call noundef i32 @_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv(ptr noundef nonnull align 8 dereferenceable(128) %881) #13
  %897 = icmp eq i32 %896, 3
  br i1 %897, label %901, label %898

898:                                              ; preds = %895
  %899 = load ptr, ptr %883, align 8, !tbaa !428
  %900 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
  br label %915

901:                                              ; preds = %895
  %902 = load ptr, ptr %875, align 8, !tbaa !427
  %903 = load ptr, ptr %761, align 8, !tbaa !376
  %904 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %903) #13
  %905 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %902, ptr noundef %904) #13
          to label %908 unwind label %906

906:                                              ; preds = %915, %901
  %907 = landingpad { ptr, i32 }
          cleanup
  br label %964

908:                                              ; preds = %901
  %909 = load ptr, ptr %883, align 8, !tbaa !428
  %910 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
  %911 = icmp eq ptr %905, null
  br i1 %911, label %915, label %912

912:                                              ; preds = %908
  %913 = load ptr, ptr %761, align 8, !tbaa !376
  %914 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %913) #13
  br label %915

915:                                              ; preds = %898, %908, %912
  %916 = phi ptr [ %910, %912 ], [ %910, %908 ], [ %900, %898 ]
  %917 = phi ptr [ %909, %912 ], [ %909, %908 ], [ %899, %898 ]
  %918 = phi ptr [ %905, %912 ], [ null, %908 ], [ null, %898 ]
  %919 = phi ptr [ %914, %912 ], [ %879, %908 ], [ %879, %898 ]
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %873, ptr noundef %917, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %881, ptr noundef %918, ptr noundef %916, i1 noundef zeroext true, ptr noundef %877, ptr noundef %919) #13
          to label %920 unwind label %906

920:                                              ; preds = %915, %886
  %921 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %873, ptr noundef %921) #13
          to label %959 unwind label %893

922:                                              ; preds = %756
  %923 = icmp eq i32 %751, 8
  br i1 %923, label %924, label %959, !prof !456

924:                                              ; preds = %922
  %925 = load i8, ptr %22, align 8, !tbaa !404, !range !374, !noundef !405
  %926 = icmp eq i8 %925, 0
  br i1 %926, label %959, label %927

927:                                              ; preds = %924
  %928 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %929 = load ptr, ptr %928, align 8, !tbaa !376
  %930 = load ptr, ptr %749, align 8, !tbaa !372
  %931 = getelementptr inbounds ptr, ptr %930, i64 5
  %932 = load ptr, ptr %931, align 8
  %933 = invoke noundef ptr %932(ptr noundef nonnull align 8 dereferenceable(56) %749) #13
          to label %934 unwind label %781

934:                                              ; preds = %927
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %929, i32 noundef 49, ptr noundef %933, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %935 unwind label %781

935:                                              ; preds = %934
  %936 = load i32, ptr %61, align 4, !tbaa !385
  %937 = icmp eq i32 %936, 1
  br i1 %937, label %938, label %959

938:                                              ; preds = %935
  %939 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %939, align 1, !tbaa !407
  %940 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %941 = icmp eq ptr %940, null
  br i1 %941, label %959, label %942

942:                                              ; preds = %938
  %943 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %944 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %945 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %749) #13
  %946 = load ptr, ptr %943, align 8, !tbaa !426
  %947 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %945) #13
  %948 = load ptr, ptr %944, align 8, !tbaa !403
  %949 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %945) #13
  %950 = load ptr, ptr %948, align 8, !tbaa !372
  %951 = getelementptr inbounds ptr, ptr %950, i64 10
  %952 = load ptr, ptr %951, align 8
  %953 = invoke noundef ptr %952(ptr noundef nonnull align 8 dereferenceable(40) %948, i32 noundef %949) #13
          to label %954 unwind label %957

954:                                              ; preds = %942
  %955 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %946, ptr noundef %947, ptr noundef %953) #13
          to label %956 unwind label %957

956:                                              ; preds = %954
  call void @_ZN11xercesc_2_713PSVIAttribute14updateValidityENS_8PSVIItem14VALIDITY_STATEE(ptr noundef nonnull align 8 dereferenceable(96) %955, i32 noundef 1) #13
  br label %959

957:                                              ; preds = %954, %942
  %958 = landingpad { ptr, i32 }
          cleanup
  br label %964

959:                                              ; preds = %774, %777, %805, %783, %853, %857, %920, %922, %935, %956, %938, %924
  %960 = phi i32 [ %734, %956 ], [ %734, %938 ], [ %734, %935 ], [ %734, %924 ], [ %734, %922 ], [ %734, %805 ], [ %734, %783 ], [ %854, %920 ], [ %854, %857 ], [ %854, %853 ], [ %734, %777 ], [ %734, %774 ]
  %961 = add nuw i32 %733, 1
  br label %732, !llvm.loop !457

962:                                              ; preds = %739, %724
  %963 = phi i32 [ %725, %724 ], [ %734, %739 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %966

964:                                              ; preds = %720, %94, %743, %781, %957, %889, %893, %906, %891, %834, %832, %779, %741, %65
  %965 = phi { ptr, i32 } [ %66, %65 ], [ %721, %720 ], [ %95, %94 ], [ %742, %741 ], [ %744, %743 ], [ %780, %779 ], [ %782, %781 ], [ %958, %957 ], [ %833, %832 ], [ %835, %834 ], [ %890, %889 ], [ %892, %891 ], [ %894, %893 ], [ %907, %906 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  resume { ptr, i32 } %965

966:                                              ; preds = %47, %962
  %967 = phi i32 [ %963, %962 ], [ 0, %47 ]
  ret i32 %967
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #3 comdat align 2 !prof !458 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br i1 %4, label %9, label %5, !prof !463

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !459
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !464
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #5 comdat align 2 !prof !465 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !466
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !467 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !468
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !470 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !471
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !473 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  store ptr %3, ptr %0, align 8, !tbaa !464
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !474
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !476 {
  %2 = load ptr, ptr %0, align 8, !tbaa !477
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !478 {
  %4 = load i32, ptr %1, align 4, !tbaa !353
  %5 = icmp ugt i32 %4, 100
  br i1 %5, label %6, label %30, !prof !479

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !384
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !440
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !393
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12) #13
  %14 = load i32, ptr %1, align 4, !tbaa !353
  %15 = shl i32 %14, 1
  %16 = or disjoint i32 %15, 1
  %17 = load ptr, ptr %11, align 8, !tbaa !393
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %17) #13
          to label %19 unwind label %23

19:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #13
          to label %20 unwind label %25

20:                                               ; preds = %19
  %21 = load ptr, ptr %11, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %16, i1 noundef zeroext false, ptr noundef nonnull %18, ptr noundef %21) #13
          to label %22 unwind label %23

22:                                               ; preds = %20
  store ptr %13, ptr %7, align 8, !tbaa !440
  br label %30

23:                                               ; preds = %20, %10
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #14
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %26, %25 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #14
  resume { ptr, i32 } %28

29:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  br label %30

30:                                               ; preds = %22, %29, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !480 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !481
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !442

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !483
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 116, ptr noundef %9) #13
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !484
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !464
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !485 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !486
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !480 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !488
  %3 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !490
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !491 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !492

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !391
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !493

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !391
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !494, !llvm.loop !495

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
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %4 = load ptr, ptr %0, align 8, !tbaa !488
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !490
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !372
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %15

14:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #16
  br label %15

15:                                               ; preds = %10, %14, %3
  store ptr %1, ptr %0, align 8, !tbaa !488
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !490
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !497 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !498

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !372
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xercesc_2_712ArrayJanitorItEixEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %3 = load ptr, ptr %0, align 8, !tbaa !488
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !499 {
  %2 = load ptr, ptr %0, align 8, !tbaa !488
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !500 {
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #13
  br i1 %5, label %6, label %9, !prof !501

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !394
  br label %21

9:                                                ; preds = %3
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #13
  br i1 %10, label %11, label %14, !prof !502

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 4, !tbaa !503
  br label %21

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %16 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4) #13
  %17 = load i8, ptr %4, align 1, !tbaa !384, !range !374, !noundef !405
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !504

19:                                               ; preds = %14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %20

20:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %21

21:                                               ; preds = %20, %11, %6
  %22 = phi i32 [ %8, %6 ], [ %13, %11 ], [ %16, %20 ]
  ret i32 %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !505 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !506

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !391
  %8 = load i16, ptr %1, align 2, !tbaa !391
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !507

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !508

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !391
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !509

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !510

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !391
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !511

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !512

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !391
  %28 = load i16, ptr %26, align 2, !tbaa !391
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !513, !llvm.loop !514

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !515 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !468
  %6 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, i32 noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !516 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !517
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !518
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !516 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !526
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0, ptr noundef nonnull %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #3 align 2 !prof !496 {
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  store i8 0, ptr %3, align 1, !tbaa !384
  store i8 0, ptr %4, align 1, !tbaa !384
  switch i32 %6, label %38 [
    i32 11, label %33
    i32 12, label %25
    i32 13, label %7
  ]

7:                                                ; preds = %5
  %8 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef16getNamespaceListEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %16

13:                                               ; preds = %16
  %14 = and i8 %22, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %33

16:                                               ; preds = %10, %16
  %17 = phi i8 [ %22, %16 ], [ 0, %10 ]
  %18 = phi i32 [ %23, %16 ], [ 0, %10 ]
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %18) #13
  %20 = load i32, ptr %19, align 4, !tbaa !353
  %21 = icmp eq i32 %20, %2
  %22 = select i1 %21, i8 1, i8 %17
  %23 = add nuw i32 %18, 1
  %24 = icmp eq i32 %23, %11
  br i1 %24, label %13, label %16, !llvm.loop !531

25:                                               ; preds = %5
  %26 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %27 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %26) #13
  %28 = icmp ne i32 %27, %2
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, %2
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %38

33:                                               ; preds = %5, %13, %25
  %34 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  switch i32 %34, label %38 [
    i32 5, label %36
    i32 6, label %35
  ]

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %33, %35
  %37 = phi ptr [ %4, %35 ], [ %3, %33 ]
  store i8 1, ptr %37, align 1, !tbaa !384
  br label %38

38:                                               ; preds = %36, %5, %7, %10, %13, %33, %25
  %39 = phi i1 [ true, %33 ], [ false, %25 ], [ false, %13 ], [ false, %10 ], [ false, %7 ], [ false, %5 ], [ true, %36 ]
  ret i1 %39
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !532 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !533
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !537
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !539 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %3 = load ptr, ptr %2, align 8, !tbaa !540
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !541 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !542

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !543
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !545 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !546
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !548
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !549

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !549

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !550, !range !374, !noundef !405
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !543
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !543
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !551
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !552
  %28 = load ptr, ptr %27, align 8, !tbaa !372
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !553
  %34 = load i32, ptr %4, align 4, !tbaa !353
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !464
  call void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #13
  %38 = load ptr, ptr %32, align 8, !tbaa !553
  %39 = load i32, ptr %4, align 4, !tbaa !353
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !464
  %42 = load i32, ptr %9, align 8, !tbaa !548
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !548
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !554 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !555
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !556 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %6 = icmp ne ptr %5, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !557
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !559
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !560, !range !374, !noundef !405
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !561
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !561
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !563
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !564
  br label %45

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !565
  %29 = load ptr, ptr %28, align 8, !tbaa !372
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32) #13
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !566
  %35 = load i32, ptr %5, align 4, !tbaa !353
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !464
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemIjEC2EPviPjPS1_(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38) #13
  %39 = load ptr, ptr %33, align 8, !tbaa !566
  %40 = load i32, ptr %5, align 4, !tbaa !353
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %32, ptr %42, align 8, !tbaa !464
  %43 = load i32, ptr %9, align 4, !tbaa !559
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4, !tbaa !559
  br label %45

45:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !567 {
  %3 = load i32, ptr %0, align 8, !tbaa !568
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !569
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !570

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %8 = load i32, ptr %0, align 8, !tbaa !568
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !571
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !568
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !391
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !572 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !573

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !391
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !574

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !391
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !575, !llvm.loop !576

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !568
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !569
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !577

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #13
  %21 = load i32, ptr %0, align 8, !tbaa !568
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !571
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !568
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !568
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !578 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !571
  %4 = load i32, ptr %0, align 8, !tbaa !568
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !391
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !473 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !474
  %4 = load ptr, ptr %0, align 8, !tbaa !477
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #3 align 2 !prof !579 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8, !prof !580

7:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  br label %20

8:                                                ; preds = %5
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %11 = xor i1 %10, true
  %12 = icmp eq i32 %9, 0
  %13 = icmp sgt i32 %9, 8
  %14 = or i1 %12, %13
  br i1 %14, label %20, label %15, !prof !581

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %97

20:                                               ; preds = %7, %8
  %21 = phi i1 [ true, %7 ], [ %11, %8 ]
  br label %22

22:                                               ; preds = %20, %47
  %23 = phi i8 [ %48, %47 ], [ 1, %20 ]
  %24 = phi ptr [ %51, %47 ], [ %3, %20 ]
  %25 = load i16, ptr %24, align 2, !tbaa !391
  switch i16 %25, label %29 [
    i16 0, label %101
    i16 -1, label %26
  ], !prof !582

26:                                               ; preds = %22
  %27 = getelementptr inbounds i16, ptr %24, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !391
  br label %47

29:                                               ; preds = %22
  %30 = icmp ult i16 %25, 14
  br i1 %30, label %31, label %44, !prof !583

31:                                               ; preds = %29
  switch i16 %25, label %47 [
    i16 13, label %32
    i16 10, label %32
    i16 9, label %32
  ], !prof !584

32:                                               ; preds = %31, %31, %31
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %35 = load i8, ptr %33, align 2, !tbaa !452, !range !374, !noundef !405
  %36 = icmp eq i8 %35, 0
  %37 = load i8, ptr %34, align 8, !range !374
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  %40 = or i1 %21, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %43 = load ptr, ptr %42, align 8, !tbaa !376
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %43, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %47

44:                                               ; preds = %29
  %45 = icmp eq i16 %25, 60
  br i1 %45, label %46, label %47, !prof !583

46:                                               ; preds = %44
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %47

47:                                               ; preds = %31, %41, %32, %46, %44, %26
  %48 = phi i8 [ %23, %26 ], [ 0, %46 ], [ %23, %44 ], [ %23, %32 ], [ %23, %41 ], [ %23, %31 ]
  %49 = phi i16 [ %28, %26 ], [ 60, %46 ], [ %25, %44 ], [ 32, %32 ], [ 32, %41 ], [ %25, %31 ]
  %50 = phi ptr [ %27, %26 ], [ %24, %46 ], [ %24, %44 ], [ %24, %32 ], [ %24, %41 ], [ %24, %31 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext %49) #13
  %51 = getelementptr inbounds i16, ptr %50, i64 1
  br label %22, !llvm.loop !585

52:                                               ; preds = %93, %97
  %53 = phi i8 [ %98, %97 ], [ %62, %93 ]
  %54 = phi i1 [ false, %97 ], [ true, %93 ]
  %55 = phi ptr [ %100, %97 ], [ %94, %93 ]
  %56 = load i16, ptr %55, align 2, !tbaa !391
  switch i16 %56, label %61 [
    i16 0, label %101
    i16 -1, label %57
    i16 60, label %60
  ]

57:                                               ; preds = %52
  %58 = getelementptr inbounds i16, ptr %55, i64 1
  %59 = load i16, ptr %58, align 2, !tbaa !391
  br label %61

60:                                               ; preds = %52
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %61

61:                                               ; preds = %52, %60, %57
  %62 = phi i8 [ %53, %57 ], [ 0, %60 ], [ %53, %52 ]
  %63 = phi i16 [ %59, %57 ], [ 60, %60 ], [ %56, %52 ]
  %64 = phi ptr [ %58, %57 ], [ %55, %60 ], [ %55, %52 ]
  %65 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %66 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %65, i16 noundef zeroext %63) #13
  br i1 %54, label %67, label %72

67:                                               ; preds = %61
  br i1 %66, label %70, label %68

68:                                               ; preds = %67
  br i1 %99, label %95, label %69

69:                                               ; preds = %68
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 32) #13
  br label %95

70:                                               ; preds = %67
  %71 = getelementptr inbounds i16, ptr %64, i64 1
  br label %93

72:                                               ; preds = %61
  br i1 %66, label %73, label %95

73:                                               ; preds = %72
  %74 = getelementptr inbounds i16, ptr %64, i64 1
  %75 = load i8, ptr %17, align 2, !tbaa !452, !range !374, !noundef !405
  %76 = icmp eq i8 %75, 0
  %77 = load i8, ptr %18, align 8, !range !374
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  %80 = or i1 %79, %11
  br i1 %80, label %93, label %81

81:                                               ; preds = %73
  %82 = icmp ne i16 %63, 32
  %83 = select i1 %99, i1 true, i1 %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load i16, ptr %74, align 2, !tbaa !391
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %89 = load i16, ptr %74, align 2, !tbaa !391
  %90 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %88, i16 noundef zeroext %89) #13
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %84, %81
  %92 = load ptr, ptr %19, align 8, !tbaa !376
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %92, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %93

93:                                               ; preds = %91, %87, %73, %70
  %94 = phi ptr [ %74, %91 ], [ %74, %87 ], [ %74, %73 ], [ %71, %70 ]
  br label %52, !llvm.loop !586

95:                                               ; preds = %72, %68, %69
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext %63) #13
  %96 = getelementptr inbounds i16, ptr %64, i64 1
  br label %97, !llvm.loop !586

97:                                               ; preds = %15, %95
  %98 = phi i8 [ 1, %15 ], [ %62, %95 ]
  %99 = phi i1 [ true, %15 ], [ false, %95 ]
  %100 = phi ptr [ %3, %15 ], [ %96, %95 ]
  br label %52

101:                                              ; preds = %52, %22
  %102 = phi i8 [ %23, %22 ], [ %53, %52 ]
  %103 = and i8 %102, 1
  %104 = icmp ne i8 %103, 0
  ret i1 %104
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !587 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !588
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !589 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !590
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !592 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 4, !tbaa !593
  ret i16 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !597 {
  store i32 0, ptr %0, align 8, !tbaa !568
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #5 comdat align 2 !prof !516 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !598
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #5 comdat align 2 !prof !599 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 8, !tbaa !600, !range !374, !noundef !405
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() local_unnamed_addr #5 comdat align 2 !prof !601 {
  %1 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !464
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !602 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !603

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !604
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !606 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !607
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !608
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !610
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !611
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %11) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !611
  invoke void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef %13) #13
          to label %14 unwind label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8, !tbaa !610
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull %12) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !612
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %1) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !613
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef %2) #13
  br label %38

20:                                               ; preds = %10
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #14
  resume { ptr, i32 } %21

22:                                               ; preds = %3
  %23 = load ptr, ptr %6, align 8, !tbaa !610
  %24 = load i32, ptr %4, align 8, !tbaa !608
  %25 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %24) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !612
  %28 = load i32, ptr %4, align 8, !tbaa !608
  %29 = load ptr, ptr %27, align 8, !tbaa !372
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef %1, i32 noundef %28) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !613
  %34 = load i32, ptr %4, align 8, !tbaa !608
  %35 = load ptr, ptr %33, align 8, !tbaa !372
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef %2, i32 noundef %34) #13
  br label %38

38:                                               ; preds = %22, %14
  %39 = phi ptr [ %12, %14 ], [ %25, %22 ]
  %40 = load i32, ptr %4, align 8, !tbaa !608
  %41 = add i32 %40, 1
  store i32 %41, ptr %4, align 8, !tbaa !608
  ret ptr %39
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !614 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !615
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !616
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 align 2 !prof !623 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %6

6:                                                ; preds = %19, %4
  %7 = phi i8 [ 1, %4 ], [ %20, %19 ]
  %8 = phi ptr [ %2, %4 ], [ %23, %19 ]
  %9 = load i16, ptr %8, align 2, !tbaa !391
  switch i16 %9, label %14 [
    i16 0, label %24
    i16 -1, label %11
    i16 60, label %10
  ], !prof !624

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds i16, ptr %8, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !391
  br label %19

14:                                               ; preds = %6, %10
  %15 = phi i8 [ 0, %10 ], [ %7, %6 ]
  %16 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #13
  %17 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %16, i16 noundef zeroext %9) #13
  br i1 %17, label %18, label %19, !prof !625

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %11, %14, %18
  %20 = phi i8 [ %7, %11 ], [ %15, %18 ], [ %15, %14 ]
  %21 = phi ptr [ %12, %11 ], [ %8, %18 ], [ %8, %14 ]
  %22 = phi i16 [ %13, %11 ], [ 32, %18 ], [ %9, %14 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %22) #13
  %23 = getelementptr inbounds i16, ptr %21, i64 1
  br label %6, !llvm.loop !626

24:                                               ; preds = %6
  %25 = and i8 %7, 1
  %26 = icmp ne i8 %25, 0
  ret i1 %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !627 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !471
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !628

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !629
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !630
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !464
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 !prof !631 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !632
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 !prof !634 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !632
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %6 = icmp ne ptr %5, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i1 %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !635 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !630
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !471
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !464
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !471
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #3 comdat align 2 !prof !636 {
  %9 = zext i1 %7 to i8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !632
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %3, ptr noundef %2, i32 noundef %1) #13
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %12, align 4, !tbaa !637
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %9, ptr %13, align 8, !tbaa !638
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %6, ptr %14, align 8, !tbaa !639
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !636 {
  %3 = zext i1 %1 to i8
  store i8 %3, ptr %0, align 8, !tbaa !640
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !641
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !643
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !644, !range !374, !noundef !405
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !645
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %21) #14
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #14
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !645
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !647
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !648
  br label %45

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !649
  %29 = load ptr, ptr %28, align 8, !tbaa !372
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32) #13
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !650
  %35 = load i32, ptr %5, align 4, !tbaa !353
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !464
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38) #13
  %39 = load ptr, ptr %33, align 8, !tbaa !650
  %40 = load i32, ptr %5, align 4, !tbaa !353
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %32, ptr %42, align 8, !tbaa !464
  %43 = load i32, ptr %9, align 4, !tbaa !643
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4, !tbaa !643
  br label %45

45:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #5 comdat align 2 !prof !651 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !653 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xercesc_2_713getAttDefListEbPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !654 {
  %4 = icmp ne ptr %1, null
  %5 = and i1 %4, %0
  br i1 %5, label %6, label %8, !prof !655

6:                                                ; preds = %3
  %7 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  br label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !372
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(16) ptr %11(ptr noundef nonnull align 8 dereferenceable(33) %2) #13
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi ptr [ %7, %6 ], [ %12, %8 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !656 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !657
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !658 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !659, !range !374, !noundef !405
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 !prof !660 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !632
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !661 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !662
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !663 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !664
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !666 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !667
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713PSVIAttribute14updateValidityENS_8PSVIItem14VALIDITY_STATEE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !668
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !458 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !458 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !463

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 80, ptr noundef %7) #13
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #11
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #13
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !672 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !673
  ret i32 %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !675
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !458 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !673
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !676

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !675
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 116, ptr noundef %9) #13
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !677
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !678
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !678
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !681 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.5", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !682
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !684 {
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 !prof !496 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !649
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !644
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !650
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !641
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !643
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !685
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #13
  store ptr %3, ptr %11, align 8, !tbaa !685
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !641
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !643
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !650
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !686
  %23 = load i8, ptr %9, align 8, !tbaa !644, !range !374, !noundef !405
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !645
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %26) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #14
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !649
  %31 = load ptr, ptr %30, align 8, !tbaa !372
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #13
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !687

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !650
  %37 = load i32, ptr %4, align 8, !tbaa !641
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !464
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !688

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !649
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
  %11 = load ptr, ptr %0, align 8, !tbaa !649
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !641
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !372
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !650
  %21 = load i32, ptr %12, align 8, !tbaa !641
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !650
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !464
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !689
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !678
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !643
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !635 {
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %0) #13
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !515 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !690

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !691
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !693 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.5", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !694
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.5", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !695
  %9 = load ptr, ptr %0, align 8, !tbaa !696
  %10 = load ptr, ptr %6, align 8, !tbaa !372
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #13
  store i32 %12, ptr %3, align 4, !tbaa !353
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.5", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !697
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !698

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.6", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !699
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !700

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !694
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.6", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !701
  %28 = load ptr, ptr %25, align 8, !tbaa !372
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #13
  br i1 %31, label %36, label %32, !prof !700

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.6", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !464
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !702, !llvm.loop !703

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !704
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !706
  %8 = load ptr, ptr %0, align 8, !tbaa !707
  %9 = load ptr, ptr %5, align 8, !tbaa !372
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !353
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !708
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !464
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !704
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !709
  %23 = load ptr, ptr %20, align 8, !tbaa !372
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !464
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !710

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !711 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !712
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !546
  %8 = load ptr, ptr %0, align 8, !tbaa !552
  %9 = load ptr, ptr %5, align 8, !tbaa !372
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !353
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !553
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !464
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !713

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !712
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !551
  %23 = load ptr, ptr %20, align 8, !tbaa !372
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !714

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !464
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !715, !llvm.loop !716

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.9", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !546
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !552
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !372
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !552
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !546
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !553
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !553
  store i32 %5, ptr %3, align 8, !tbaa !546
  %23 = load ptr, ptr %0, align 8, !tbaa !552
  %24 = load ptr, ptr %23, align 8, !tbaa !372
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !553
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !464
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !717
  %38 = load ptr, ptr %18, align 8, !tbaa !712
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !551
  %41 = load ptr, ptr %0, align 8, !tbaa !552
  %42 = load ptr, ptr %38, align 8, !tbaa !372
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !464
  store ptr %48, ptr %36, align 8, !tbaa !717
  store ptr %35, ptr %47, align 8, !tbaa !464
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !718

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !546
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !719

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !545 {
  store ptr %2, ptr %0, align 8, !tbaa !543
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !717
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !551
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !720
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.9", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !722
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = load ptr, ptr %0, align 8, !tbaa !720
  store ptr null, ptr %0, align 8, !tbaa !720
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = load ptr, ptr %0, align 8, !tbaa !720
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.9", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !722
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !372
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !720
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.9", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !722
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !556 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !712
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !546
  %8 = load ptr, ptr %0, align 8, !tbaa !552
  %9 = load ptr, ptr %5, align 8, !tbaa !372
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !353
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !553
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !464
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !723

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !712
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !551
  %23 = load ptr, ptr %20, align 8, !tbaa !372
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !724

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !464
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !725, !llvm.loop !726

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !727
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !557
  %9 = load ptr, ptr %0, align 8, !tbaa !565
  %10 = load ptr, ptr %6, align 8, !tbaa !372
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #13
  store i32 %12, ptr %3, align 4, !tbaa !353
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !566
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !727
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !563
  %24 = load ptr, ptr %21, align 8, !tbaa !372
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23) #13
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !564
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !464
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !728

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %28 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.12", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !557
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !565
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !372
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %14 = load ptr, ptr %0, align 8, !tbaa !565
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !557
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !566
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %23, ptr %21, align 8, !tbaa !566
  store i32 %6, ptr %3, align 8, !tbaa !557
  %24 = load ptr, ptr %0, align 8, !tbaa !565
  %25 = load ptr, ptr %24, align 8, !tbaa !372
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #13
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !566
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !464
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !729
  %39 = load ptr, ptr %19, align 8, !tbaa !727
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !563
  %42 = load ptr, ptr %0, align 8, !tbaa !565
  %43 = load ptr, ptr %39, align 8, !tbaa !372
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #13
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !464
  store ptr %49, ptr %37, align 8, !tbaa !729
  store ptr %36, ptr %48, align 8, !tbaa !464
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !730

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !557
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !731

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !727
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !557
  %9 = load ptr, ptr %0, align 8, !tbaa !565
  %10 = load ptr, ptr %6, align 8, !tbaa !372
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #13
  store i32 %12, ptr %3, align 4, !tbaa !353
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !566
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !564
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !727
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !563
  %28 = load ptr, ptr %25, align 8, !tbaa !372
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #13
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !464
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !732

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemIjEC2EPviPjPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 !prof !496 {
  store ptr %3, ptr %0, align 8, !tbaa !561
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !729
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !563
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !564
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !733
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.12", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !735
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = load ptr, ptr %0, align 8, !tbaa !733
  store ptr null, ptr %0, align 8, !tbaa !733
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = load ptr, ptr %0, align 8, !tbaa !733
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.12", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !372
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !733
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.12", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !735
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !736 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !737
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !739
  %8 = load ptr, ptr %0, align 8, !tbaa !740
  %9 = load ptr, ptr %5, align 8, !tbaa !372
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !353
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !741
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !464
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !742

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !737
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !743
  %23 = load ptr, ptr %20, align 8, !tbaa !372
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !744

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !464
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !745, !llvm.loop !746

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !747
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !749
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !747
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !464
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !747
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !750 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !751
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !753
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !464
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !753
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !747
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !754
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
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
  %15 = load ptr, ptr %14, align 8, !tbaa !749
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !464
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !747
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !755
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !754
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !372
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !747
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !464
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !749
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !464
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !464
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !756

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !754
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !749
  %49 = load ptr, ptr %46, align 8, !tbaa !372
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !749
  store i32 %12, ptr %6, align 8, !tbaa !755
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !750 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !753
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !757
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !758

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !759
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !372
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !753
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !760

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !761

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !464
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !751
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !464
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !464
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !762, !llvm.loop !763

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !759
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !751
  %49 = load ptr, ptr %46, align 8, !tbaa !372
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !751
  store i32 %12, ptr %6, align 8, !tbaa !757
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !685
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !641
  %9 = load ptr, ptr %0, align 8, !tbaa !649
  %10 = load ptr, ptr %6, align 8, !tbaa !372
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #13
  store i32 %12, ptr %3, align 4, !tbaa !353
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !650
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !685
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !647
  %24 = load ptr, ptr %21, align 8, !tbaa !372
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23) #13
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !648
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !464
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !764

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %28 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !635 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !471
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !765
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !766

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !629
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !372
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !471
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !464
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !630
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !464
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !464
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !767

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !629
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !630
  %49 = load ptr, ptr %46, align 8, !tbaa !372
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !630
  store i32 %12, ptr %6, align 8, !tbaa !765
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.17", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !641
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !649
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !372
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %14 = load ptr, ptr %0, align 8, !tbaa !649
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !641
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !650
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %23, ptr %21, align 8, !tbaa !650
  store i32 %6, ptr %3, align 8, !tbaa !641
  %24 = load ptr, ptr %0, align 8, !tbaa !649
  %25 = load ptr, ptr %24, align 8, !tbaa !372
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #13
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !650
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !464
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !686
  %39 = load ptr, ptr %19, align 8, !tbaa !685
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !647
  %42 = load ptr, ptr %0, align 8, !tbaa !649
  %43 = load ptr, ptr %39, align 8, !tbaa !372
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #13
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !464
  store ptr %49, ptr %37, align 8, !tbaa !686
  store ptr %36, ptr %48, align 8, !tbaa !464
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !768

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !641
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !769

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !685
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !641
  %9 = load ptr, ptr %0, align 8, !tbaa !649
  %10 = load ptr, ptr %6, align 8, !tbaa !372
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #13
  store i32 %12, ptr %3, align 4, !tbaa !353
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !650
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !648
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !685
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !647
  %28 = load ptr, ptr %25, align 8, !tbaa !372
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #13
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !464
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !770

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 !prof !496 {
  store ptr %3, ptr %0, align 8, !tbaa !645
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !686
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !647
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !648
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !771
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.17", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !773
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = load ptr, ptr %0, align 8, !tbaa !771
  store ptr null, ptr %0, align 8, !tbaa !771
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = load ptr, ptr %0, align 8, !tbaa !771
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.17", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !773
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !372
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !771
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.17", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !773
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !653 {
  %3 = load ptr, ptr %0, align 8, !tbaa !488
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !774

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !490
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !775

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !372
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !488
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !490
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !776 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !777
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !778 {
  store i32 0, ptr %0, align 8, !tbaa !568
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !571
  store i16 0, ptr %3, align 2, !tbaa !391
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !779 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !780
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !781 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !782
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !788
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtRNS_9XMLBufferENS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #3 align 2 !prof !496 {
  %5 = alloca i8, align 1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #13
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %9 = load i32, ptr %8, align 8, !tbaa !394
  br label %23

10:                                               ; preds = %4
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #13
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !503
  br label %23

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %17 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef %1, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #13
  %18 = load i8, ptr %5, align 1, !tbaa !384, !range !374, !noundef !405
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %21

21:                                               ; preds = %20, %15
  %22 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %23

23:                                               ; preds = %21, %12, %7
  %24 = phi i32 [ %9, %7 ], [ %14, %12 ], [ %17, %21 ]
  ret i32 %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !789 {
  %3 = alloca %"class.xercesc_2_7::XMLDTDDescriptionImpl", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !401
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %7 = load i8, ptr %6, align 1, !tbaa !790, !range !374, !noundef !405
  %8 = icmp ne i8 %7, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %8) #13
  %9 = load ptr, ptr %4, align 8, !tbaa !401
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %11 = load i8, ptr %10, align 2, !tbaa !791, !range !374, !noundef !405
  %12 = icmp ne i8 %11, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext %12) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !427
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16, !prof !390

16:                                               ; preds = %2
  %17 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8, !tbaa !401
  %21 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %20) #13
  store ptr %21, ptr %13, align 8, !tbaa !427
  br label %22

22:                                               ; preds = %19, %16, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %24 = load ptr, ptr %23, align 8, !tbaa !393
  call void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE, ptr noundef %24) #13
  %25 = load ptr, ptr %4, align 8, !tbaa !401
  %26 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr noundef nonnull %3) #13
          to label %27 unwind label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %26, ptr %28, align 8, !tbaa !792
  call void @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  %29 = load ptr, ptr %28, align 8, !tbaa !792
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %42, !prof !390

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %33 = load ptr, ptr %32, align 8, !tbaa !793
  %34 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %33) #13
  %35 = load ptr, ptr %32, align 8, !tbaa !793
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %34, ptr noundef %35) #13
          to label %36 unwind label %40

36:                                               ; preds = %31
  store ptr %34, ptr %28, align 8, !tbaa !792
  %37 = load ptr, ptr %4, align 8, !tbaa !401
  call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %37, ptr noundef nonnull %34) #13
  br label %46

38:                                               ; preds = %22
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %277

40:                                               ; preds = %31
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %33) #14
  br label %277

42:                                               ; preds = %27
  %43 = load ptr, ptr %29, align 8, !tbaa !372
  %44 = getelementptr inbounds ptr, ptr %43, i64 20
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr noundef nonnull align 8 dereferenceable(61) %29) #13
  br label %46

46:                                               ; preds = %42, %36
  %47 = load ptr, ptr %28, align 8, !tbaa !792
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %47, ptr %48, align 8, !tbaa !357
  %49 = load ptr, ptr %47, align 8, !tbaa !372
  %50 = getelementptr inbounds ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8
  %52 = call noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(8) %47) #13
  %53 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %52, ptr %53, align 4, !tbaa !385
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %54, align 8, !tbaa !794
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %56 = load i8, ptr %55, align 1, !tbaa !795, !range !374, !noundef !405
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %86, label %58, !prof !390

58:                                               ; preds = %46
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %60 = load ptr, ptr %59, align 8, !tbaa !376
  %61 = load ptr, ptr %60, align 8, !tbaa !372
  %62 = getelementptr inbounds ptr, ptr %61, i64 12
  %63 = load ptr, ptr %62, align 8
  %64 = call noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(40) %60) #13
  %65 = load ptr, ptr %59, align 8, !tbaa !376
  br i1 %64, label %66, label %71

66:                                               ; preds = %58
  %67 = load ptr, ptr %48, align 8, !tbaa !357
  %68 = load ptr, ptr %65, align 8, !tbaa !372
  %69 = getelementptr inbounds ptr, ptr %68, i64 11
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr noundef %67) #13
  br label %94

71:                                               ; preds = %58
  %72 = load ptr, ptr %65, align 8, !tbaa !372
  %73 = getelementptr inbounds ptr, ptr %72, i64 13
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef zeroext i1 %74(ptr noundef nonnull align 8 dereferenceable(40) %65) #13
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load ptr, ptr %59, align 8, !tbaa !376
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %79 = load ptr, ptr %78, align 8, !tbaa !796
  call void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %77, ptr noundef %79) #13
  %80 = load ptr, ptr %59, align 8, !tbaa !376
  %81 = load ptr, ptr %4, align 8, !tbaa !401
  call void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %80, ptr noundef %81) #13
  %82 = load ptr, ptr %59, align 8, !tbaa !376
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %84 = load i8, ptr %83, align 1, !tbaa !797, !range !374, !noundef !405
  %85 = icmp ne i8 %84, 0
  call void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %82, i1 noundef zeroext %85) #13
  br label %94

86:                                               ; preds = %46
  %87 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !798
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %88, ptr %89, align 8, !tbaa !376
  %90 = load ptr, ptr %48, align 8, !tbaa !357
  %91 = load ptr, ptr %88, align 8, !tbaa !372
  %92 = getelementptr inbounds ptr, ptr %91, i64 11
  %93 = load ptr, ptr %92, align 8
  call void %93(ptr noundef nonnull align 8 dereferenceable(40) %88, ptr noundef %90) #13
  br label %94

94:                                               ; preds = %66, %76, %71, %86
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %96 = load i32, ptr %95, align 8, !tbaa !799
  %97 = icmp eq i32 %96, 1
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %99 = zext i1 %97 to i8
  store i8 %99, ptr %98, align 8, !tbaa !404
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %101 = load i8, ptr %100, align 2, !tbaa !800, !range !374, !noundef !405
  %102 = icmp ne i8 %101, 0
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %104 = load i8, ptr %103, align 2, !range !374
  %105 = icmp ne i8 %104, 0
  %106 = select i1 %102, i1 %105, i1 false
  %107 = zext i1 %106 to i8
  store i8 %107, ptr %100, align 2, !tbaa !800
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %109 = load ptr, ptr %108, align 8, !tbaa !801
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111, !prof !509

111:                                              ; preds = %94
  %112 = load ptr, ptr %109, align 8, !tbaa !372
  %113 = getelementptr inbounds ptr, ptr %112, i64 9
  %114 = load ptr, ptr %113, align 8
  call void %114(ptr noundef nonnull align 8 dereferenceable(8) %109) #13
  br label %115

115:                                              ; preds = %111, %94
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %117 = load ptr, ptr %116, align 8, !tbaa !802
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119, !prof !803

119:                                              ; preds = %115
  %120 = load ptr, ptr %117, align 8, !tbaa !372
  %121 = getelementptr inbounds ptr, ptr %120, i64 4
  %122 = load ptr, ptr %121, align 8
  call void %122(ptr noundef nonnull align 8 dereferenceable(8) %117) #13
  br label %123

123:                                              ; preds = %119, %115
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %125 = load ptr, ptr %124, align 8, !tbaa !796
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127, !prof !509

127:                                              ; preds = %123
  %128 = load ptr, ptr %125, align 8, !tbaa !372
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  call void %130(ptr noundef nonnull align 8 dereferenceable(8) %125) #13
  br label %131

131:                                              ; preds = %127, %123
  call void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %132 = load ptr, ptr %23, align 8, !tbaa !393
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %134 = load ptr, ptr %133, align 8, !tbaa !428
  %135 = load ptr, ptr %132, align 8, !tbaa !372
  %136 = getelementptr inbounds ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  call void %137(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %134) #13
  store ptr null, ptr %133, align 8, !tbaa !428
  %138 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %139 = load ptr, ptr %138, align 8, !tbaa !804
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141, !prof !509

141:                                              ; preds = %131
  call void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %139) #13
  br label %142

142:                                              ; preds = %141, %131
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %145 = load i32, ptr %144, align 4, !tbaa !402
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %147 = load i32, ptr %146, align 8, !tbaa !805
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %149 = load i32, ptr %148, align 4, !tbaa !503
  %150 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %151 = load i32, ptr %150, align 8, !tbaa !394
  call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %143, i32 noundef %145, i32 noundef %147, i32 noundef %149, i32 noundef %151) #13
  %152 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %153 = load i32, ptr %152, align 4, !tbaa !806
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162, !prof !390

155:                                              ; preds = %142
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %157 = load ptr, ptr %156, align 8, !tbaa !403
  %158 = load ptr, ptr %157, align 8, !tbaa !372
  %159 = getelementptr inbounds ptr, ptr %158, i64 5
  %160 = load ptr, ptr %159, align 8
  %161 = call noundef i32 %160(ptr noundef nonnull align 8 dereferenceable(40) %157, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #13
  store i32 %161, ptr %152, align 4, !tbaa !806
  br label %162

162:                                              ; preds = %155, %142
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %163, align 1, !tbaa !807
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %164, align 2, !tbaa !452
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %165, align 8, !tbaa !808
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %166, align 1, !tbaa !809
  %167 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %167, align 8, !tbaa !810
  %168 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %169 = load ptr, ptr %168, align 8, !tbaa !811
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %178, !prof !390

171:                                              ; preds = %162
  %172 = load ptr, ptr %23, align 8, !tbaa !393
  %173 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %172) #13
  %174 = load ptr, ptr %23, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %173, ptr noundef %174) #13
          to label %175 unwind label %176

175:                                              ; preds = %171
  store ptr %173, ptr %168, align 8, !tbaa !811
  br label %178

176:                                              ; preds = %171
  %177 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %173, ptr noundef %172) #14
  br label %277

178:                                              ; preds = %175, %162
  %179 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %180 = load ptr, ptr %179, align 8, !tbaa !812
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %189, !prof !390

182:                                              ; preds = %178
  %183 = load ptr, ptr %23, align 8, !tbaa !393
  %184 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %183) #13
  %185 = load ptr, ptr %23, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %184, i32 noundef 8, ptr noundef %185, i1 noundef zeroext false) #13
          to label %186 unwind label %187

186:                                              ; preds = %182
  store ptr %184, ptr %179, align 8, !tbaa !812
  br label %190

187:                                              ; preds = %182
  %188 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %184, ptr noundef %183) #14
  br label %277

189:                                              ; preds = %178
  call void @_ZN11xercesc_2_712ValueStackOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %180) #13
  br label %190

190:                                              ; preds = %189, %186
  call void @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  %191 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %192 = load ptr, ptr %191, align 8, !tbaa !798
  %193 = load ptr, ptr %192, align 8, !tbaa !372
  %194 = getelementptr inbounds ptr, ptr %193, i64 6
  %195 = load ptr, ptr %194, align 8
  call void %195(ptr noundef nonnull align 8 dereferenceable(48) %192) #13
  %196 = load ptr, ptr %191, align 8, !tbaa !798
  %197 = load ptr, ptr %124, align 8, !tbaa !796
  call void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %196, ptr noundef %197) #13
  %198 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %199 = load ptr, ptr %198, align 8, !tbaa !813
  %200 = load ptr, ptr %199, align 8, !tbaa !372
  %201 = getelementptr inbounds ptr, ptr %200, i64 6
  %202 = load ptr, ptr %201, align 8
  call void %202(ptr noundef nonnull align 8 dereferenceable(186) %199) #13
  %203 = load ptr, ptr %198, align 8, !tbaa !813
  %204 = load ptr, ptr %124, align 8, !tbaa !796
  call void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %203, ptr noundef %204) #13
  %205 = load ptr, ptr %198, align 8, !tbaa !813
  %206 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %207 = load i8, ptr %206, align 1, !tbaa !797, !range !374, !noundef !405
  %208 = icmp ne i8 %207, 0
  call void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %205, i1 noundef zeroext %208) #13
  %209 = load ptr, ptr %198, align 8, !tbaa !813
  %210 = load ptr, ptr %4, align 8, !tbaa !401
  call void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %209, ptr noundef %210) #13
  %211 = load i8, ptr %55, align 1, !tbaa !795, !range !374, !noundef !405
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %219, label %213, !prof !390

213:                                              ; preds = %190
  %214 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %215 = load ptr, ptr %214, align 8, !tbaa !376
  %216 = load ptr, ptr %215, align 8, !tbaa !372
  %217 = getelementptr inbounds ptr, ptr %216, i64 6
  %218 = load ptr, ptr %217, align 8
  call void %218(ptr noundef nonnull align 8 dereferenceable(40) %215) #13
  br label %219

219:                                              ; preds = %213, %190
  %220 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %222 = load i8, ptr %221, align 1, !tbaa !814, !range !374, !noundef !405
  %223 = icmp ne i8 %222, 0
  %224 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %220, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %223) #13
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %249, !prof !509

226:                                              ; preds = %219
  %227 = load ptr, ptr %1, align 8, !tbaa !372
  %228 = getelementptr inbounds ptr, ptr %227, i64 6
  %229 = load ptr, ptr %228, align 8
  %230 = call noundef zeroext i1 %229(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
  %231 = call ptr @__cxa_allocate_exception(i64 48) #11
  %232 = load ptr, ptr %1, align 8, !tbaa !372
  %233 = getelementptr inbounds ptr, ptr %232, i64 5
  %234 = load ptr, ptr %233, align 8
  br i1 %230, label %235, label %242

235:                                              ; preds = %226
  %236 = invoke noundef ptr %234(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %237 unwind label %240

237:                                              ; preds = %235
  %238 = load ptr, ptr %23, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %231, ptr noundef nonnull @.str.4, i32 noundef 1258, i32 noundef 76, ptr noundef %236, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %238) #13
          to label %239 unwind label %240

239:                                              ; preds = %237
  call void @__cxa_throw(ptr nonnull %231, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

240:                                              ; preds = %237, %235
  %241 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %231) #11
  br label %277

242:                                              ; preds = %226
  %243 = invoke noundef ptr %234(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %244 unwind label %247

244:                                              ; preds = %242
  %245 = load ptr, ptr %23, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %231, ptr noundef nonnull @.str.4, i32 noundef 1260, i32 noundef 2, ptr noundef %243, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %245) #13
          to label %246 unwind label %247

246:                                              ; preds = %244
  call void @__cxa_throw(ptr nonnull %231, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

247:                                              ; preds = %244, %242
  %248 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %231) #11
  br label %277

249:                                              ; preds = %219
  %250 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %220, ptr noundef nonnull %224, ptr noundef null) #13
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %252 = load ptr, ptr %251, align 8, !tbaa !815
  %253 = icmp eq ptr %252, null
  br i1 %253, label %261, label %254, !prof !390

254:                                              ; preds = %249
  %255 = load ptr, ptr %252, align 8, !tbaa !372
  %256 = getelementptr inbounds ptr, ptr %255, i64 3
  %257 = load ptr, ptr %256, align 8
  %258 = call noundef i32 %257(ptr noundef nonnull align 8 dereferenceable(12) %252) #13
  %259 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %258, ptr %259, align 4, !tbaa !816
  %260 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %260, align 8, !tbaa !817
  br label %261

261:                                              ; preds = %254, %249
  %262 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 16
  store i32 0, ptr %262, align 8, !tbaa !379
  %263 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %264 = load i32, ptr %263, align 8, !tbaa !818
  %265 = icmp ugt i32 %264, 31
  br i1 %265, label %266, label %269, !prof !509

266:                                              ; preds = %261
  %267 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %268 = load ptr, ptr %267, align 8, !tbaa !408
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %268) #13
  call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  br label %270

269:                                              ; preds = %261
  call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  br label %270

270:                                              ; preds = %269, %266
  %271 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %272 = load ptr, ptr %271, align 8, !tbaa !412
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %272) #13
  %273 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %274 = load ptr, ptr %273, align 8, !tbaa !414
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %274) #13
  %275 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %276 = load ptr, ptr %275, align 8, !tbaa !819
  call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %276) #13
  ret void

277:                                              ; preds = %240, %247, %187, %176, %40, %38
  %278 = phi { ptr, i32 } [ %188, %187 ], [ %177, %176 ], [ %41, %40 ], [ %39, %38 ], [ %241, %240 ], [ %248, %247 ]
  resume { ptr, i32 } %278
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !789 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 1, !tbaa !820
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !789 {
  tail call void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !789 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !822
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !789 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !789 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !823
  %4 = load ptr, ptr %3, align 8, !tbaa !372
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !823
  %8 = load ptr, ptr %7, align 8, !tbaa !372
  %9 = getelementptr inbounds ptr, ptr %8, i64 9
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %12, align 8, !tbaa !824
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !789 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.18", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.18", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv(ptr noundef nonnull align 8 dereferenceable(1024)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !825 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !826
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !827 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %45, label %3, !prof !828

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !546
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !829

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !548
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !553
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !830

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.8", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !717
  %23 = load i8, ptr %9, align 8, !tbaa !550, !range !374, !noundef !405
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !549

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !543
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #16
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !552
  %31 = load ptr, ptr %30, align 8, !tbaa !372
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #13
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !831, !llvm.loop !832

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !553
  %37 = load i32, ptr %4, align 8, !tbaa !546
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !464
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !833, !llvm.loop !834

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !835 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br i1 %2, label %45, label %3, !prof !836

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !557
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !559
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !566
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !464
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !729
  %23 = load i8, ptr %9, align 8, !tbaa !560, !range !374, !noundef !405
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !561
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #16
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !565
  %31 = load ptr, ptr %30, align 8, !tbaa !372
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #13
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !837

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !566
  %37 = load i32, ptr %4, align 8, !tbaa !557
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !464
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !838

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !839 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !840
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !760

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !842
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !843
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !464
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !844

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !845
  %20 = load ptr, ptr %17, align 8, !tbaa !847
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !372
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(80) %20) #14
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !848
  %28 = load ptr, ptr %27, align 8, !tbaa !372
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !849, !llvm.loop !850

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !843
  %34 = load i32, ptr %2, align 8, !tbaa !840
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !464
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !851, !llvm.loop !852
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !853 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !854
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !499 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !855
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !499 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 %5, ptr %0, align 8, !tbaa !856
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.19", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !858
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.19", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !859
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.19", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !860
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.19", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !861
  %10 = zext i32 %1 to i64
  %11 = load ptr, ptr %2, align 8, !tbaa !372
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %10) #13
  store ptr %14, ptr %8, align 8, !tbaa !860
  %15 = load i32, ptr %7, align 8, !tbaa !859
  %16 = zext i32 %15 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.19", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !858
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !678
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !827 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !548
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !835 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !559
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 align 2 !prof !862 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  br i1 %3, label %195, label %4, !prof !863

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 8, !tbaa !404, !range !374, !noundef !405
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %169, label %8, !prof !864

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = tail call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %11) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %14 = load ptr, ptr %13, align 8, !tbaa !357
  %15 = load ptr, ptr %14, align 8, !tbaa !372
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %30, !prof !865

20:                                               ; preds = %8
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %22 = load ptr, ptr %21, align 8, !tbaa !376
  %23 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %22) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25, !prof !866

25:                                               ; preds = %20
  %26 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %23) #13
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 0, i32 2
  %29 = icmp eq i32 %26, 4
  br i1 %29, label %47, label %36

30:                                               ; preds = %8
  %31 = load ptr, ptr %12, align 8, !tbaa !867
  %32 = load ptr, ptr %31, align 8, !tbaa !372
  %33 = getelementptr inbounds ptr, ptr %32, i64 7
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(33) %31) #13
  br label %36

36:                                               ; preds = %25, %30
  %37 = phi i32 [ %35, %30 ], [ %28, %25 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47, !prof !869

39:                                               ; preds = %36
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %41 = load ptr, ptr %40, align 8, !tbaa !376
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %41, i32 noundef 22) #13
  %42 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !385
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %194

45:                                               ; preds = %39
  %46 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  br label %194

47:                                               ; preds = %25, %20, %36
  %48 = phi i32 [ %37, %36 ], [ 2, %20 ], [ 1, %25 ]
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %50 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %49) #13
  %51 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %50, ptr noundef %9, i32 noundef %10) #13
  br i1 %51, label %52, label %110, !prof !870

52:                                               ; preds = %47
  switch i32 %48, label %194 [
    i32 1, label %53
    i32 2, label %61
  ], !prof !871

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %55 = load ptr, ptr %54, align 8, !tbaa !801
  %56 = icmp eq ptr %55, null
  br i1 %56, label %194, label %57, !prof !872

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 8, !tbaa !372
  %59 = getelementptr inbounds ptr, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #13
  br label %194

61:                                               ; preds = %52
  %62 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !385
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %73, label %65, !prof !873

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %67 = load ptr, ptr %66, align 8, !tbaa !801
  %68 = icmp eq ptr %67, null
  br i1 %68, label %194, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %67, align 8, !tbaa !372
  %71 = getelementptr inbounds ptr, ptr %70, i64 2
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #13
  br label %194

73:                                               ; preds = %61
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %75 = load ptr, ptr %74, align 8, !tbaa !376
  %76 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %75) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78, !prof !873

78:                                               ; preds = %73
  %79 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %76) #13
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %74, align 8, !tbaa !376
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %82, ptr noundef nonnull %76, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(40) %83) #13
  %84 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %83) #13
  %85 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %83) #13
  br label %86

86:                                               ; preds = %73, %78, %81
  %87 = phi ptr [ %84, %81 ], [ %9, %78 ], [ %9, %73 ]
  %88 = phi i32 [ %85, %81 ], [ %10, %78 ], [ %10, %73 ]
  tail call void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %75, ptr noundef %87) #13
  %89 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %89, label %90, label %97, !prof !873

90:                                               ; preds = %86
  %91 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %92 = load ptr, ptr %91, align 8, !tbaa !804
  %93 = tail call noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %92) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95, !prof !874

95:                                               ; preds = %90
  %96 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %96, ptr noundef %87, i32 noundef %88) #13
  br label %97

97:                                               ; preds = %95, %90, %86
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %99 = load ptr, ptr %98, align 8, !tbaa !801
  %100 = icmp eq ptr %99, null
  br i1 %100, label %194, label %101, !prof !874

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %103 = load i8, ptr %102, align 8, !tbaa !419, !range !374, !noundef !405
  %104 = icmp eq i8 %103, 0
  %105 = load ptr, ptr %99, align 8, !tbaa !372
  %106 = getelementptr inbounds ptr, ptr %105, i64 2
  %107 = load ptr, ptr %106, align 8
  br i1 %104, label %109, label %108, !prof !874

108:                                              ; preds = %101
  tail call void %107(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %87, i32 noundef %88, i1 noundef zeroext false) #13
  br label %194

109:                                              ; preds = %101
  tail call void %107(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #13
  br label %194

110:                                              ; preds = %47
  %111 = icmp eq i32 %48, 2
  br i1 %111, label %112, label %161, !prof !875

112:                                              ; preds = %110
  %113 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !385
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %124, label %116, !prof !875

116:                                              ; preds = %112
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %118 = load ptr, ptr %117, align 8, !tbaa !801
  %119 = icmp eq ptr %118, null
  br i1 %119, label %194, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %118, align 8, !tbaa !372
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8
  tail call void %123(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #13
  br label %194

124:                                              ; preds = %112
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %126 = load ptr, ptr %125, align 8, !tbaa !376
  %127 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %126) #13
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129, !prof !876

129:                                              ; preds = %124
  %130 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %127) #13
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %137, label %132, !prof !877

132:                                              ; preds = %129
  %133 = load ptr, ptr %125, align 8, !tbaa !376
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %133, ptr noundef nonnull %127, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(40) %134) #13
  %135 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %134) #13
  %136 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %134) #13
  br label %137

137:                                              ; preds = %124, %129, %132
  %138 = phi i32 [ %136, %132 ], [ %10, %129 ], [ %10, %124 ]
  %139 = phi ptr [ %135, %132 ], [ %9, %129 ], [ %9, %124 ]
  tail call void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %126, ptr noundef %139) #13
  %140 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %140, label %141, label %148, !prof !875

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %143 = load ptr, ptr %142, align 8, !tbaa !804
  %144 = tail call noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %143) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146, !prof !878

146:                                              ; preds = %141
  %147 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %147, ptr noundef %139, i32 noundef %138) #13
  br label %148

148:                                              ; preds = %146, %141, %137
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %150 = load ptr, ptr %149, align 8, !tbaa !801
  %151 = icmp eq ptr %150, null
  br i1 %151, label %194, label %152, !prof !878

152:                                              ; preds = %148
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %154 = load i8, ptr %153, align 8, !tbaa !419, !range !374, !noundef !405
  %155 = icmp eq i8 %154, 0
  %156 = load ptr, ptr %150, align 8, !tbaa !372
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  br i1 %155, label %160, label %159, !prof !878

159:                                              ; preds = %152
  tail call void %158(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef %139, i32 noundef %138, i1 noundef zeroext false) #13
  br label %194

160:                                              ; preds = %152
  tail call void %158(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #13
  br label %194

161:                                              ; preds = %110
  %162 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %163 = load ptr, ptr %162, align 8, !tbaa !376
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %163, i32 noundef 22) #13
  %164 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !385
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %194

167:                                              ; preds = %161
  %168 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  br label %194

169:                                              ; preds = %4
  %170 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !385
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %184, !prof !879

173:                                              ; preds = %169
  %174 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %174, label %175, label %184

175:                                              ; preds = %173
  %176 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %177 = load ptr, ptr %176, align 8, !tbaa !804
  %178 = tail call noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %177) #13
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  %182 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %183 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %181, ptr noundef %182, i32 noundef %183) #13
  br label %184

184:                                              ; preds = %173, %175, %180, %169
  %185 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %186 = load ptr, ptr %185, align 8, !tbaa !801
  %187 = icmp eq ptr %186, null
  br i1 %187, label %194, label %188, !prof !879

188:                                              ; preds = %184
  %189 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %190 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %191 = load ptr, ptr %186, align 8, !tbaa !372
  %192 = getelementptr inbounds ptr, ptr %191, i64 2
  %193 = load ptr, ptr %192, align 8
  tail call void %193(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef %189, i32 noundef %190, i1 noundef zeroext false) #13
  br label %194

194:                                              ; preds = %45, %39, %116, %120, %167, %161, %57, %53, %69, %65, %52, %108, %109, %97, %159, %160, %148, %184, %188
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  br label %195

195:                                              ; preds = %2, %194
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !880 {
  %2 = load i32, ptr %0, align 8, !tbaa !568
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !881 {
  %2 = load i32, ptr %0, align 8, !tbaa !568
  ret i32 %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !882 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !883
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !884 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #5 comdat align 2 !prof !885 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 8, !tbaa !404, !range !374, !noundef !405
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %6 = load i8, ptr %5, align 4, !range !374
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %13, label %9, !prof !886

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !804
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !884 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !887
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !889 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !890

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !568
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !569
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !891

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #13
  %12 = load i32, ptr %0, align 8, !tbaa !568
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !571
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !568
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !568
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !892 {
  %2 = load i32, ptr %0, align 8, !tbaa !893
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 !prof !496 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #13
  tail call void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !499 {
  %5 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %6) #13
  %7 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %8 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %7) #13
          to label %9 unwind label %17

9:                                                ; preds = %4
  %10 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  %11 = icmp eq i32 %3, -1
  br i1 %11, label %37, label %12, !prof !895

12:                                               ; preds = %9
  %13 = sext i32 %3 to i64
  %14 = getelementptr i16, ptr %1, i64 %13
  %15 = getelementptr i16, ptr %14, i64 1
  %16 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #13
  br i1 %16, label %25, label %21, !prof !896

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %56

19:                                               ; preds = %25, %36, %44, %53, %46
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %56

21:                                               ; preds = %12
  %22 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #13
  br i1 %22, label %23, label %27, !prof !896

23:                                               ; preds = %21
  %24 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #13
  br i1 %24, label %27, label %25

25:                                               ; preds = %12, %23
  %26 = phi i32 [ 303, %23 ], [ 301, %12 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %26) #13
          to label %27 unwind label %19

27:                                               ; preds = %25, %21, %23
  %28 = icmp eq ptr %10, null
  br i1 %28, label %36, label %29, !prof !896

29:                                               ; preds = %27
  %30 = load i16, ptr %10, align 2, !tbaa !391
  %31 = icmp eq i16 %30, 0
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !897

36:                                               ; preds = %29, %27
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %37 unwind label %19

37:                                               ; preds = %36, %29, %9
  %38 = phi ptr [ %15, %29 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %9 ], [ %15, %36 ]
  %39 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #13
  br i1 %39, label %44, label %40, !prof !898

40:                                               ; preds = %37
  %41 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #13
  br i1 %41, label %42, label %46, !prof !898

42:                                               ; preds = %40
  %43 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %38, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #13
  br i1 %43, label %46, label %44

44:                                               ; preds = %42, %37
  %45 = phi i32 [ 302, %37 ], [ 304, %42 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %45) #13
          to label %46 unwind label %19

46:                                               ; preds = %44, %40, %42
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %48 = load ptr, ptr %47, align 8, !tbaa !403
  %49 = load ptr, ptr %48, align 8, !tbaa !372
  %50 = getelementptr inbounds ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(40) %48, ptr noundef %10) #13
          to label %53 unwind label %19

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %54, ptr noundef %38, i32 noundef %52) #13
          to label %55 unwind label %19

55:                                               ; preds = %53
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void

56:                                               ; preds = %19, %17
  %57 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %57
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1024) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !899 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca i32, align 4
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %31, !prof !900

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %28
  %10 = phi i64 [ 0, %6 ], [ %29, %28 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !901
  %12 = trunc i64 %10 to i32
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %12) #13
  %14 = tail call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !395

17:                                               ; preds = %9
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #13
  br i1 %18, label %19, label %28, !prof !396

19:                                               ; preds = %17, %9
  %20 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %21 = tail call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %22 = load ptr, ptr %20, align 8, !tbaa !388
  %23 = getelementptr inbounds i32, ptr %22, i64 %10
  %24 = load i32, ptr %23, align 4, !tbaa !353
  tail call void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %14, ptr noundef %21, i32 noundef %24) #13
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %21, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #13
  br i1 %25, label %26, label %28, !prof !902

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 1, ptr %27, align 8, !tbaa !810
  br label %28

28:                                               ; preds = %19, %26, %17
  %29 = add nuw nsw i64 %10, 1
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %31, label %9, !prof !903, !llvm.loop !904

31:                                               ; preds = %28, %2
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %33 = load i8, ptr %32, align 2, !tbaa !905, !range !374, !noundef !405
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !range !374
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %34, i1 true, i1 %37
  br i1 %38, label %141, label %39, !prof !906

39:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %40) #13
  %41 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  br i1 %5, label %42, label %106, !prof !907

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %44 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %46 = zext nneg i32 %1 to i64
  br label %47

47:                                               ; preds = %42, %103
  %48 = phi i64 [ 0, %42 ], [ %104, %103 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !901
  %50 = trunc i64 %48 to i32
  %51 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %49, i32 noundef %50) #13
          to label %52 unwind label %62

52:                                               ; preds = %47
  %53 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %51) #13
  %54 = load ptr, ptr %44, align 8, !tbaa !388
  %55 = getelementptr inbounds i32, ptr %54, i64 %48
  %56 = load i32, ptr %55, align 4, !tbaa !353
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %66, label %58, !prof !908

58:                                               ; preds = %52
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef %53, i32 noundef %56) #13
          to label %60 unwind label %64

60:                                               ; preds = %58
  %61 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %59) #13
  br label %66

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %139

64:                                               ; preds = %66, %58
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %139

66:                                               ; preds = %60, %52
  %67 = phi ptr [ %61, %60 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %52 ]
  %68 = invoke noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %67, i32 noundef 0) #13
          to label %69 unwind label %64

69:                                               ; preds = %66
  %70 = load i32, ptr %45, align 4, !tbaa !806
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %103, !prof !909

72:                                               ; preds = %69
  %73 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %51) #13
  %74 = sext i32 %56 to i64
  %75 = getelementptr i16, ptr %53, i64 %74
  %76 = getelementptr i16, ptr %75, i64 1
  %77 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %76, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE) #13
  br i1 %77, label %78, label %81, !prof !910

78:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %73) #13
          to label %84 unwind label %79

79:                                               ; preds = %93, %86, %83, %78
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %139

81:                                               ; preds = %72
  %82 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %76, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE) #13
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  invoke void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %73, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #13
          to label %84 unwind label %79

84:                                               ; preds = %81, %83, %78
  %85 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %76, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE) #13
  br i1 %85, label %86, label %87, !prof !911

86:                                               ; preds = %84
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef %73) #13
          to label %103 unwind label %79

87:                                               ; preds = %84
  %88 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %76, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE) #13
  br i1 %88, label %89, label %103, !prof !911

89:                                               ; preds = %87
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %91 = load ptr, ptr %90, align 8, !tbaa !376
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %91, align 8, !tbaa !372
  %95 = getelementptr inbounds ptr, ptr %94, i64 13
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef zeroext i1 %96(ptr noundef nonnull align 8 dereferenceable(40) %91) #13
          to label %98 unwind label %79

98:                                               ; preds = %93
  br i1 %97, label %99, label %103

99:                                               ; preds = %98
  %100 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %73, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE) #13
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = load ptr, ptr %90, align 8, !tbaa !376
  call void @_ZN11xercesc_2_715SchemaValidator11setNillableEb(ptr noundef nonnull align 8 dereferenceable(186) %102, i1 noundef zeroext true) #13
  br label %103

103:                                              ; preds = %86, %101, %99, %98, %89, %87, %69
  %104 = add nuw nsw i64 %48, 1
  %105 = icmp eq i64 %104, %46
  br i1 %105, label %106, label %47, !prof !912, !llvm.loop !913

106:                                              ; preds = %103, %39
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %108 = load ptr, ptr %107, align 8, !tbaa !376
  %109 = icmp eq ptr %108, null
  br i1 %109, label %138, label %110, !prof !914

110:                                              ; preds = %106
  %111 = load ptr, ptr %108, align 8, !tbaa !372
  %112 = getelementptr inbounds ptr, ptr %111, i64 13
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef zeroext i1 %113(ptr noundef nonnull align 8 dereferenceable(40) %108) #13
          to label %115 unwind label %134

115:                                              ; preds = %110
  br i1 %114, label %116, label %138, !prof !915

116:                                              ; preds = %115
  %117 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %41) #13
  br i1 %117, label %138, label %118, !prof !915

118:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 -1, ptr %4, align 4, !tbaa !353
  %119 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %41) #13
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %121 = load ptr, ptr %0, align 8, !tbaa !372
  %122 = getelementptr inbounds ptr, ptr %121, i64 7
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef i32 %123(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %119, ptr noundef nonnull align 8 dereferenceable(40) %120, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
          to label %125 unwind label %136

125:                                              ; preds = %118
  %126 = load ptr, ptr %107, align 8, !tbaa !376
  %127 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %120) #13
  %128 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %41) #13
  %129 = load i32, ptr %4, align 4, !tbaa !353
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i16, ptr %128, i64 %130
  %132 = getelementptr inbounds i16, ptr %131, i64 1
  invoke void @_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(186) %126, ptr noundef %127, ptr noundef nonnull %132, i32 noundef %124) #13
          to label %133 unwind label %136

133:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %138

134:                                              ; preds = %110
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %139

136:                                              ; preds = %125, %118
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %139

138:                                              ; preds = %116, %133, %115, %106
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %141

139:                                              ; preds = %62, %79, %64, %136, %134
  %140 = phi { ptr, i32 } [ %137, %136 ], [ %135, %134 ], [ %63, %62 ], [ %80, %79 ], [ %65, %64 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %140

141:                                              ; preds = %138, %31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !916 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !481
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !917

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !483
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !484
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !464
  ret ptr %18
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !918 {
  store i32 0, ptr %0, align 8, !tbaa !568
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !532 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %5 = load ptr, ptr %4, align 8, !tbaa !393
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %7 = load ptr, ptr %4, align 8, !tbaa !393
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %6, ptr noundef %7) #13
  invoke void @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %6) #13
          to label %8 unwind label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !919
  %11 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPtE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #13
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !910

14:                                               ; preds = %8
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %37, label %21, !prof !920

16:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 295) #13
          to label %37 unwind label %19

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %38

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %38

21:                                               ; preds = %14, %32
  %22 = phi i32 [ %33, %32 ], [ 0, %14 ]
  %23 = load ptr, ptr %9, align 8, !tbaa !919
  %24 = or disjoint i32 %22, 1
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef %24) #13
          to label %26 unwind label %35

26:                                               ; preds = %21
  %27 = load ptr, ptr %25, align 8, !tbaa !464
  %28 = load ptr, ptr %9, align 8, !tbaa !919
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %22) #13
          to label %30 unwind label %35

30:                                               ; preds = %26
  %31 = load ptr, ptr %29, align 8, !tbaa !464
  invoke void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %27, ptr noundef %31) #13
          to label %32 unwind label %35

32:                                               ; preds = %30
  %33 = add i32 %22, 2
  %34 = icmp ult i32 %33, %11
  br i1 %34, label %21, label %37, !prof !920, !llvm.loop !921

35:                                               ; preds = %30, %26, %21
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %38

37:                                               ; preds = %32, %14, %16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void

38:                                               ; preds = %19, %35, %17
  %39 = phi { ptr, i32 } [ %18, %17 ], [ %20, %19 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !532 {
  %4 = alloca %"class.xercesc_2_7::XMLSchemaDescriptionImpl", align 8
  %5 = alloca %"class.xercesc_2_7::XSDDOMParser", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca i16, align 2
  %8 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %9 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %10 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %11 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %12 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %13 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %14 = alloca %"class.xercesc_2_7::Janitor", align 8
  %15 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %17 = load ptr, ptr %16, align 8, !tbaa !393
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %2, ptr noundef %17) #13
  invoke void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %1) #13
          to label %18 unwind label %56

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !401
  %21 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80) %20, ptr noundef nonnull %4) #13
          to label %22 unwind label %56

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  %23 = icmp eq ptr %21, null
  br i1 %23, label %30, label %24, !prof !910

24:                                               ; preds = %22
  %25 = load ptr, ptr %21, align 8, !tbaa !372
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %353

30:                                               ; preds = %24, %22
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %5) #11
  %31 = load ptr, ptr %16, align 8, !tbaa !393
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef null, ptr noundef %31, ptr noundef null) #13
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %5, i32 noundef 0) #13
          to label %32 unwind label %58

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %5, i1 noundef zeroext true) #13
          to label %33 unwind label %58

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %35 = load ptr, ptr %34, align 8, !tbaa !802
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %35) #13
          to label %36 unwind label %58

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %38 = load ptr, ptr %37, align 8, !tbaa !796
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %38) #13
          to label %39 unwind label %58

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %40) #13
          to label %41 unwind label %60

41:                                               ; preds = %39
  %42 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 -1, ptr %7, align 2, !tbaa !391
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 8 dereferenceable(40) %42) #13
          to label %43 unwind label %62

43:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %42) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %40) #13
          to label %45 unwind label %64

45:                                               ; preds = %43
  %46 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  %47 = load ptr, ptr %34, align 8, !tbaa !802
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49, !prof !910

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !372
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(40) %46) #13
          to label %54 unwind label %66

54:                                               ; preds = %49
  br i1 %53, label %68, label %55

55:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef %44) #13
          to label %68 unwind label %66

56:                                               ; preds = %18, %3
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %401

58:                                               ; preds = %36, %33, %32, %30
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %351

60:                                               ; preds = %39
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %349

62:                                               ; preds = %41
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %347

64:                                               ; preds = %43
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %345

66:                                               ; preds = %84, %55, %49
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %343

68:                                               ; preds = %55, %54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %69, ptr noundef nonnull align 8 dereferenceable(32) %9) #13
          to label %70 unwind label %78

70:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #11
  %71 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %46) #13
  %72 = load ptr, ptr %9, align 8, !tbaa !922
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %10, i32 noundef 0, ptr noundef %71, ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %72, ptr noundef nonnull %69) #13
  %73 = load ptr, ptr %34, align 8, !tbaa !802
  %74 = load ptr, ptr %73, align 8, !tbaa !372
  %75 = getelementptr inbounds ptr, ptr %74, i64 6
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull %10) #13
          to label %85 unwind label %80

78:                                               ; preds = %68
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %82

80:                                               ; preds = %70
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #11
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  br label %343

84:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef %44) #13
          to label %87 unwind label %66

85:                                               ; preds = %70
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  %86 = icmp eq ptr %77, null
  br i1 %86, label %87, label %170, !prof !378

87:                                               ; preds = %84, %85
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %89 = load i8, ptr %88, align 1, !tbaa !924, !range !374, !noundef !405
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %340, !prof !910

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %92, ptr noundef nonnull align 8 dereferenceable(32) %11) #13
          to label %93 unwind label %119

93:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %12) #11
  %94 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %12, ptr noundef %94) #13
          to label %95 unwind label %121

95:                                               ; preds = %93
  %96 = load ptr, ptr %11, align 8, !tbaa !922
  %97 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %46) #13
  %98 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %12, ptr noundef %96, ptr noundef %97, ptr noundef nonnull align 8 dereferenceable(81) %12) #13
          to label %99 unwind label %123

99:                                               ; preds = %95
  br i1 %98, label %100, label %103, !prof !911

100:                                              ; preds = %99
  %101 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %12) #13
          to label %102 unwind label %123

102:                                              ; preds = %100
  br i1 %101, label %103, label %140

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %105 = load i8, ptr %104, align 8, !tbaa !925, !range !374, !noundef !405
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %135, !prof !910

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %40) #13
          to label %108 unwind label %125

108:                                              ; preds = %107
  %109 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #13
  %110 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %46) #13
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %110, ptr noundef nonnull align 8 dereferenceable(40) %109) #13
          to label %111 unwind label %127

111:                                              ; preds = %108
  %112 = load ptr, ptr %16, align 8, !tbaa !393
  %113 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %112) #13
          to label %114 unwind label %127

114:                                              ; preds = %111
  %115 = load ptr, ptr %11, align 8, !tbaa !922
  %116 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %109) #13
  %117 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %113, ptr noundef %115, ptr noundef %116, ptr noundef %117) #13
          to label %118 unwind label %129

118:                                              ; preds = %114
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  br label %162

119:                                              ; preds = %91
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %168

121:                                              ; preds = %93
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %166

123:                                              ; preds = %150, %155, %144, %100, %95
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %164

125:                                              ; preds = %107
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %133

127:                                              ; preds = %111, %108
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %131

129:                                              ; preds = %114
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %113, ptr noundef %112) #14
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %128, %127 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #14
  br label %133

133:                                              ; preds = %131, %125
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  br label %164

135:                                              ; preds = %103
  %136 = call ptr @__cxa_allocate_exception(i64 48) #11
  %137 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %136, ptr noundef nonnull @.str.4, i32 noundef 1736, i32 noundef 99, ptr noundef %137) #13
          to label %150 unwind label %138

138:                                              ; preds = %135
  %139 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %136) #11
  br label %164

140:                                              ; preds = %102
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %142 = load i8, ptr %141, align 8, !tbaa !925, !range !374, !noundef !405
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %140
  %145 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %12) #13
          to label %146 unwind label %123

146:                                              ; preds = %144
  br i1 %145, label %147, label %155

147:                                              ; preds = %146
  %148 = call ptr @__cxa_allocate_exception(i64 48) #11
  %149 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %148, ptr noundef nonnull @.str.4, i32 noundef 1741, i32 noundef 99, ptr noundef %149) #13
          to label %150 unwind label %153

150:                                              ; preds = %147, %135
  %151 = phi ptr [ %136, %135 ], [ %148, %147 ]
  invoke void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %152 unwind label %123

152:                                              ; preds = %150
  unreachable

153:                                              ; preds = %147
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %148) #11
  br label %164

155:                                              ; preds = %146, %140
  %156 = load ptr, ptr %16, align 8, !tbaa !393
  %157 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %156) #13
          to label %158 unwind label %123

158:                                              ; preds = %155
  %159 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %157, ptr noundef nonnull align 8 dereferenceable(81) %12, ptr noundef %159) #13
          to label %162 unwind label %160

160:                                              ; preds = %158
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %157, ptr noundef %156) #14
  br label %164

162:                                              ; preds = %158, %118
  %163 = phi ptr [ %113, %118 ], [ %157, %158 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %12) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  br label %170

164:                                              ; preds = %160, %153, %138, %133, %123
  %165 = phi { ptr, i32 } [ %124, %123 ], [ %139, %138 ], [ %134, %133 ], [ %154, %153 ], [ %161, %160 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %12) #14
  br label %166

166:                                              ; preds = %164, %121
  %167 = phi { ptr, i32 } [ %165, %164 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #11
  br label %168

168:                                              ; preds = %166, %119
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  br label %343

170:                                              ; preds = %162, %85
  %171 = phi ptr [ %77, %85 ], [ %163, %162 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %171) #13
  %172 = load ptr, ptr %171, align 8, !tbaa !372
  %173 = getelementptr inbounds ptr, ptr %172, i64 6
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef zeroext i1 %174(ptr noundef nonnull align 8 dereferenceable(41) %171) #13
          to label %176 unwind label %192

176:                                              ; preds = %170
  %177 = load ptr, ptr %171, align 8, !tbaa !372
  %178 = getelementptr inbounds ptr, ptr %177, i64 10
  %179 = load ptr, ptr %178, align 8
  invoke void %179(ptr noundef nonnull align 8 dereferenceable(41) %171, i1 noundef zeroext false) #13
          to label %180 unwind label %192

180:                                              ; preds = %176
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(41) %171) #13
          to label %181 unwind label %192

181:                                              ; preds = %180
  %182 = load ptr, ptr %171, align 8, !tbaa !372
  %183 = getelementptr inbounds ptr, ptr %182, i64 10
  %184 = load ptr, ptr %183, align 8
  invoke void %184(ptr noundef nonnull align 8 dereferenceable(41) %171, i1 noundef zeroext %175) #13
          to label %185 unwind label %192

185:                                              ; preds = %181
  %186 = call noundef zeroext i1 @_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv(ptr noundef nonnull align 8 dereferenceable(368) %5) #13
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %188 = load i8, ptr %187, align 1, !range !374
  %189 = icmp ne i8 %188, 0
  %190 = select i1 %186, i1 %189, i1 false
  br i1 %190, label %191, label %194, !prof !898

191:                                              ; preds = %185
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297) #13
          to label %194 unwind label %192

192:                                              ; preds = %191, %181, %180, %176, %170
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %341

194:                                              ; preds = %191, %185
  %195 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %5) #13
          to label %196 unwind label %223

196:                                              ; preds = %194
  %197 = icmp eq ptr %195, null
  br i1 %197, label %339, label %198, !prof !911

198:                                              ; preds = %196
  %199 = load ptr, ptr %195, align 8, !tbaa !372
  %200 = getelementptr inbounds ptr, ptr %199, i64 13
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(32) %195) #13
          to label %203 unwind label %225

203:                                              ; preds = %198
  %204 = icmp eq ptr %202, null
  br i1 %204, label %339, label %205, !prof !911

205:                                              ; preds = %203
  %206 = load ptr, ptr %202, align 8, !tbaa !372
  %207 = getelementptr inbounds ptr, ptr %206, i64 41
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef ptr %208(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE) #13
          to label %210 unwind label %227

210:                                              ; preds = %205
  %211 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %209, ptr noundef %2) #13
  br i1 %211, label %232, label %212, !prof !910

212:                                              ; preds = %210
  %213 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %214 = load i8, ptr %213, align 8, !tbaa !404, !range !374, !noundef !405
  %215 = icmp ne i8 %214, 0
  %216 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %217 = load i32, ptr %216, align 8
  %218 = icmp eq i32 %217, 2
  %219 = select i1 %215, i1 true, i1 %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %212
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %222 = load ptr, ptr %221, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %222, i32 noundef 69, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #13
          to label %229 unwind label %227

223:                                              ; preds = %194
  %224 = landingpad { ptr, i32 }
          cleanup
  br label %341

225:                                              ; preds = %198
  %226 = landingpad { ptr, i32 }
          cleanup
  br label %341

227:                                              ; preds = %273, %267, %252, %235, %229, %220, %205
  %228 = landingpad { ptr, i32 }
          cleanup
  br label %341

229:                                              ; preds = %212, %220
  %230 = load ptr, ptr %19, align 8, !tbaa !401
  %231 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %230, ptr noundef %209) #13
          to label %232 unwind label %227

232:                                              ; preds = %229, %210
  %233 = phi ptr [ %21, %210 ], [ %231, %229 ]
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235, !prof !910

235:                                              ; preds = %232
  %236 = load ptr, ptr %233, align 8, !tbaa !372
  %237 = getelementptr inbounds ptr, ptr %236, i64 5
  %238 = load ptr, ptr %237, align 8
  %239 = invoke noundef i32 %238(ptr noundef nonnull align 8 dereferenceable(8) %233) #13
          to label %240 unwind label %227

240:                                              ; preds = %235
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %242, label %339

242:                                              ; preds = %240, %232
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %244 = load i32, ptr %243, align 8, !tbaa !799
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %252, !prof !910

246:                                              ; preds = %242
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %248 = load i8, ptr %247, align 8, !tbaa !404, !range !374, !noundef !405
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %252, !prof !910

250:                                              ; preds = %246
  store i8 1, ptr %247, align 8, !tbaa !404
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %251, i1 noundef zeroext true) #13
  br label %252

252:                                              ; preds = %250, %246, %242
  %253 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %254 = load ptr, ptr %253, align 8, !tbaa !376
  %255 = load ptr, ptr %254, align 8, !tbaa !372
  %256 = getelementptr inbounds ptr, ptr %255, i64 13
  %257 = load ptr, ptr %256, align 8
  %258 = invoke noundef zeroext i1 %257(ptr noundef nonnull align 8 dereferenceable(40) %254) #13
          to label %259 unwind label %227

259:                                              ; preds = %252
  br i1 %258, label %273, label %260, !prof !911

260:                                              ; preds = %259
  %261 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %262 = load i8, ptr %261, align 1, !tbaa !795, !range !374, !noundef !405
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %270, label %264, !prof !910

264:                                              ; preds = %260
  %265 = call ptr @__cxa_allocate_exception(i64 48) #11
  %266 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %265, ptr noundef nonnull @.str.4, i32 noundef 1791, i32 noundef 158, ptr noundef %266) #13
          to label %267 unwind label %268

267:                                              ; preds = %264
  invoke void @__cxa_throw(ptr nonnull %265, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %403 unwind label %227

268:                                              ; preds = %264
  %269 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %265) #11
  br label %341

270:                                              ; preds = %260
  %271 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %272 = load ptr, ptr %271, align 8, !tbaa !813
  store ptr %272, ptr %253, align 8, !tbaa !376
  br label %273

273:                                              ; preds = %270, %259
  %274 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %275 = load ptr, ptr %274, align 8, !tbaa !793
  %276 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %275) #13
          to label %277 unwind label %227

277:                                              ; preds = %273
  %278 = load ptr, ptr %274, align 8, !tbaa !793
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %276, ptr noundef %278) #13
          to label %279 unwind label %319

279:                                              ; preds = %277
  %280 = load ptr, ptr %276, align 8, !tbaa !372
  %281 = getelementptr inbounds ptr, ptr %280, i64 22
  %282 = load ptr, ptr %281, align 8
  %283 = invoke noundef ptr %282(ptr noundef nonnull align 8 dereferenceable(8) %276) #13
          to label %284 unwind label %321

284:                                              ; preds = %279
  %285 = load ptr, ptr %283, align 8, !tbaa !372
  %286 = getelementptr inbounds ptr, ptr %285, i64 13
  %287 = load ptr, ptr %286, align 8
  invoke void %287(ptr noundef nonnull align 8 dereferenceable(16) %283, i32 noundef 3) #13
          to label %288 unwind label %321

288:                                              ; preds = %284
  %289 = load ptr, ptr %171, align 8, !tbaa !372
  %290 = getelementptr inbounds ptr, ptr %289, i64 5
  %291 = load ptr, ptr %290, align 8
  %292 = invoke noundef ptr %291(ptr noundef nonnull align 8 dereferenceable(41) %171) #13
          to label %293 unwind label %321

293:                                              ; preds = %288
  %294 = load ptr, ptr %283, align 8, !tbaa !372
  %295 = getelementptr inbounds ptr, ptr %294, i64 15
  %296 = load ptr, ptr %295, align 8
  invoke void %296(ptr noundef nonnull align 8 dereferenceable(16) %283, ptr noundef %292) #13
          to label %297 unwind label %321

297:                                              ; preds = %293
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %15) #11
  %298 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %299 = load ptr, ptr %298, align 8, !tbaa !403
  %300 = load ptr, ptr %19, align 8, !tbaa !401
  %301 = load ptr, ptr %171, align 8, !tbaa !372
  %302 = getelementptr inbounds ptr, ptr %301, i64 5
  %303 = load ptr, ptr %302, align 8
  %304 = invoke noundef ptr %303(ptr noundef nonnull align 8 dereferenceable(41) %171) #13
          to label %305 unwind label %323

305:                                              ; preds = %297
  %306 = load ptr, ptr %34, align 8, !tbaa !802
  %307 = load ptr, ptr %37, align 8, !tbaa !796
  %308 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %15, ptr noundef nonnull %202, ptr noundef %299, ptr noundef nonnull %276, ptr noundef %300, ptr noundef nonnull %0, ptr noundef %304, ptr noundef %306, ptr noundef %307, ptr noundef %308) #13
          to label %309 unwind label %323

309:                                              ; preds = %305
  %310 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %311 = load i32, ptr %310, align 4, !tbaa !385
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %327, !prof !910

313:                                              ; preds = %309
  %314 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %276, ptr %314, align 8, !tbaa !357
  store i32 1, ptr %310, align 4, !tbaa !385
  %315 = load ptr, ptr %253, align 8, !tbaa !376
  %316 = load ptr, ptr %315, align 8, !tbaa !372
  %317 = getelementptr inbounds ptr, ptr %316, i64 11
  %318 = load ptr, ptr %317, align 8
  invoke void %318(ptr noundef nonnull align 8 dereferenceable(40) %315, ptr noundef nonnull %276) #13
          to label %327 unwind label %325

319:                                              ; preds = %277
  %320 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %276, ptr noundef %275) #14
  br label %341

321:                                              ; preds = %293, %288, %284, %279
  %322 = landingpad { ptr, i32 }
          cleanup
  br label %341

323:                                              ; preds = %305, %297
  %324 = landingpad { ptr, i32 }
          cleanup
  br label %337

325:                                              ; preds = %331, %313
  %326 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %15) #14
  br label %337

327:                                              ; preds = %313, %309
  %328 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %329 = load i8, ptr %328, align 8, !tbaa !404, !range !374, !noundef !405
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %336, label %331, !prof !911

331:                                              ; preds = %327
  %332 = load ptr, ptr %253, align 8, !tbaa !376
  %333 = load ptr, ptr %332, align 8, !tbaa !372
  %334 = getelementptr inbounds ptr, ptr %333, i64 4
  %335 = load ptr, ptr %334, align 8
  invoke void %335(ptr noundef nonnull align 8 dereferenceable(40) %332, i1 noundef zeroext false, i1 noundef zeroext false) #13
          to label %336 unwind label %325

336:                                              ; preds = %331, %327
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %15) #14
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %15) #11
  br label %339

337:                                              ; preds = %325, %323
  %338 = phi { ptr, i32 } [ %326, %325 ], [ %324, %323 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %15) #11
  br label %341

339:                                              ; preds = %203, %336, %240, %196
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #11
  br label %393

340:                                              ; preds = %87
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #11
  br label %400

341:                                              ; preds = %223, %227, %268, %319, %337, %321, %225, %192
  %342 = phi { ptr, i32 } [ %193, %192 ], [ %224, %223 ], [ %226, %225 ], [ %320, %319 ], [ %228, %227 ], [ %269, %268 ], [ %338, %337 ], [ %322, %321 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %343

343:                                              ; preds = %341, %168, %82, %66
  %344 = phi { ptr, i32 } [ %342, %341 ], [ %169, %168 ], [ %83, %82 ], [ %67, %66 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  br label %345

345:                                              ; preds = %343, %64
  %346 = phi { ptr, i32 } [ %344, %343 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %347

347:                                              ; preds = %345, %62
  %348 = phi { ptr, i32 } [ %346, %345 ], [ %63, %62 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  br label %349

349:                                              ; preds = %347, %60
  %350 = phi { ptr, i32 } [ %348, %347 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %351

351:                                              ; preds = %349, %58
  %352 = phi { ptr, i32 } [ %350, %349 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #11
  br label %401

353:                                              ; preds = %24
  %354 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %355 = load i32, ptr %354, align 8, !tbaa !799
  %356 = icmp eq i32 %355, 2
  br i1 %356, label %357, label %363

357:                                              ; preds = %353
  %358 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %359 = load i8, ptr %358, align 8, !tbaa !404, !range !374, !noundef !405
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  store i8 1, ptr %358, align 8, !tbaa !404
  %362 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %362, i1 noundef zeroext true) #13
  br label %363

363:                                              ; preds = %361, %357, %353
  %364 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %365 = load ptr, ptr %364, align 8, !tbaa !376
  %366 = load ptr, ptr %365, align 8, !tbaa !372
  %367 = getelementptr inbounds ptr, ptr %366, i64 13
  %368 = load ptr, ptr %367, align 8
  %369 = call noundef zeroext i1 %368(ptr noundef nonnull align 8 dereferenceable(40) %365) #13
  br i1 %369, label %383, label %370

370:                                              ; preds = %363
  %371 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %372 = load i8, ptr %371, align 1, !tbaa !795, !range !374, !noundef !405
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %380, label %374

374:                                              ; preds = %370
  %375 = call ptr @__cxa_allocate_exception(i64 48) #11
  %376 = load ptr, ptr %16, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %375, ptr noundef nonnull @.str.4, i32 noundef 1844, i32 noundef 158, ptr noundef %376) #13
          to label %377 unwind label %378

377:                                              ; preds = %374
  call void @__cxa_throw(ptr nonnull %375, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

378:                                              ; preds = %374
  %379 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %375) #11
  br label %401

380:                                              ; preds = %370
  %381 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %382 = load ptr, ptr %381, align 8, !tbaa !813
  store ptr %382, ptr %364, align 8, !tbaa !376
  br label %383

383:                                              ; preds = %380, %363
  %384 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %385 = load i32, ptr %384, align 4, !tbaa !385
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %383
  %388 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %21, ptr %388, align 8, !tbaa !357
  store i32 1, ptr %384, align 4, !tbaa !385
  %389 = load ptr, ptr %364, align 8, !tbaa !376
  %390 = load ptr, ptr %389, align 8, !tbaa !372
  %391 = getelementptr inbounds ptr, ptr %390, i64 11
  %392 = load ptr, ptr %391, align 8
  call void %392(ptr noundef nonnull align 8 dereferenceable(40) %389, ptr noundef nonnull %21) #13
  br label %393

393:                                              ; preds = %339, %383, %387
  %394 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %395 = icmp eq ptr %394, null
  br i1 %395, label %400, label %396, !prof !910

396:                                              ; preds = %393
  %397 = load ptr, ptr %19, align 8, !tbaa !401
  %398 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %397) #13
  %399 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  store ptr %398, ptr %399, align 8, !tbaa !427
  br label %400

400:                                              ; preds = %393, %396, %340
  ret void

401:                                              ; preds = %378, %351, %56
  %402 = phi { ptr, i32 } [ %352, %351 ], [ %379, %378 ], [ %57, %56 ]
  resume { ptr, i32 } %402

403:                                              ; preds = %267
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator11setNillableEb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !926
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !927
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !372
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(56) %6) #14
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !928
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %14) #13
  %16 = load ptr, ptr %13, align 8, !tbaa !928
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %16) #13
          to label %17 unwind label %18

17:                                               ; preds = %12
  store ptr %15, ptr %5, align 8, !tbaa !927
  ret void

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #14
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !929 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !488
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !490
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPtE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !532 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.20", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !930
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !601 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.20", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !930
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !932

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.20", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !933
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9) #13
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.20", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !934
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #5 comdat align 2 !prof !496 {
  store i32 %1, ptr %0, align 8, !tbaa !935
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !938
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !939
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 3
  store ptr %5, ptr %10, align 8, !tbaa !940
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !941
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 5
  store ptr %6, ptr %12, align 8, !tbaa !942
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
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

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !532 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !943
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #5 comdat align 2 !prof !532 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !945, !range !374, !noundef !405
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !955 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !956
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !957
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !464
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 8
  store i8 %3, ptr %12, align 8, !tbaa !958
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !532 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !678
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !532 {
  %3 = load ptr, ptr %0, align 8, !tbaa !943
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !911

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !372
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(41) %3) #14
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !943
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %4 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %5 = alloca i16, align 2
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %9 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %10 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %11 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %12) #13
  %13 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 -1, ptr %5, align 2, !tbaa !391
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(40) %13) #13
          to label %14 unwind label %28

14:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %15 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %13) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %12) #13
          to label %16 unwind label %30

16:                                               ; preds = %14
  %17 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %19 = load ptr, ptr %18, align 8, !tbaa !802
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !372
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(40) %17) #13
          to label %26 unwind label %32

26:                                               ; preds = %21
  br i1 %25, label %34, label %27

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %15) #13
          to label %34 unwind label %32

28:                                               ; preds = %3
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br label %143

30:                                               ; preds = %14
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %141

32:                                               ; preds = %50, %27, %21
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %139

34:                                               ; preds = %27, %26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(32) %7) #13
          to label %36 unwind label %44

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #11
  %37 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #13
  %38 = load ptr, ptr %7, align 8, !tbaa !922
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 4, ptr noundef %37, ptr noundef null, ptr noundef %2, ptr noundef %38, ptr noundef nonnull %35) #13
  %39 = load ptr, ptr %18, align 8, !tbaa !802
  %40 = load ptr, ptr %39, align 8, !tbaa !372
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull %8) #13
          to label %51 unwind label %46

44:                                               ; preds = %34
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %36
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  br label %139

50:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %15) #13
          to label %53 unwind label %32

51:                                               ; preds = %36
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  %52 = icmp eq ptr %43, null
  br i1 %52, label %53, label %137

53:                                               ; preds = %50, %51
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %55 = load i8, ptr %54, align 1, !tbaa !924, !range !374, !noundef !405
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %137

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %58, ptr noundef nonnull align 8 dereferenceable(32) %9) #13
          to label %59 unwind label %86

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #11
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %61 = load ptr, ptr %60, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %61) #13
          to label %62 unwind label %88

62:                                               ; preds = %59
  %63 = load ptr, ptr %9, align 8, !tbaa !922
  %64 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #13
  %65 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %63, ptr noundef %64, ptr noundef nonnull align 8 dereferenceable(81) %10) #13
          to label %66 unwind label %90

66:                                               ; preds = %62
  br i1 %65, label %67, label %70

67:                                               ; preds = %66
  %68 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %10) #13
          to label %69 unwind label %90

69:                                               ; preds = %67
  br i1 %68, label %70, label %107

70:                                               ; preds = %69, %66
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %72 = load i8, ptr %71, align 8, !tbaa !925, !range !374, !noundef !405
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %12) #13
          to label %75 unwind label %92

75:                                               ; preds = %74
  %76 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  %77 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #13
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %77, ptr noundef nonnull align 8 dereferenceable(40) %76) #13
          to label %78 unwind label %94

78:                                               ; preds = %75
  %79 = load ptr, ptr %60, align 8, !tbaa !393
  %80 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %79) #13
          to label %81 unwind label %94

81:                                               ; preds = %78
  %82 = load ptr, ptr %9, align 8, !tbaa !922
  %83 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %76) #13
  %84 = load ptr, ptr %60, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %80, ptr noundef %82, ptr noundef %83, ptr noundef %84) #13
          to label %85 unwind label %96

85:                                               ; preds = %81
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %129

86:                                               ; preds = %57
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %135

88:                                               ; preds = %59
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %133

90:                                               ; preds = %117, %122, %111, %67, %62
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %131

92:                                               ; preds = %74
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %100

94:                                               ; preds = %78, %75
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %81
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #14
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #14
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %131

102:                                              ; preds = %70
  %103 = call ptr @__cxa_allocate_exception(i64 48) #11
  %104 = load ptr, ptr %60, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull @.str.4, i32 noundef 1923, i32 noundef 99, ptr noundef %104) #13
          to label %117 unwind label %105

105:                                              ; preds = %102
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %103) #11
  br label %131

107:                                              ; preds = %69
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %109 = load i8, ptr %108, align 8, !tbaa !925, !range !374, !noundef !405
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %10) #13
          to label %113 unwind label %90

113:                                              ; preds = %111
  br i1 %112, label %114, label %122

114:                                              ; preds = %113
  %115 = call ptr @__cxa_allocate_exception(i64 48) #11
  %116 = load ptr, ptr %60, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %115, ptr noundef nonnull @.str.4, i32 noundef 1928, i32 noundef 99, ptr noundef %116) #13
          to label %117 unwind label %120

117:                                              ; preds = %114, %102
  %118 = phi ptr [ %103, %102 ], [ %115, %114 ]
  invoke void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %119 unwind label %90

119:                                              ; preds = %117
  unreachable

120:                                              ; preds = %114
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %115) #11
  br label %131

122:                                              ; preds = %113, %107
  %123 = load ptr, ptr %60, align 8, !tbaa !393
  %124 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %123) #13
          to label %125 unwind label %90

125:                                              ; preds = %122
  %126 = load ptr, ptr %60, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %124, ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %126) #13
          to label %129 unwind label %127

127:                                              ; preds = %125
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %124, ptr noundef %123) #14
  br label %131

129:                                              ; preds = %125, %85
  %130 = phi ptr [ %80, %85 ], [ %124, %125 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  br label %137

131:                                              ; preds = %127, %120, %105, %100, %90
  %132 = phi { ptr, i32 } [ %91, %90 ], [ %106, %105 ], [ %101, %100 ], [ %121, %120 ], [ %128, %127 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #14
  br label %133

133:                                              ; preds = %131, %88
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #11
  br label %135

135:                                              ; preds = %133, %86
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  br label %139

137:                                              ; preds = %51, %129, %53
  %138 = phi ptr [ null, %53 ], [ %43, %51 ], [ %130, %129 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret ptr %138

139:                                              ; preds = %135, %48, %32
  %140 = phi { ptr, i32 } [ %136, %135 ], [ %49, %48 ], [ %33, %32 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  br label %141

141:                                              ; preds = %139, %30
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %143

143:                                              ; preds = %141, %28
  %144 = phi { ptr, i32 } [ %142, %141 ], [ %29, %28 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  resume { ptr, i32 } %144
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %4 = alloca %"class.xercesc_2_7::XSDDOMParser", align 8
  %5 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !813
  %8 = load ptr, ptr %7, align 8, !tbaa !372
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(186) %7) #13
  %11 = load ptr, ptr %6, align 8, !tbaa !813
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !796
  tail call void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %11, ptr noundef %13) #13
  %14 = load ptr, ptr %6, align 8, !tbaa !813
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %16 = load i8, ptr %15, align 1, !tbaa !797, !range !374, !noundef !405
  %17 = icmp ne i8 %16, 0
  tail call void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %14, i1 noundef zeroext %17) #13
  %18 = load ptr, ptr %6, align 8, !tbaa !813
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !401
  tail call void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %18, ptr noundef %20) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %22 = load i8, ptr %21, align 1, !tbaa !795, !range !374, !noundef !405
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %26 = load ptr, ptr %25, align 8, !tbaa !376
  %27 = load ptr, ptr %26, align 8, !tbaa !372
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(40) %26) #13
  br label %30

30:                                               ; preds = %24, %3
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %32 = load ptr, ptr %31, align 8, !tbaa !376
  %33 = load ptr, ptr %32, align 8, !tbaa !372
  %34 = getelementptr inbounds ptr, ptr %33, i64 13
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(40) %32) #13
  br i1 %36, label %53, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr %21, align 1, !tbaa !795, !range !374, !noundef !405
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !range !374
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %39, i1 true, i1 %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %47 = load ptr, ptr %46, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str.4, i32 noundef 1954, i32 noundef 158, ptr noundef %47) #13
          to label %48 unwind label %49

48:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

49:                                               ; preds = %44
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %45) #11
  br label %179

51:                                               ; preds = %37
  %52 = load ptr, ptr %6, align 8, !tbaa !813
  store ptr %52, ptr %31, align 8, !tbaa !376
  br label %53

53:                                               ; preds = %51, %30
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #11
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %55 = load ptr, ptr %54, align 8, !tbaa !393
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef null, ptr noundef %55, ptr noundef null) #13
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef 0) #13
          to label %56 unwind label %82

56:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %4, i1 noundef zeroext true) #13
          to label %57 unwind label %82

57:                                               ; preds = %56
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %59 = load ptr, ptr %58, align 8, !tbaa !802
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %59) #13
          to label %60 unwind label %82

60:                                               ; preds = %57
  %61 = load ptr, ptr %12, align 8, !tbaa !796
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %61) #13
          to label %62 unwind label %82

62:                                               ; preds = %60
  %63 = load ptr, ptr %1, align 8, !tbaa !372
  %64 = getelementptr inbounds ptr, ptr %63, i64 6
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef zeroext i1 %65(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %67 unwind label %84

67:                                               ; preds = %62
  %68 = load ptr, ptr %1, align 8, !tbaa !372
  %69 = getelementptr inbounds ptr, ptr %68, i64 10
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false) #13
          to label %71 unwind label %84

71:                                               ; preds = %67
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %72 unwind label %84

72:                                               ; preds = %71
  %73 = load ptr, ptr %1, align 8, !tbaa !372
  %74 = getelementptr inbounds ptr, ptr %73, i64 10
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %66) #13
          to label %76 unwind label %84

76:                                               ; preds = %72
  %77 = call noundef zeroext i1 @_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv(ptr noundef nonnull align 8 dereferenceable(368) %4) #13
  %78 = load i8, ptr %15, align 1, !range !374
  %79 = icmp ne i8 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297) #13
          to label %86 unwind label %84

82:                                               ; preds = %60, %57, %56, %53
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %177

84:                                               ; preds = %81, %72, %71, %67, %62
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %177

86:                                               ; preds = %81, %76
  %87 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %4) #13
          to label %88 unwind label %147

88:                                               ; preds = %86
  %89 = icmp eq ptr %87, null
  br i1 %89, label %175, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %87, align 8, !tbaa !372
  %92 = getelementptr inbounds ptr, ptr %91, i64 13
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(32) %87) #13
          to label %95 unwind label %149

95:                                               ; preds = %90
  %96 = icmp eq ptr %94, null
  br i1 %96, label %175, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %99 = load ptr, ptr %98, align 8, !tbaa !793
  %100 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %99) #13
          to label %101 unwind label %151

101:                                              ; preds = %97
  %102 = load ptr, ptr %98, align 8, !tbaa !793
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %100, ptr noundef %102) #13
          to label %103 unwind label %153

103:                                              ; preds = %101
  %104 = load ptr, ptr %100, align 8, !tbaa !372
  %105 = getelementptr inbounds ptr, ptr %104, i64 22
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(160) %100) #13
          to label %108 unwind label %155

108:                                              ; preds = %103
  %109 = load ptr, ptr %107, align 8, !tbaa !372
  %110 = getelementptr inbounds ptr, ptr %109, i64 13
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr noundef nonnull align 8 dereferenceable(16) %107, i32 noundef 3) #13
          to label %112 unwind label %155

112:                                              ; preds = %108
  %113 = load ptr, ptr %1, align 8, !tbaa !372
  %114 = getelementptr inbounds ptr, ptr %113, i64 5
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %117 unwind label %155

117:                                              ; preds = %112
  %118 = load ptr, ptr %107, align 8, !tbaa !372
  %119 = getelementptr inbounds ptr, ptr %118, i64 15
  %120 = load ptr, ptr %119, align 8
  invoke void %120(ptr noundef nonnull align 8 dereferenceable(16) %107, ptr noundef %116) #13
          to label %121 unwind label %155

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %5) #11
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %123 = load ptr, ptr %122, align 8, !tbaa !403
  %124 = load ptr, ptr %19, align 8, !tbaa !401
  %125 = load ptr, ptr %1, align 8, !tbaa !372
  %126 = getelementptr inbounds ptr, ptr %125, i64 5
  %127 = load ptr, ptr %126, align 8
  %128 = invoke noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %129 unwind label %157

129:                                              ; preds = %121
  %130 = load ptr, ptr %58, align 8, !tbaa !802
  %131 = load ptr, ptr %12, align 8, !tbaa !796
  %132 = load ptr, ptr %54, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef nonnull %94, ptr noundef %123, ptr noundef nonnull %100, ptr noundef %124, ptr noundef nonnull %0, ptr noundef %128, ptr noundef %130, ptr noundef %131, ptr noundef %132) #13
          to label %133 unwind label %157

133:                                              ; preds = %129
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %135 = load i8, ptr %134, align 8, !tbaa !404, !range !374, !noundef !405
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %31, align 8, !tbaa !376
  %139 = load ptr, ptr %138, align 8, !tbaa !372
  %140 = getelementptr inbounds ptr, ptr %139, i64 11
  %141 = load ptr, ptr %140, align 8
  invoke void %141(ptr noundef nonnull align 8 dereferenceable(40) %138, ptr noundef nonnull %100) #13
          to label %142 unwind label %159

142:                                              ; preds = %137
  %143 = load ptr, ptr %31, align 8, !tbaa !376
  %144 = load ptr, ptr %143, align 8, !tbaa !372
  %145 = getelementptr inbounds ptr, ptr %144, i64 4
  %146 = load ptr, ptr %145, align 8
  invoke void %146(ptr noundef nonnull align 8 dereferenceable(40) %143, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %161 unwind label %159

147:                                              ; preds = %86
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %177

149:                                              ; preds = %90
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %177

151:                                              ; preds = %97
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %177

153:                                              ; preds = %101
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %99) #14
  br label %177

155:                                              ; preds = %117, %112, %108, %103
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %177

157:                                              ; preds = %129, %121
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %172

159:                                              ; preds = %167, %162, %142, %137
  %160 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #14
  br label %172

161:                                              ; preds = %142, %133
  br i1 %2, label %162, label %164

162:                                              ; preds = %161
  %163 = load ptr, ptr %19, align 8, !tbaa !401
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %163) #13
          to label %164 unwind label %159

164:                                              ; preds = %162, %161
  %165 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %19, align 8, !tbaa !401
  %169 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %168) #13
          to label %170 unwind label %159

170:                                              ; preds = %167
  %171 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  store ptr %169, ptr %171, align 8, !tbaa !427
  br label %174

172:                                              ; preds = %159, %157
  %173 = phi { ptr, i32 } [ %160, %159 ], [ %158, %157 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #11
  br label %177

174:                                              ; preds = %164, %170
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #14
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #11
  br label %175

175:                                              ; preds = %95, %88, %174
  %176 = phi ptr [ %100, %174 ], [ null, %88 ], [ null, %95 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #11
  ret ptr %176

177:                                              ; preds = %84, %149, %155, %172, %153, %151, %147, %82
  %178 = phi { ptr, i32 } [ %83, %82 ], [ %85, %84 ], [ %148, %147 ], [ %150, %149 ], [ %154, %153 ], [ %152, %151 ], [ %173, %172 ], [ %156, %155 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #11
  br label %179

179:                                              ; preds = %177, %49
  %180 = phi { ptr, i32 } [ %178, %177 ], [ %50, %49 ]
  resume { ptr, i32 } %180
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !480 {
  %4 = alloca i16, align 2
  %5 = alloca [9 x i16], align 16
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 2 dereferenceable(2) %4) #13
  br i1 %10, label %11, label %98, !prof !442

11:                                               ; preds = %3
  %12 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
  br label %13

13:                                               ; preds = %96, %11
  %14 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
          to label %15 unwind label %35

15:                                               ; preds = %13
  %16 = zext i16 %14 to i32
  %17 = load i16, ptr %4, align 2, !tbaa !391
  %18 = icmp eq i16 %14, %17
  br i1 %18, label %77, label %19, !prof !959

19:                                               ; preds = %15
  %20 = icmp eq i16 %14, 38
  br i1 %20, label %57, label %21, !prof !960

21:                                               ; preds = %19
  %22 = icmp ult i16 %14, -10240
  br i1 %22, label %25, label %23, !prof !961

23:                                               ; preds = %21
  %24 = icmp ugt i16 %14, -8193
  br i1 %24, label %25, label %47

25:                                               ; preds = %23, %21
  %26 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
  %27 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %26, i16 noundef zeroext %14) #13
  br i1 %27, label %86, label %28, !prof !961

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %30 = icmp eq i16 %14, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = call ptr @__cxa_allocate_exception(i64 48) #11
  %33 = load ptr, ptr %29, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str.4, i32 noundef 2074, i32 noundef 47, ptr noundef %33) #13
          to label %34 unwind label %39

34:                                               ; preds = %31
  invoke void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %100 unwind label %37

35:                                               ; preds = %13, %49, %50, %55, %56, %77, %81, %86
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %88

37:                                               ; preds = %34, %85
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %88

39:                                               ; preds = %31
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %32) #11
  br label %88

41:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #11
  %42 = load ptr, ptr %29, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %16, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 16, ptr noundef %42) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #11
  br label %86

45:                                               ; preds = %43, %41
  %46 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #11
  br label %88

47:                                               ; preds = %23
  %48 = icmp ult i16 %14, -9216
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %14) #13
          to label %50 unwind label %35

50:                                               ; preds = %49
  %51 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
          to label %52 unwind label %35

52:                                               ; preds = %50
  %53 = add i16 %51, 8192
  %54 = icmp ult i16 %53, -1024
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %86 unwind label %35

56:                                               ; preds = %47
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282) #13
          to label %86 unwind label %35

57:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  %58 = load ptr, ptr %0, align 8, !tbaa !372
  %59 = getelementptr inbounds ptr, ptr %58, i64 13
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(1) %6) #13
          to label %62 unwind label %68

62:                                               ; preds = %57
  %63 = icmp eq i32 %61, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %62
  %65 = load i8, ptr %6, align 1, !tbaa !384, !range !374, !noundef !405
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext -1) #13
          to label %70 unwind label %68

68:                                               ; preds = %75, %70, %67, %57
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %88

70:                                               ; preds = %67, %64
  %71 = load i16, ptr %7, align 2, !tbaa !391
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %71) #13
          to label %72 unwind label %68

72:                                               ; preds = %70
  %73 = load i16, ptr %8, align 2, !tbaa !391
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %73) #13
          to label %76 unwind label %68

76:                                               ; preds = %72, %75, %62
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %96

77:                                               ; preds = %15
  %78 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
          to label %79 unwind label %35

79:                                               ; preds = %77
  %80 = icmp eq i32 %12, %78
  br i1 %80, label %98, label %81, !prof !442

81:                                               ; preds = %79
  %82 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
          to label %83 unwind label %35

83:                                               ; preds = %81
  %84 = icmp ugt i32 %12, %82
  br i1 %84, label %85, label %86

85:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #13
          to label %98 unwind label %37

86:                                               ; preds = %83, %55, %52, %56, %25, %44
  %87 = phi i16 [ %14, %25 ], [ %14, %44 ], [ %51, %55 ], [ %51, %52 ], [ %14, %56 ], [ %14, %83 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %87) #13
          to label %96 unwind label %35

88:                                               ; preds = %35, %37, %68, %45, %39
  %89 = phi { ptr, i32 } [ %40, %39 ], [ %46, %45 ], [ %69, %68 ], [ %36, %35 ], [ %38, %37 ]
  %90 = extractvalue { ptr, i32 } %89, 1
  %91 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = extractvalue { ptr, i32 } %89, 0
  %95 = call ptr @__cxa_begin_catch(ptr %94) #11
  call void @__cxa_end_catch()
  br label %96

96:                                               ; preds = %93, %86, %76
  br label %13, !llvm.loop !962

97:                                               ; preds = %88
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  resume { ptr, i32 } %89

98:                                               ; preds = %85, %79, %3
  %99 = phi i1 [ false, %3 ], [ %80, %79 ], [ %80, %85 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i1 %99

100:                                              ; preds = %34
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !963 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !780
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #13
  ret i32 %4
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !964 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !782
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !788
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #5 comdat align 2 !prof !963 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !965
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !678
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !372
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !966 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca [9 x i16], align 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11, !prof !967

11:                                               ; preds = %4
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi i1 [ %13, %11 ], [ true, %4 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %17 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  br i1 %17, label %18, label %205, !prof !967

18:                                               ; preds = %14
  %19 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  br i1 %10, label %23, label %20, !prof !967

20:                                               ; preds = %18
  %21 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %20
  %24 = phi i1 [ %22, %20 ], [ true, %18 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 0, ptr %7, align 2, !tbaa !391
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %28

28:                                               ; preds = %125, %23
  %29 = phi i32 [ 1, %23 ], [ %126, %125 ]
  %30 = phi i8 [ 0, %23 ], [ %127, %125 ]
  %31 = phi i8 [ 0, %23 ], [ %128, %125 ]
  %32 = and i8 %30, 1
  %33 = icmp eq i8 %32, 0
  br label %34

34:                                               ; preds = %193, %28
  %35 = phi i32 [ %29, %28 ], [ 0, %193 ]
  %36 = phi i8 [ %31, %28 ], [ %130, %193 ]
  br label %37

37:                                               ; preds = %34, %82
  %38 = phi i8 [ 0, %82 ], [ %36, %34 ]
  %39 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
          to label %40 unwind label %47

40:                                               ; preds = %37
  store i16 %39, ptr %6, align 2, !tbaa !391
  %41 = icmp eq i16 %39, 0
  br i1 %41, label %42, label %60, !prof !968

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %44 = call ptr @__cxa_allocate_exception(i64 48) #11
  %45 = load ptr, ptr %43, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull @.str.4, i32 noundef 2217, i32 noundef 47, ptr noundef %45) #13
          to label %46 unwind label %58

46:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %44, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %207 unwind label %56

47:                                               ; preds = %77, %67, %63, %37
  %48 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %115

49:                                               ; preds = %91, %97, %101, %136, %188, %191
  %50 = phi i32 [ %35, %101 ], [ %35, %97 ], [ %35, %91 ], [ %35, %136 ], [ 0, %188 ], [ 0, %191 ]
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %115

52:                                               ; preds = %150, %166, %194, %201
  %53 = phi i32 [ 0, %166 ], [ %29, %150 ], [ %195, %194 ], [ %195, %201 ]
  %54 = phi i8 [ %30, %166 ], [ %30, %150 ], [ %196, %194 ], [ %196, %201 ]
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %115

56:                                               ; preds = %46, %71
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %115

58:                                               ; preds = %42
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %44) #11
  br label %115

60:                                               ; preds = %40
  %61 = load i16, ptr %5, align 2, !tbaa !391
  %62 = icmp eq i16 %39, %61
  br i1 %62, label %63, label %74, !prof !969

63:                                               ; preds = %60
  %64 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
          to label %65 unwind label %47

65:                                               ; preds = %63
  %66 = icmp eq i32 %19, %64
  br i1 %66, label %203, label %67, !prof !967

67:                                               ; preds = %65
  %68 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
          to label %69 unwind label %47

69:                                               ; preds = %67
  %70 = icmp ugt i32 %19, %68
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #13
          to label %203 unwind label %56

72:                                               ; preds = %69
  %73 = load i16, ptr %6, align 2, !tbaa !391
  br label %74

74:                                               ; preds = %72, %60
  %75 = phi i16 [ %73, %72 ], [ %39, %60 ]
  store i8 0, ptr %8, align 1, !tbaa !384
  %76 = icmp eq i16 %75, 38
  br i1 %76, label %77, label %84, !prof !970

77:                                               ; preds = %74
  %78 = load ptr, ptr %0, align 8, !tbaa !372
  %79 = getelementptr inbounds ptr, ptr %78, i64 13
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef i32 %80(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #13
          to label %82 unwind label %47

82:                                               ; preds = %77
  %83 = icmp eq i32 %81, 1
  br i1 %83, label %129, label %37, !llvm.loop !971

84:                                               ; preds = %74
  %85 = icmp ugt i16 %75, -10241
  br i1 %85, label %86, label %98, !prof !970

86:                                               ; preds = %84
  %87 = icmp ult i16 %75, -9216
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = and i8 %38, 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %129, label %91

91:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %129 unwind label %49

92:                                               ; preds = %86
  %93 = icmp ult i16 %75, -8192
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = and i8 %38, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %94
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282) #13
          to label %129 unwind label %49

98:                                               ; preds = %84, %92
  %99 = and i8 %38, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101, !prof !972

101:                                              ; preds = %98
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %102 unwind label %49

102:                                              ; preds = %101, %98
  %103 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %104 = load i16, ptr %6, align 2, !tbaa !391
  %105 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %103, i16 noundef zeroext %104) #13
  br i1 %105, label %129, label %106, !prof !972

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %9) #11
  %108 = load i16, ptr %6, align 2, !tbaa !391
  %109 = zext i16 %108 to i32
  %110 = load ptr, ptr %107, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %109, ptr noundef nonnull %9, i32 noundef 8, i32 noundef 16, ptr noundef %110) #13
          to label %111 unwind label %113

111:                                              ; preds = %106
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %2, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #13
          to label %112 unwind label %113

112:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #11
  br label %129

113:                                              ; preds = %111, %106
  %114 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #11
  br label %115

115:                                              ; preds = %56, %49, %52, %47, %113, %58
  %116 = phi i32 [ %35, %113 ], [ %35, %58 ], [ %35, %56 ], [ %35, %47 ], [ %50, %49 ], [ %53, %52 ]
  %117 = phi i8 [ %30, %113 ], [ %30, %58 ], [ %30, %56 ], [ %30, %47 ], [ %30, %49 ], [ %54, %52 ]
  %118 = phi { ptr, i32 } [ %114, %113 ], [ %59, %58 ], [ %57, %56 ], [ %48, %47 ], [ %51, %49 ], [ %55, %52 ]
  %119 = extractvalue { ptr, i32 } %118, 1
  %120 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %204

122:                                              ; preds = %115
  %123 = extractvalue { ptr, i32 } %118, 0
  %124 = call ptr @__cxa_begin_catch(ptr %123) #11
  store i8 0, ptr %8, align 1, !tbaa !384
  call void @__cxa_end_catch()
  br label %125

125:                                              ; preds = %122, %202, %198
  %126 = phi i32 [ %116, %122 ], [ %195, %202 ], [ %195, %198 ]
  %127 = phi i8 [ %117, %122 ], [ %196, %202 ], [ %196, %198 ]
  %128 = phi i8 [ 0, %122 ], [ %130, %202 ], [ %130, %198 ]
  br label %28, !llvm.loop !971

129:                                              ; preds = %82, %97, %94, %112, %102, %88, %91
  %130 = phi i8 [ %38, %91 ], [ 1, %88 ], [ 0, %102 ], [ 0, %112 ], [ 0, %94 ], [ 0, %97 ], [ %38, %82 ]
  %131 = load i8, ptr %8, align 1, !tbaa !384, !range !374, !noundef !405
  %132 = icmp eq i8 %131, 0
  %133 = load i16, ptr %6, align 2
  %134 = icmp eq i16 %133, 60
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %137, !prof !973

136:                                              ; preds = %129
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %137 unwind label %49

137:                                              ; preds = %136, %129
  br i1 %15, label %138, label %153, !prof !972

138:                                              ; preds = %137
  %139 = load i8, ptr %8, align 1, !tbaa !384, !range !374, !noundef !405
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %194, !prof !972

141:                                              ; preds = %138
  %142 = load i16, ptr %6, align 2
  switch i16 %142, label %194 [
    i16 13, label %143
    i16 10, label %143
    i16 9, label %143
  ]

143:                                              ; preds = %141, %141, %141
  %144 = load i8, ptr %25, align 2, !tbaa !452, !range !374, !noundef !405
  %145 = icmp eq i8 %144, 0
  %146 = load i8, ptr %26, align 8, !range !374
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  %149 = or i1 %148, %24
  br i1 %149, label %152, label %150

150:                                              ; preds = %143
  %151 = load ptr, ptr %27, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %151, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %152 unwind label %52

152:                                              ; preds = %143, %150
  store i16 32, ptr %6, align 2, !tbaa !391
  br label %194

153:                                              ; preds = %137
  %154 = icmp eq i32 %35, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %153
  %156 = load i8, ptr %8, align 1, !tbaa !384, !range !374, !noundef !405
  %157 = icmp ne i8 %156, 0
  %158 = load i16, ptr %6, align 2
  %159 = icmp ne i16 %158, 32
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %163 = load i16, ptr %6, align 2, !tbaa !391
  %164 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %162, i16 noundef zeroext %163) #13
  br i1 %164, label %193, label %165

165:                                              ; preds = %155, %161
  br i1 %33, label %194, label %166

166:                                              ; preds = %165
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext 32) #13
          to label %194 unwind label %52

167:                                              ; preds = %153
  %168 = load i16, ptr %6, align 2, !tbaa !391
  %169 = icmp eq i16 %168, 32
  br i1 %169, label %177, label %170

170:                                              ; preds = %167
  %171 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %172 = load i16, ptr %6, align 2, !tbaa !391
  %173 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %171, i16 noundef zeroext %172) #13
  %174 = load i8, ptr %8, align 1, !range !374
  %175 = icmp eq i8 %174, 0
  %176 = select i1 %173, i1 %175, i1 false
  br i1 %176, label %177, label %194

177:                                              ; preds = %170, %167
  %178 = load i8, ptr %25, align 2, !tbaa !452, !range !374, !noundef !405
  %179 = icmp eq i8 %178, 0
  %180 = load i8, ptr %26, align 8, !range !374
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %179, i1 true, i1 %181
  %183 = or i1 %182, %24
  br i1 %183, label %193, label %184

184:                                              ; preds = %177
  %185 = load i16, ptr %6, align 2
  %186 = icmp ne i16 %185, 32
  %187 = select i1 %33, i1 true, i1 %186
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
          to label %190 unwind label %49

190:                                              ; preds = %188
  br i1 %189, label %191, label %193

191:                                              ; preds = %190, %184
  %192 = load ptr, ptr %27, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %192, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %193 unwind label %49

193:                                              ; preds = %191, %190, %177, %161
  br label %34, !llvm.loop !971

194:                                              ; preds = %170, %165, %166, %141, %138, %152
  %195 = phi i32 [ %29, %138 ], [ %29, %152 ], [ %29, %141 ], [ 1, %166 ], [ 1, %165 ], [ 1, %170 ]
  %196 = phi i8 [ %30, %138 ], [ %30, %152 ], [ %30, %141 ], [ 1, %166 ], [ 1, %165 ], [ 1, %170 ]
  %197 = load i16, ptr %6, align 2, !tbaa !391
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %197) #13
          to label %198 unwind label %52

198:                                              ; preds = %194
  %199 = load i16, ptr %7, align 2, !tbaa !391
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %125, label %201, !prof !972

201:                                              ; preds = %198
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %199) #13
          to label %202 unwind label %52

202:                                              ; preds = %201
  store i16 0, ptr %7, align 2, !tbaa !391
  br label %125

203:                                              ; preds = %71, %65
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %205

204:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  resume { ptr, i32 } %118

205:                                              ; preds = %14, %203
  %206 = phi i1 [ %66, %203 ], [ false, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  ret i1 %206

207:                                              ; preds = %46
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %2 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !780
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %4, i16 noundef zeroext %2) #13
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca [9 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #13
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261) #13
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #13
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #13
  br i1 %8, label %9, label %198

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %10) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %11) #13
          to label %13 unwind label %34

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %15 = load ptr, ptr %14, align 8, !tbaa !357
  %16 = load ptr, ptr %15, align 8, !tbaa !372
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
          to label %20 unwind label %36

20:                                               ; preds = %13
  %21 = icmp eq i32 %19, 1
  br i1 %21, label %22, label %40

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %24 = load ptr, ptr %23, align 8, !tbaa !376
  %25 = invoke noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %24) #13
          to label %26 unwind label %38

26:                                               ; preds = %22
  %27 = icmp eq ptr %25, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %26
  %29 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %25) #13
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 2
  %32 = icmp eq i32 %29, 4
  %33 = select i1 %32, i32 1, i32 %31
  br label %46

34:                                               ; preds = %9
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %199

36:                                               ; preds = %40, %13
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %199

38:                                               ; preds = %22
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %199

40:                                               ; preds = %20
  %41 = load ptr, ptr %12, align 8, !tbaa !867
  %42 = load ptr, ptr %41, align 8, !tbaa !372
  %43 = getelementptr inbounds ptr, ptr %42, i64 7
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(33) %41) #13
          to label %46 unwind label %36

46:                                               ; preds = %28, %40, %26
  %47 = phi i32 [ 2, %26 ], [ %45, %40 ], [ %33, %28 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %50 = icmp eq i32 %47, 1
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %52 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  br label %54

54:                                               ; preds = %194, %46
  %55 = phi i8 [ 0, %46 ], [ %195, %194 ]
  %56 = phi i8 [ 0, %46 ], [ %196, %194 ]
  %57 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #13
          to label %58 unwind label %65

58:                                               ; preds = %54
  %59 = icmp eq i16 %57, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264) #13
          to label %61 unwind label %67

61:                                               ; preds = %60
  %62 = call ptr @__cxa_allocate_exception(i64 48) #11
  %63 = load ptr, ptr %53, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef nonnull @.str.4, i32 noundef 2442, i32 noundef 47, ptr noundef %63) #13
          to label %64 unwind label %69

64:                                               ; preds = %61
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %201 unwind label %67

65:                                               ; preds = %182, %54, %84, %94, %180, %194
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %199

67:                                               ; preds = %60, %64, %100, %160, %166
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %199

69:                                               ; preds = %61
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %62) #11
  br label %199

71:                                               ; preds = %58
  %72 = load i8, ptr %48, align 8, !tbaa !404, !range !374, !noundef !405
  %73 = icmp eq i8 %72, 0
  %74 = load i8, ptr %49, align 2, !range !374
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %91, label %77

77:                                               ; preds = %71
  %78 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #13
  %79 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %78, i16 noundef zeroext %57) #13
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load ptr, ptr %12, align 8, !tbaa !867
  %82 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %81) #13
  %83 = and i1 %50, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load ptr, ptr %51, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %85, i32 noundef 84) #13
          to label %86 unwind label %65

86:                                               ; preds = %84
  %87 = load i32, ptr %52, align 4, !tbaa !385
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  br label %91

91:                                               ; preds = %80, %86, %89, %77, %71
  %92 = zext i16 %57 to i32
  %93 = icmp eq i16 %57, 93
  br i1 %93, label %94, label %172

94:                                               ; preds = %91
  %95 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner13scanCDSectionEvE10CDataClose) #13
          to label %96 unwind label %65

96:                                               ; preds = %94
  br i1 %95, label %97, label %172

97:                                               ; preds = %96
  %98 = and i8 %55, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %101 unwind label %67

101:                                              ; preds = %100, %97
  %102 = load i32, ptr %52, align 4, !tbaa !385
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %106 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %107 = load ptr, ptr %51, align 8, !tbaa !376
  %108 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %107) #13
  %109 = icmp eq ptr %108, null
  br i1 %109, label %128, label %110

110:                                              ; preds = %104
  %111 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %108) #13
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %51, align 8, !tbaa !376
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %114, ptr noundef nonnull %108, ptr noundef %106, ptr noundef nonnull align 8 dereferenceable(40) %115) #13
          to label %116 unwind label %126

116:                                              ; preds = %113
  %117 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %115) #13
  %118 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %115) #13
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %120 = load i8, ptr %119, align 8, !tbaa !419, !range !374, !noundef !405
  %121 = icmp eq i8 %120, 0
  %122 = load i8, ptr %48, align 8, !range !374
  %123 = icmp eq i8 %122, 0
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_79XMLBufBid3setEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %117, i32 noundef 0) #13
          to label %128 unwind label %126

126:                                              ; preds = %153, %147, %141, %137, %125, %113
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %199

128:                                              ; preds = %104, %110, %125
  %129 = phi i32 [ %105, %104 ], [ %105, %110 ], [ %118, %125 ]
  %130 = phi ptr [ %106, %104 ], [ %106, %110 ], [ %117, %125 ]
  %131 = load i8, ptr %48, align 8, !tbaa !404
  br label %132

132:                                              ; preds = %128, %116
  %133 = phi i8 [ %131, %128 ], [ %122, %116 ]
  %134 = phi i32 [ %129, %128 ], [ %118, %116 ]
  %135 = phi ptr [ %130, %128 ], [ %117, %116 ]
  %136 = icmp eq i8 %133, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %51, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %138, ptr noundef %135) #13
          to label %139 unwind label %126

139:                                              ; preds = %137
  %140 = icmp eq i32 %47, 2
  br i1 %140, label %145, label %141

141:                                              ; preds = %139
  %142 = load ptr, ptr %51, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %142, i32 noundef 22) #13
          to label %143 unwind label %126

143:                                              ; preds = %141
  %144 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  br label %145

145:                                              ; preds = %139, %143, %132
  %146 = call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %146, label %147, label %162

147:                                              ; preds = %145
  %148 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !804
  %150 = invoke noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %149) #13
          to label %151 unwind label %126

151:                                              ; preds = %147
  %152 = icmp eq i32 %150, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %154, ptr noundef %135, i32 noundef %134) #13
          to label %162 unwind label %126

155:                                              ; preds = %101
  %156 = load i8, ptr %48, align 8, !tbaa !404, !range !374, !noundef !405
  %157 = icmp ne i8 %156, 0
  %158 = icmp ne i32 %47, 2
  %159 = and i1 %158, %157
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load ptr, ptr %51, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %161, i32 noundef 22) #13
          to label %162 unwind label %67

162:                                              ; preds = %145, %151, %153, %155, %160
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %164 = load ptr, ptr %163, align 8, !tbaa !801
  %165 = icmp eq ptr %164, null
  br i1 %165, label %197, label %166

166:                                              ; preds = %162
  %167 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %168 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %169 = load ptr, ptr %164, align 8, !tbaa !372
  %170 = getelementptr inbounds ptr, ptr %169, i64 2
  %171 = load ptr, ptr %170, align 8
  invoke void %171(ptr noundef nonnull align 8 dereferenceable(8) %164, ptr noundef %167, i32 noundef %168, i1 noundef zeroext true) #13
          to label %197 unwind label %67

172:                                              ; preds = %96, %91
  %173 = and i8 %56, 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %172
  %176 = and i16 %57, -1024
  %177 = and i8 %55, 1
  %178 = icmp eq i8 %177, 0
  switch i16 %176, label %184 [
    i16 -10240, label %179
    i16 -9216, label %181
  ]

179:                                              ; preds = %175
  br i1 %178, label %194, label %180

180:                                              ; preds = %179
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %194 unwind label %65

181:                                              ; preds = %175
  br i1 %178, label %182, label %194

182:                                              ; preds = %184, %181
  %183 = phi i32 [ 282, %181 ], [ 249, %184 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %183) #13
          to label %194 unwind label %65

184:                                              ; preds = %175
  br i1 %178, label %185, label %182

185:                                              ; preds = %184
  %186 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #13
  %187 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %186, i16 noundef zeroext %57) #13
  br i1 %187, label %194, label %188

188:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #11
  %189 = load ptr, ptr %53, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %92, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 16, ptr noundef %189) #13
          to label %190 unwind label %192

190:                                              ; preds = %188
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %191 unwind label %192

191:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #11
  br label %194

192:                                              ; preds = %190, %188
  %193 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #11
  br label %199

194:                                              ; preds = %182, %181, %185, %191, %179, %180, %172
  %195 = phi i8 [ %55, %172 ], [ %55, %180 ], [ 1, %179 ], [ 0, %191 ], [ 0, %185 ], [ 0, %181 ], [ 0, %182 ]
  %196 = phi i8 [ %56, %172 ], [ %56, %180 ], [ %56, %179 ], [ 1, %191 ], [ %56, %185 ], [ %56, %181 ], [ %56, %182 ]
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext %57) #13
          to label %54 unwind label %65

197:                                              ; preds = %166, %162
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %198

198:                                              ; preds = %6, %197
  ret void

199:                                              ; preds = %65, %67, %36, %38, %192, %126, %69, %34
  %200 = phi { ptr, i32 } [ %35, %34 ], [ %39, %38 ], [ %37, %36 ], [ %127, %126 ], [ %193, %192 ], [ %70, %69 ], [ %66, %65 ], [ %68, %67 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %200

201:                                              ; preds = %64
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 !prof !974 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !975, !range !374, !noundef !405
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !976 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !780
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !499 {
  %2 = load ptr, ptr %0, align 8, !tbaa !477
  %3 = load i32, ptr %2, align 8, !tbaa !568
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !635 {
  %2 = load ptr, ptr %0, align 8, !tbaa !477
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !571
  %5 = load i32, ptr %2, align 8, !tbaa !568
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !391
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid3setEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %4 = load ptr, ptr %0, align 8, !tbaa !477
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = load ptr, ptr %0, align 8, !tbaa !477
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #13
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !862 {
  %3 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %8 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i1 noundef zeroext true) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 0, ptr %5, align 2, !tbaa !391
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !tbaa !384
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  br label %11

11:                                               ; preds = %131, %2
  %12 = phi i8 [ 0, %2 ], [ %132, %131 ]
  %13 = phi i32 [ 0, %2 ], [ %133, %131 ]
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %11, %59
  %16 = phi i8 [ 0, %59 ], [ %12, %11 ]
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %14, i1 %18, i1 false
  br i1 %19, label %20, label %28, !prof !977

20:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
          to label %28 unwind label %21

21:                                               ; preds = %36, %28, %20
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %87

23:                                               ; preds = %129, %123, %120, %73, %71, %67
  %24 = phi i32 [ %125, %129 ], [ %125, %123 ], [ 2, %120 ], [ %13, %67 ], [ %13, %71 ], [ %13, %73 ]
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %87

26:                                               ; preds = %32
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %87

28:                                               ; preds = %20, %15
  %29 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 60, ptr noundef nonnull align 2 dereferenceable(2) %4) #13
          to label %30 unwind label %21

30:                                               ; preds = %28
  br i1 %29, label %33, label %31, !prof !978

31:                                               ; preds = %30
  br i1 %18, label %139, label %32, !prof !979

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %139 unwind label %26

33:                                               ; preds = %30
  store i8 0, ptr %6, align 1, !tbaa !384
  %34 = load i16, ptr %4, align 2, !tbaa !391
  %35 = icmp eq i16 %34, 38
  br i1 %35, label %36, label %62, !prof !980

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 8, !tbaa !372
  %38 = getelementptr inbounds ptr, ptr %37, i64 16
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
          to label %40 unwind label %21

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %9, i1 noundef zeroext false) #13
          to label %41 unwind label %48

41:                                               ; preds = %40
  %42 = load ptr, ptr %0, align 8, !tbaa !372
  %43 = getelementptr inbounds ptr, ptr %42, i64 13
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #13
          to label %46 unwind label %50

46:                                               ; preds = %41
  %47 = icmp eq i32 %45, 1
  br i1 %47, label %52, label %59, !llvm.loop !981

48:                                               ; preds = %40
  %49 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %60

50:                                               ; preds = %41
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  br label %60

52:                                               ; preds = %46
  %53 = load i8, ptr %6, align 1, !tbaa !384, !range !374, !noundef !405
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %10) #13
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  call void @_ZN11xercesc_2_79ElemStack19setReferenceEscapedEv(ptr noundef nonnull align 8 dereferenceable(104) %10) #13
  br label %58

58:                                               ; preds = %52, %55, %57
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %108

59:                                               ; preds = %46
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %15

60:                                               ; preds = %50, %48
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %87

62:                                               ; preds = %33
  %63 = icmp ugt i16 %34, -10241
  br i1 %63, label %64, label %72, !prof !980

64:                                               ; preds = %62
  %65 = icmp ult i16 %34, -9216
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  br i1 %18, label %108, label %67

67:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %108 unwind label %23

68:                                               ; preds = %64
  %69 = icmp ult i16 %34, -8192
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  br i1 %18, label %71, label %108

71:                                               ; preds = %70
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282) #13
          to label %108 unwind label %23

72:                                               ; preds = %62, %68
  br i1 %18, label %74, label %73, !prof !982

73:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #13
          to label %74 unwind label %23

74:                                               ; preds = %73, %72
  %75 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
  %76 = load i16, ptr %4, align 2, !tbaa !391
  %77 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %75, i16 noundef zeroext %76) #13
  br i1 %77, label %108, label %78, !prof !982

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %8) #11
  %80 = load i16, ptr %4, align 2, !tbaa !391
  %81 = zext i16 %80 to i32
  %82 = load ptr, ptr %79, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %81, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %82) #13
          to label %83 unwind label %85

83:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %84 unwind label %85

84:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #11
  br label %108

85:                                               ; preds = %83, %78
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #11
  br label %87

87:                                               ; preds = %26, %23, %21, %85, %60
  %88 = phi { ptr, i32 } [ %61, %60 ], [ %86, %85 ], [ %27, %26 ], [ %22, %21 ], [ %25, %23 ]
  %89 = phi i32 [ %13, %60 ], [ %13, %85 ], [ %13, %26 ], [ %13, %21 ], [ %24, %23 ]
  %90 = extractvalue { ptr, i32 } %88, 1
  %91 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %208

93:                                               ; preds = %87
  %94 = extractvalue { ptr, i32 } %88, 0
  %95 = call ptr @__cxa_begin_catch(ptr %94) #11
  %96 = load ptr, ptr %0, align 8, !tbaa !372
  %97 = getelementptr inbounds ptr, ptr %96, i64 16
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
          to label %99 unwind label %134

99:                                               ; preds = %93
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %101 = load ptr, ptr %100, align 8, !tbaa !801
  %102 = icmp eq ptr %101, null
  br i1 %102, label %136, label %103

103:                                              ; preds = %99
  %104 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %95) #13
  %105 = load ptr, ptr %101, align 8, !tbaa !372
  %106 = getelementptr inbounds ptr, ptr %105, i64 7
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull align 8 dereferenceable(72) %104) #13
          to label %136 unwind label %134

108:                                              ; preds = %58, %71, %70, %84, %74, %66, %67
  %109 = phi i8 [ %16, %67 ], [ 1, %66 ], [ 0, %74 ], [ 0, %84 ], [ 0, %70 ], [ 0, %71 ], [ %16, %58 ]
  %110 = load i8, ptr %6, align 1, !tbaa !384, !range !374, !noundef !405
  %111 = icmp eq i8 %110, 0
  %112 = load i16, ptr %4, align 2, !tbaa !391
  br i1 %111, label %113, label %123, !prof !982

113:                                              ; preds = %108
  switch i16 %112, label %123 [
    i16 93, label %114
    i16 62, label %118
  ], !prof !983

114:                                              ; preds = %113
  br i1 %14, label %123, label %115

115:                                              ; preds = %114
  %116 = icmp eq i32 %13, 1
  %117 = select i1 %116, i32 2, i32 %13
  br label %123

118:                                              ; preds = %113
  %119 = icmp eq i32 %13, 2
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 262) #13
          to label %121 unwind label %23

121:                                              ; preds = %120
  %122 = load i16, ptr %4, align 2, !tbaa !391
  br label %123

123:                                              ; preds = %121, %108, %113, %118, %114, %115
  %124 = phi i16 [ 93, %115 ], [ 93, %114 ], [ %122, %121 ], [ 62, %118 ], [ %112, %113 ], [ %112, %108 ]
  %125 = phi i32 [ %117, %115 ], [ 1, %114 ], [ 0, %121 ], [ 0, %118 ], [ 0, %113 ], [ 0, %108 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %124) #13
          to label %126 unwind label %23

126:                                              ; preds = %123
  %127 = load i16, ptr %5, align 2, !tbaa !391
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %131, label %129, !prof !982

129:                                              ; preds = %126
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %127) #13
          to label %130 unwind label %23

130:                                              ; preds = %129
  store i16 0, ptr %5, align 2, !tbaa !391
  br label %131

131:                                              ; preds = %130, %126, %136
  %132 = phi i8 [ %109, %130 ], [ %109, %126 ], [ 0, %136 ]
  %133 = phi i32 [ %125, %130 ], [ %125, %126 ], [ %89, %136 ]
  br label %11, !llvm.loop !984

134:                                              ; preds = %103, %93
  %135 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %208 unwind label %210

136:                                              ; preds = %103, %99
  invoke void @__cxa_end_catch()
          to label %131 unwind label %137

137:                                              ; preds = %136
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %208

139:                                              ; preds = %31, %32
  %140 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %141 = load i8, ptr %140, align 8, !tbaa !404, !range !374, !noundef !405
  %142 = icmp eq i8 %141, 0
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %144 = load i8, ptr %143, align 2, !range !374
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %142, i1 true, i1 %145
  br i1 %146, label %201, label %147, !prof !985

147:                                              ; preds = %139
  %148 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %149 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %150 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
  %151 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %150, ptr noundef %148, i32 noundef %149) #13
          to label %152 unwind label %176

152:                                              ; preds = %147
  br i1 %151, label %153, label %201, !prof !986

153:                                              ; preds = %152
  %154 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %10) #13
          to label %155 unwind label %178

155:                                              ; preds = %153
  %156 = load ptr, ptr %154, align 8, !tbaa !867
  %157 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %156) #13
  br i1 %157, label %158, label %201, !prof !987

158:                                              ; preds = %155
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %160 = load ptr, ptr %159, align 8, !tbaa !357
  %161 = load ptr, ptr %160, align 8, !tbaa !372
  %162 = getelementptr inbounds ptr, ptr %161, i64 5
  %163 = load ptr, ptr %162, align 8
  %164 = invoke noundef i32 %163(ptr noundef nonnull align 8 dereferenceable(8) %160) #13
          to label %165 unwind label %180

165:                                              ; preds = %158
  %166 = icmp eq i32 %164, 1
  br i1 %166, label %167, label %184

167:                                              ; preds = %165
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %169 = load ptr, ptr %168, align 8, !tbaa !376
  %170 = invoke noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %169) #13
          to label %171 unwind label %182

171:                                              ; preds = %167
  %172 = icmp eq ptr %170, null
  br i1 %172, label %201, label %173

173:                                              ; preds = %171
  %174 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %170) #13
  %175 = icmp eq i32 %174, 4
  br i1 %175, label %192, label %201

176:                                              ; preds = %147
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %208

178:                                              ; preds = %153
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %208

180:                                              ; preds = %192, %184, %158
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %208

182:                                              ; preds = %167
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %208

184:                                              ; preds = %165
  %185 = load ptr, ptr %154, align 8, !tbaa !867
  %186 = load ptr, ptr %185, align 8, !tbaa !372
  %187 = getelementptr inbounds ptr, ptr %186, i64 7
  %188 = load ptr, ptr %187, align 8
  %189 = invoke noundef i32 %188(ptr noundef nonnull align 8 dereferenceable(33) %185) #13
          to label %190 unwind label %180

190:                                              ; preds = %184
  %191 = icmp eq i32 %189, 1
  br i1 %191, label %192, label %201

192:                                              ; preds = %173, %190
  %193 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %194 = load ptr, ptr %193, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %194, i32 noundef 84) #13
          to label %195 unwind label %180

195:                                              ; preds = %192
  %196 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !385
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  br label %201

201:                                              ; preds = %173, %171, %152, %190, %199, %195, %155, %139
  %202 = load ptr, ptr %0, align 8, !tbaa !372
  %203 = getelementptr inbounds ptr, ptr %202, i64 16
  %204 = load ptr, ptr %203, align 8
  invoke void %204(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
          to label %205 unwind label %206

205:                                              ; preds = %201
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void

206:                                              ; preds = %201
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %208

208:                                              ; preds = %87, %176, %180, %182, %178, %137, %134, %206
  %209 = phi { ptr, i32 } [ %207, %206 ], [ %138, %137 ], [ %135, %134 ], [ %177, %176 ], [ %179, %178 ], [ %181, %180 ], [ %183, %182 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %209

210:                                              ; preds = %134
  %211 = landingpad { ptr, i32 }
          catch ptr null
  %212 = extractvalue { ptr, i32 } %211, 0
  call void @__clang_call_terminate(ptr %212) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 !prof !988 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %0, align 8, !tbaa !989
  %6 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !991
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 !prof !992 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !780
  tail call void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 !prof !992 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !780
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) #13
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !993 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !957
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack19setReferenceEscapedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !956
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !957
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !464
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 10
  store i8 1, ptr %10, align 2, !tbaa !994
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !988 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !991
  %4 = load i8, ptr %0, align 8, !tbaa !989, !range !374, !noundef !405
  %5 = icmp ne i8 %4, 0
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %5) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = load ptr, ptr %0, align 8, !tbaa !995
  ret ptr %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !988 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !997, !range !374, !noundef !405
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !998 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 %3, ptr %4, align 8, !tbaa !997
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 !prof !992 {
  %3 = load i32, ptr %0, align 8, !tbaa !999
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !1000
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %29, !prof !1001

7:                                                ; preds = %2, %14
  %8 = phi i32 [ %15, %14 ], [ %3, %2 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !391
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %11) #13
  %13 = load i32, ptr %0, align 8, !tbaa !999
  br i1 %12, label %14, label %18, !prof !1002

14:                                               ; preds = %7
  %15 = add i32 %13, 1
  store i32 %15, ptr %0, align 8, !tbaa !999
  %16 = load i32, ptr %4, align 4, !tbaa !1000
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %7, label %18, !prof !1003, !llvm.loop !1004

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %13, %7 ], [ %15, %14 ]
  %20 = icmp eq i32 %3, %19
  br i1 %20, label %29, label %21, !prof !1005

21:                                               ; preds = %18
  %22 = sub i32 %19, %3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !1006
  %26 = add nsw i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !1006
  %27 = zext i32 %3 to i64
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %27
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %28, i32 noundef %22) #13
  br label %29

29:                                               ; preds = %2, %21, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !1007 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !782
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !788
  %8 = and i8 %7, 8
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 !prof !992 {
  %4 = load i32, ptr %0, align 8, !tbaa !999
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !1000
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %16, label %8, !prof !1008

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !1009, !range !374, !noundef !405
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %31, !prof !1010

12:                                               ; preds = %8
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #13
  br i1 %13, label %14, label %31, !prof !1010

14:                                               ; preds = %12
  %15 = load i32, ptr %0, align 8, !tbaa !999
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ %4, %3 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !391
  %21 = icmp eq i16 %20, %1
  br i1 %21, label %31, label %22, !prof !1011

22:                                               ; preds = %16
  %23 = add i32 %17, 1
  store i32 %23, ptr %0, align 8, !tbaa !999
  store i16 %20, ptr %2, align 2, !tbaa !391
  %24 = and i16 %20, -8368
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26, !prof !1012

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !1006
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !1006
  br label %31

30:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false) #13
  br label %31

31:                                               ; preds = %26, %30, %16, %12, %8
  %32 = phi i1 [ false, %8 ], [ false, %12 ], [ false, %16 ], [ true, %30 ], [ true, %26 ]
  ret i1 %32
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %"class.xercesc_2_7::Janitor", align 8
  %10 = alloca [16 x i16], align 16
  %11 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !391
  store i8 0, ptr %4, align 1, !tbaa !384
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %13 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #13
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 35) #13
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) #13
  br i1 %16, label %17, label %228

17:                                               ; preds = %15
  store i8 1, ptr %4, align 1, !tbaa !384
  %18 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #13
  %19 = icmp eq i32 %13, %18
  br i1 %19, label %228, label %20

20:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #13
  br label %228

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %24 = load i8, ptr %23, align 2, !tbaa !1013, !range !374, !noundef !405
  %25 = icmp eq i8 %24, 0
  %26 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br i1 %25, label %29, label %27

27:                                               ; preds = %21
  %28 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull %7) #13
          to label %31 unwind label %36

29:                                               ; preds = %21
  %30 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(40) %26) #13
          to label %31 unwind label %36

31:                                               ; preds = %29, %27
  %32 = phi i1 [ %28, %27 ], [ %30, %29 ]
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  %34 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226) #13
          to label %224 unwind label %36

36:                                               ; preds = %49, %45, %43, %40, %38, %35, %29, %27
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %226

38:                                               ; preds = %33
  %39 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 310, ptr noundef %39, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %224 unwind label %36

40:                                               ; preds = %31
  %41 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 59) #13
          to label %42 unwind label %36

42:                                               ; preds = %40
  br i1 %41, label %45, label %43

43:                                               ; preds = %42
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %44, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %45 unwind label %36

45:                                               ; preds = %43, %42
  %46 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #13
          to label %47 unwind label %36

47:                                               ; preds = %45
  %48 = icmp eq i32 %13, %46
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #13
          to label %50 unwind label %36

50:                                               ; preds = %49, %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !792
  %53 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %54 = invoke noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %52, ptr noundef %53) #13
          to label %55 unwind label %65

55:                                               ; preds = %50
  %56 = icmp eq ptr %54, null
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %58 = load i8, ptr %57, align 2, !tbaa !452, !range !374, !noundef !405
  %59 = icmp eq i8 %58, 0
  br i1 %56, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !range !374
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %59, i1 %63, i1 false
  br i1 %64, label %67, label %88

65:                                               ; preds = %88, %171, %92, %82, %76, %71, %50
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %226

67:                                               ; preds = %60
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %69 = load i8, ptr %68, align 8, !tbaa !404, !range !374, !noundef !405
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %224, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %73 = load ptr, ptr %72, align 8, !tbaa !376
  %74 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %73, i32 noundef 85, ptr noundef %74, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %224 unwind label %65

75:                                               ; preds = %55
  br i1 %59, label %84, label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %54, align 8, !tbaa !372
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef zeroext i1 %79(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
          to label %81 unwind label %65

81:                                               ; preds = %76
  br i1 %80, label %84, label %82

82:                                               ; preds = %81
  %83 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 298, ptr noundef %83, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %84 unwind label %65

84:                                               ; preds = %82, %81, %75
  %85 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  br i1 %85, label %86, label %171

86:                                               ; preds = %84
  %87 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  br i1 %87, label %88, label %91

88:                                               ; preds = %86, %60
  %89 = phi i32 [ 227, %60 ], [ 228, %86 ]
  %90 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %89, ptr noundef %90, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %224 unwind label %65

91:                                               ; preds = %86
  br i1 %1, label %92, label %93

92:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 270) #13
          to label %93 unwind label %65

93:                                               ; preds = %92, %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %94 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  %95 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  %96 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !814, !range !374, !noundef !405
  %99 = icmp ne i8 %98, 0
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %101 = load i8, ptr %100, align 1, !tbaa !924, !range !374, !noundef !405
  %102 = icmp ne i8 %101, 0
  %103 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %94, ptr noundef %95, ptr noundef %96, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %99, i1 noundef zeroext %102) #13
          to label %104 unwind label %123

104:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %105 = load ptr, ptr %8, align 8, !tbaa !464
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %105) #13
  %106 = icmp eq ptr %103, null
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = call ptr @__cxa_allocate_exception(i64 48) #11
  %109 = load ptr, ptr %8, align 8, !tbaa !464
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %109, align 8, !tbaa !372
  %113 = getelementptr inbounds ptr, ptr %112, i64 5
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(41) %109) #13
          to label %118 unwind label %125

116:                                              ; preds = %107
  %117 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  br label %118

118:                                              ; preds = %111, %116
  %119 = phi ptr [ %117, %116 ], [ %115, %111 ]
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %121 = load ptr, ptr %120, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull @.str.4, i32 noundef 2954, i32 noundef 46, ptr noundef %119, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %121) #13
          to label %122 unwind label %125

122:                                              ; preds = %118
  invoke void @__cxa_throw(ptr nonnull %108, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %230 unwind label %127

123:                                              ; preds = %93
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %169

125:                                              ; preds = %118, %111
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %108) #11
  br label %167

127:                                              ; preds = %164, %161, %157, %132, %129, %122
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %167

129:                                              ; preds = %104
  %130 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull %103, ptr noundef nonnull %54) #13
          to label %131 unwind label %127

131:                                              ; preds = %129
  br i1 %130, label %134, label %132

132:                                              ; preds = %131
  %133 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %133, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %166 unwind label %127

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %136 = load ptr, ptr %135, align 8, !tbaa !815
  %137 = icmp eq ptr %136, null
  br i1 %137, label %152, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %140 = load i32, ptr %139, align 8, !tbaa !817
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 8, !tbaa !817
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %143 = load i32, ptr %142, align 4, !tbaa !816
  %144 = icmp ugt i32 %141, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %147 = load ptr, ptr %146, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %143, ptr noundef nonnull %10, i32 noundef 15, i32 noundef 10, ptr noundef %147) #13
          to label %148 unwind label %150

148:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %149 unwind label %150

149:                                              ; preds = %148
  store i32 0, ptr %139, align 8, !tbaa !817
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  br label %152

150:                                              ; preds = %148, %145
  %151 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  br label %167

152:                                              ; preds = %149, %138, %134
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %154 = load ptr, ptr %153, align 8, !tbaa !801
  %155 = icmp eq ptr %154, null
  %156 = or i1 %155, %1
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %154, align 8, !tbaa !372
  %159 = getelementptr inbounds ptr, ptr %158, i64 12
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef nonnull align 8 dereferenceable(72) %54) #13
          to label %161 unwind label %127

161:                                              ; preds = %152, %157
  %162 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true) #13
          to label %163 unwind label %127

163:                                              ; preds = %161
  br i1 %162, label %164, label %165

164:                                              ; preds = %163
  invoke void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 0) #13
          to label %165 unwind label %127

165:                                              ; preds = %163, %164
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %224

166:                                              ; preds = %132
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %224

167:                                              ; preds = %150, %127, %125
  %168 = phi { ptr, i32 } [ %128, %127 ], [ %151, %150 ], [ %126, %125 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %169

169:                                              ; preds = %167, %123
  %170 = phi { ptr, i32 } [ %168, %167 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %226

171:                                              ; preds = %84
  %172 = load ptr, ptr %54, align 8, !tbaa !372
  %173 = getelementptr inbounds ptr, ptr %172, i64 7
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef zeroext i1 %174(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
          to label %176 unwind label %65

176:                                              ; preds = %171
  br i1 %175, label %177, label %180

177:                                              ; preds = %176
  %178 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  %179 = load i16, ptr %178, align 2, !tbaa !391
  store i16 %179, ptr %2, align 2, !tbaa !391
  store i8 1, ptr %4, align 1, !tbaa !384
  br label %224

180:                                              ; preds = %176
  %181 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  %182 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  %183 = call noundef i32 @_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  %184 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %181, i32 noundef 1, i32 noundef 1, ptr noundef %182, i32 noundef %183, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %185 unwind label %190

185:                                              ; preds = %180
  %186 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %184, ptr noundef nonnull %54) #13
          to label %187 unwind label %190

187:                                              ; preds = %185
  br i1 %186, label %192, label %188

188:                                              ; preds = %187
  %189 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %189, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %192 unwind label %190

190:                                              ; preds = %223, %222, %219, %215, %188, %185, %180
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %226

192:                                              ; preds = %188, %187
  %193 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %194 = load ptr, ptr %193, align 8, !tbaa !815
  %195 = icmp eq ptr %194, null
  br i1 %195, label %210, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %198 = load i32, ptr %197, align 8, !tbaa !817
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 8, !tbaa !817
  %200 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %201 = load i32, ptr %200, align 4, !tbaa !816
  %202 = icmp ugt i32 %199, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %205 = load ptr, ptr %204, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %201, ptr noundef nonnull %11, i32 noundef 15, i32 noundef 10, ptr noundef %205) #13
          to label %206 unwind label %208

206:                                              ; preds = %203
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %207 unwind label %208

207:                                              ; preds = %206
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  br label %210

208:                                              ; preds = %206, %203
  %209 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  br label %226

210:                                              ; preds = %207, %196, %192
  %211 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %212 = load ptr, ptr %211, align 8, !tbaa !801
  %213 = icmp eq ptr %212, null
  %214 = or i1 %213, %1
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load ptr, ptr %212, align 8, !tbaa !372
  %217 = getelementptr inbounds ptr, ptr %216, i64 12
  %218 = load ptr, ptr %217, align 8
  invoke void %218(ptr noundef nonnull align 8 dereferenceable(8) %212, ptr noundef nonnull align 8 dereferenceable(72) %54) #13
          to label %219 unwind label %190

219:                                              ; preds = %210, %215
  %220 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true) #13
          to label %221 unwind label %190

221:                                              ; preds = %219
  br i1 %220, label %222, label %224

222:                                              ; preds = %221
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 220) #13
          to label %223 unwind label %190

223:                                              ; preds = %222
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 62) #13
          to label %224 unwind label %190

224:                                              ; preds = %88, %223, %221, %165, %166, %177, %67, %71, %35, %38
  %225 = phi i32 [ 2, %38 ], [ 2, %35 ], [ 2, %166 ], [ 1, %177 ], [ 2, %67 ], [ 2, %71 ], [ 0, %165 ], [ 0, %221 ], [ 0, %223 ], [ 2, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %228

226:                                              ; preds = %65, %169, %208, %190, %36
  %227 = phi { ptr, i32 } [ %37, %36 ], [ %66, %65 ], [ %170, %169 ], [ %191, %190 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %227

228:                                              ; preds = %17, %20, %15, %224
  %229 = phi i32 [ %225, %224 ], [ 2, %15 ], [ 1, %20 ], [ 1, %17 ]
  ret i32 %229

230:                                              ; preds = %122
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !1014 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !780
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #13
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 !prof !1015 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !780
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext false) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = load ptr, ptr %0, align 8, !tbaa !477
  %3 = load i32, ptr %2, align 8, !tbaa !568
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !464
  %4 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !1016
  %9 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1) #13
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !1018
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 true, i1 %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !1020
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !1021
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1022
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !1018
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1023
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1024
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !1025
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !1026

8:                                                ; preds = %3
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !1027
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !853 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.21", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !1029
  %6 = load ptr, ptr %0, align 8, !tbaa !1031
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !353
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.21", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1032
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !464
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !1033

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !1027
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #13
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.23", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !464
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !1034, !llvm.loop !1035

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !1036 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !1037

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !391
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !1038

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !391
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !1039

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !391
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !1040, !llvm.loop !1041

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !853 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1023
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !1042 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !401
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !1043

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %9 = load i8, ptr %8, align 2, !tbaa !800, !range !374, !noundef !405
  %10 = icmp ne i8 %9, 0
  %11 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %80, label %15, !prof !1044

15:                                               ; preds = %7, %2
  %16 = phi ptr [ %5, %2 ], [ %12, %7 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !372
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  switch i32 %20, label %69 [
    i32 1, label %21
    i32 0, label %41
  ], !prof !1045

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %23 = load ptr, ptr %22, align 8, !tbaa !376
  %24 = load ptr, ptr %23, align 8, !tbaa !372
  %25 = getelementptr inbounds ptr, ptr %24, i64 13
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(40) %23) #13
  br i1 %27, label %69, label %28, !prof !1046

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %30 = load i8, ptr %29, align 1, !tbaa !795, !range !374, !noundef !405
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %35 = load ptr, ptr %34, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull @.str.4, i32 noundef 3068, i32 noundef 158, ptr noundef %35) #13
          to label %36 unwind label %37

36:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %77

39:                                               ; preds = %28
  %40 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  br label %65

41:                                               ; preds = %15
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %43 = load i8, ptr %42, align 2, !tbaa !800, !range !374, !noundef !405
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %47 = load ptr, ptr %46, align 8, !tbaa !376
  %48 = load ptr, ptr %47, align 8, !tbaa !372
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(40) %47) #13
  br i1 %51, label %69, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %54 = load i8, ptr %53, align 1, !tbaa !795, !range !374, !noundef !405
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %59 = load ptr, ptr %58, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str.4, i32 noundef 3080, i32 noundef 44, ptr noundef %59) #13
          to label %60 unwind label %61

60:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

61:                                               ; preds = %56
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %77

63:                                               ; preds = %52
  %64 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  br label %65

65:                                               ; preds = %39, %63
  %66 = phi ptr [ %64, %63 ], [ %40, %39 ]
  %67 = phi ptr [ %46, %63 ], [ %22, %39 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !464
  store ptr %68, ptr %67, align 8, !tbaa !376
  br label %69

69:                                               ; preds = %65, %21, %15, %45
  %70 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %20, ptr %70, align 4, !tbaa !385
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %16, ptr %71, align 8, !tbaa !357
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %73 = load ptr, ptr %72, align 8, !tbaa !376
  %74 = load ptr, ptr %73, align 8, !tbaa !372
  %75 = getelementptr inbounds ptr, ptr %74, i64 11
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(40) %73, ptr noundef nonnull %16) #13
  br label %80

77:                                               ; preds = %61, %37
  %78 = phi ptr [ %57, %61 ], [ %33, %37 ]
  %79 = phi { ptr, i32 } [ %62, %61 ], [ %38, %37 ]
  tail call void @__cxa_free_exception(ptr %78) #11
  resume { ptr, i32 } %79

80:                                               ; preds = %7, %69, %41
  %81 = phi i1 [ true, %69 ], [ false, %41 ], [ false, %7 ]
  ret i1 %81
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %6 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %7 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !1047
  %10 = zext i32 %4 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !353
  %13 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !353
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %101, label %15

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %17 = load ptr, ptr %16, align 8, !tbaa !401
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !403
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %17, ptr noundef %19) #13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %98, label %21

21:                                               ; preds = %15
  %22 = invoke noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr noundef nonnull align 8 dereferenceable(28) %2) #13
          to label %23 unwind label %52

23:                                               ; preds = %21
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %83, label %25

25:                                               ; preds = %23, %80
  %26 = phi i32 [ %81, %80 ], [ 0, %23 ]
  %27 = invoke noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %26) #13
          to label %28 unwind label %54

28:                                               ; preds = %25
  %29 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #13
  %30 = invoke noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %26) #13
          to label %31 unwind label %56

31:                                               ; preds = %28
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %31
  %34 = icmp eq i32 %29, %7
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #13
  %37 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %38 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %36, ptr noundef %37) #13
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %33
  %40 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %1, ptr noundef nonnull %27) #13
          to label %41 unwind label %56

41:                                               ; preds = %39
  br i1 %40, label %42, label %80

42:                                               ; preds = %41, %35
  %43 = load ptr, ptr %3, align 8, !tbaa !372
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %12, i32 noundef %26) #13
          to label %47 unwind label %56

47:                                               ; preds = %42
  %48 = icmp eq i32 %46, %13
  br i1 %48, label %80, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %8, align 8, !tbaa !1047
  %51 = getelementptr inbounds i32, ptr %50, i64 %10
  store i32 %46, ptr %51, align 4, !tbaa !353
  br label %83

52:                                               ; preds = %21
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %93

54:                                               ; preds = %25
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %93

56:                                               ; preds = %64, %42, %39, %28
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %93

58:                                               ; preds = %31
  %59 = and i32 %30, 15
  switch i32 %59, label %80 [
    i32 6, label %64
    i32 7, label %60
    i32 8, label %62
  ]

60:                                               ; preds = %58
  %61 = icmp eq i32 %29, %7
  br i1 %61, label %80, label %64

62:                                               ; preds = %58
  %63 = icmp eq i32 %29, %7
  br i1 %63, label %64, label %80

64:                                               ; preds = %60, %58, %62
  %65 = load ptr, ptr %3, align 8, !tbaa !372
  %66 = getelementptr inbounds ptr, ptr %65, i64 6
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %12, i32 noundef %26) #13
          to label %69 unwind label %56

69:                                               ; preds = %64
  %70 = icmp eq i32 %68, %13
  br i1 %70, label %80, label %71

71:                                               ; preds = %69
  %72 = load ptr, ptr %8, align 8, !tbaa !1047
  %73 = getelementptr inbounds i32, ptr %72, i64 %10
  store i32 %68, ptr %73, align 4, !tbaa !353
  %74 = add i32 %30, -38
  %75 = icmp ult i32 %74, 3
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = add i32 %30, -22
  %78 = icmp ult i32 %77, 3
  %79 = zext i1 %78 to i8
  br label %83

80:                                               ; preds = %47, %41, %69, %62, %58, %60
  %81 = add nuw i32 %26, 1
  %82 = icmp eq i32 %81, %22
  br i1 %82, label %89, label %25, !llvm.loop !1048

83:                                               ; preds = %23, %49, %76
  %84 = phi i32 [ %26, %49 ], [ %26, %76 ], [ 0, %23 ]
  %85 = phi i8 [ 0, %49 ], [ %79, %76 ], [ 0, %23 ]
  %86 = icmp eq i32 %84, %22
  br i1 %86, label %89, label %98

87:                                               ; preds = %71
  %88 = icmp eq i32 %26, %22
  br i1 %88, label %89, label %95

89:                                               ; preds = %80, %87, %83
  %90 = phi i8 [ %85, %83 ], [ 0, %87 ], [ 0, %80 ]
  %91 = load ptr, ptr %8, align 8, !tbaa !1047
  %92 = getelementptr inbounds i32, ptr %91, i64 %10
  store i32 %13, ptr %92, align 4, !tbaa !353
  br label %98

93:                                               ; preds = %54, %56, %52
  %94 = phi { ptr, i32 } [ %53, %52 ], [ %57, %56 ], [ %55, %54 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %94

95:                                               ; preds = %87
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 0, ptr %96, align 8, !tbaa !404
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %97, i1 noundef zeroext false) #13
  br label %98

98:                                               ; preds = %95, %15, %83, %89
  %99 = phi i8 [ %90, %89 ], [ 0, %95 ], [ 0, %15 ], [ %85, %83 ]
  %100 = icmp ne i8 %99, 0
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %101

101:                                              ; preds = %5, %98
  %102 = phi i1 [ %100, %98 ], [ false, %5 ]
  ret i1 %102
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !496 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !1049
  %4 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !1051
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !496 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef16getNamespaceListEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !496 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !1052
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !1053 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.24", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !1054
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1056 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.24", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !1054
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !1057

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.24", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !1058
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9) #13
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.24", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1059
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!351}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!36 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, i64 832909}
!37 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv, i64 336747}
!38 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv, i64 496162}
!39 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv, i64 190052}
!40 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 190053}
!41 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 190053}
!42 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb, i64 515}
!43 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, i64 191817}
!44 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv, i64 191816}
!45 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPt, i64 191816}
!46 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 4}
!47 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 3}
!48 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!49 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_712ArrayJanitorItEixEi, i64 1}
!51 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, i64 191817}
!53 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 383784}
!54 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 191814}
!55 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti, i64 191157}
!56 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv, i64 191157}
!57 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv, i64 191157}
!58 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712IGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_, i64 1}
!59 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt, i64 650}
!60 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv, i64 392065}
!61 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv, i64 14}
!62 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, i64 663}
!63 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 4}
!64 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 3}
!65 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv, i64 650}
!66 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE11containsKeyEPKvi, i64 1}
!67 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv, i64 191815}
!68 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, i64 191808}
!69 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 572999}
!70 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv, i64 191156}
!71 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv, i64 191155}
!72 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, i64 190027}
!73 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, i64 190024}
!74 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv, i64 191154}
!75 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv, i64 191154}
!76 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv, i64 7}
!77 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, i64 7}
!78 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv, i64 201563}
!79 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_79XMLAttDef7getTypeEv, i64 191157}
!80 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, i64 7}
!81 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_, i64 1}
!82 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE, i64 1}
!83 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 201714}
!84 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, i64 161}
!85 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, i64 158}
!86 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi, i64 1}
!87 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!88 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, i64 8}
!89 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, i64 9}
!90 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, i64 191807}
!91 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb, i64 201554}
!92 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_, i64 1}
!93 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv, i64 1}
!94 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt, i64 1}
!95 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 191817}
!96 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_713getAttDefListEbPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE, i64 189534}
!97 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv, i64 200907}
!98 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 4}
!99 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_79XMLAttDef10isExternalEv, i64 9745}
!100 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv, i64 9746}
!101 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE, i64 1}
!102 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, i64 1}
!103 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMLAttr8setURIIdEj, i64 1}
!104 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, i64 190052}
!105 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, i64 4843157}
!106 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 4843156}
!107 = !{ptr @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv, i64 496216}
!108 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!109 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!110 = !{ptr @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv, i64 1}
!111 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!112 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!113 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPt, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 191815}
!114 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!115 = !{ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 765956}
!116 = !{ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, ptr @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb, i64 382975}
!117 = !{ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 1}
!118 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi, i64 349768}
!119 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 392072}
!120 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv, i64 1}
!121 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 885}
!122 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_, i64 884}
!123 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!124 = !{ptr @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 872}
!125 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!126 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!127 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!128 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 191812}
!129 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLAttDef7getTypeEv, i64 191161}
!130 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLAttDef10isExternalEv, i64 191161}
!131 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 32}
!132 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 2089970}
!133 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 100}
!134 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 100}
!135 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 19}
!136 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!137 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 108}
!138 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 7}
!139 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 1}
!140 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 217}
!141 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 217}
!142 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 218}
!143 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!144 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!145 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!146 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!147 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 10}
!148 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 201775}
!149 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 201775}
!150 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!151 = !{ptr @_ZN11xercesc_2_713getAttDefListEbPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv, i64 189533}
!152 = !{ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, ptr @_ZN11xercesc_2_75QName9getPrefixEv, i64 200913}
!153 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!154 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!155 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @__cxa_allocate_exception, i64 1}
!156 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv, i64 1}
!157 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!158 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, i64 4843156}
!159 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!160 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!161 = !{ptr @_ZN11xercesc_2_77XMLAttrD2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!162 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 349768}
!163 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 188992}
!164 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!165 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb, i64 3}
!166 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb, i64 3}
!167 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv, i64 1}
!168 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 3}
!169 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE, i64 3}
!170 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev, i64 3}
!171 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!172 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE, i64 2}
!173 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE, i64 2}
!174 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv, i64 3}
!175 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, i64 2}
!176 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79ElemStack5resetEjjjj, i64 3}
!177 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE, i64 2}
!178 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb, i64 2}
!179 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712ValueStackOfIbE17removeAllElementsEv, i64 1}
!180 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv, i64 3}
!181 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!182 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!183 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb, i64 3}
!184 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE, i64 3}
!185 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, i64 3}
!186 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @__cxa_allocate_exception, i64 1}
!187 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, i64 2}
!188 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv, i64 2}
!189 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 2}
!190 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, i64 2}
!191 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 2}
!192 = !{ptr @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!193 = !{ptr @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!194 = !{ptr @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb, ptr @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb, i64 3}
!195 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!196 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb, i64 3}
!197 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv, i64 190248}
!198 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 1}
!199 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv, i64 190056}
!200 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 156}
!201 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!202 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv, i64 1512649}
!203 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 1633913}
!204 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLBuffer6getLenEv, i64 1633913}
!205 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, i64 1511512}
!206 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, i64 1511511}
!207 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 1176125}
!208 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE, i64 2}
!209 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv, i64 1}
!210 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 1511511}
!211 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj, i64 1511511}
!212 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv, i64 598796}
!213 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv, i64 335385}
!214 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, i64 121266}
!215 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt, i64 598796}
!216 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv, i64 598797}
!217 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv, i64 598794}
!218 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 598792}
!219 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1512648}
!220 = !{ptr @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 598800}
!221 = !{ptr @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv, ptr @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv, i64 598800}
!222 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!223 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!224 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 4}
!225 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 4}
!226 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, i64 4}
!227 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 4}
!228 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 11}
!229 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 2}
!230 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 1}
!231 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, i64 4}
!232 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, i64 4}
!233 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, i64 382978}
!234 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv, i64 382978}
!235 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 191815}
!236 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 191824}
!237 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv, i64 8}
!238 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, i64 6}
!239 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 189534}
!240 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 189534}
!241 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, i64 3}
!242 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 6}
!243 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, i64 191163}
!244 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, i64 1}
!245 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, i64 1}
!246 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv, i64 189531}
!247 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j, i64 1}
!248 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, i64 189534}
!249 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!250 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!251 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!252 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!253 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, i64 1}
!254 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt, i64 1}
!255 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZNK11xercesc_2_713ValueVectorOfIPtE4sizeEv, i64 1}
!256 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj, i64 2}
!257 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, i64 1}
!258 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!259 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 1}
!260 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt, i64 1}
!261 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE, i64 1}
!262 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev, i64 1}
!263 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!264 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE, i64 1}
!265 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb, i64 1}
!266 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE, i64 1}
!267 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE, i64 1}
!268 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 2}
!269 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 2}
!270 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE, i64 1}
!271 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 1}
!272 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, i64 1}
!273 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, i64 1}
!274 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE, i64 1}
!275 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv, i64 1}
!276 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv, i64 1}
!277 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv, i64 1}
!278 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!279 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!280 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!281 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!282 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_, i64 1}
!283 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 191815}
!284 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, i64 191815}
!285 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, i64 383630}
!286 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 2281902}
!287 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 2090084}
!288 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader9isXMLCharEt, i64 2090084}
!289 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE, i64 1}
!290 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 1}
!291 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 2090085}
!292 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @__cxa_begin_catch, i64 4}
!293 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @__cxa_end_catch, i64 4}
!294 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!295 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLAttDef7getTypeEv, i64 1}
!296 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 222}
!297 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, i64 222}
!298 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, i64 444}
!299 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLAttDef10isExternalEv, i64 1}
!300 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 3817}
!301 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @__cxa_allocate_exception, i64 1}
!302 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!303 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 1}
!304 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 3593}
!305 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader9isXMLCharEt, i64 3593}
!306 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE, i64 1}
!307 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 2}
!308 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @__cxa_begin_catch, i64 1}
!309 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @__cxa_end_catch, i64 1}
!310 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 1347}
!311 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 3594}
!312 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!313 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1512649}
!314 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, i64 1512650}
!315 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE, i64 2534296}
!316 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt, i64 2534295}
!317 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 3}
!318 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev, i64 1512650}
!319 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 2533154}
!320 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader9isXMLCharEt, i64 1021642}
!321 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE, i64 1}
!322 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 1}
!323 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @__cxa_begin_catch, i64 6}
!324 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv, i64 4}
!325 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 1021644}
!326 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @__cxa_end_catch, i64 6}
!327 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 1511512}
!328 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLBuffer6getLenEv, i64 1511512}
!329 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj, i64 1511512}
!330 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, i64 1275871}
!331 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv, i64 1275870}
!332 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv, i64 4539474}
!333 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!334 = !{ptr @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, i64 2534293}
!335 = !{ptr @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, i64 2534293}
!336 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!337 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt, i64 41950389}
!338 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 596891}
!339 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2493}
!340 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1019518}
!341 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1025276}
!342 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 1025276}
!343 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 612}
!344 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, i64 612}
!345 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 5}
!346 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 1}
!347 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!348 = !{ptr @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt, ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt, i64 496163}
!349 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!350 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!351 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!352 = !{!"function_entry_count", i64 833461}
!353 = !{!354, !354, i64 0}
!354 = !{!"int", !355, i64 0}
!355 = !{!"omnipotent char", !356, i64 0}
!356 = !{!"Simple C++ TBAA"}
!357 = !{!358, !362, i64 296}
!358 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !359, i64 0, !360, i64 8, !361, i64 16, !361, i64 17, !361, i64 18, !361, i64 19, !361, i64 20, !361, i64 21, !361, i64 22, !361, i64 23, !361, i64 24, !361, i64 25, !361, i64 26, !361, i64 27, !361, i64 28, !361, i64 29, !361, i64 30, !361, i64 31, !361, i64 32, !361, i64 33, !361, i64 34, !361, i64 35, !361, i64 36, !361, i64 37, !361, i64 38, !354, i64 40, !354, i64 44, !354, i64 48, !354, i64 52, !354, i64 56, !354, i64 60, !354, i64 64, !354, i64 68, !362, i64 72, !354, i64 80, !354, i64 84, !354, i64 88, !354, i64 92, !354, i64 96, !362, i64 104, !362, i64 112, !362, i64 120, !362, i64 128, !362, i64 136, !362, i64 144, !362, i64 152, !362, i64 160, !362, i64 168, !361, i64 176, !363, i64 184, !362, i64 264, !366, i64 272, !362, i64 280, !362, i64 288, !362, i64 296, !362, i64 304, !362, i64 312, !362, i64 320, !362, i64 328, !362, i64 336, !362, i64 344, !365, i64 352, !362, i64 360, !367, i64 368, !368, i64 392, !368, i64 432, !368, i64 472, !368, i64 512, !368, i64 552, !368, i64 592, !368, i64 632, !369, i64 672}
!359 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!360 = !{!"long", !355, i64 0}
!361 = !{!"bool", !355, i64 0}
!362 = !{!"any pointer", !355, i64 0}
!363 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !364, i64 0, !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !354, i64 40, !362, i64 48, !361, i64 56, !365, i64 60, !361, i64 64, !362, i64 72}
!364 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!365 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !355, i64 0}
!366 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !355, i64 0}
!367 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !354, i64 0, !362, i64 8, !362, i64 16}
!368 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !354, i64 0, !354, i64 4, !354, i64 8, !361, i64 12, !362, i64 16, !362, i64 24, !362, i64 32}
!369 = !{!"_ZTSN11xercesc_2_79ElemStackE", !354, i64 0, !354, i64 4, !370, i64 8, !362, i64 48, !354, i64 56, !354, i64 60, !354, i64 64, !354, i64 68, !354, i64 72, !354, i64 76, !354, i64 80, !362, i64 88, !362, i64 96}
!370 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !371, i64 0, !362, i64 8, !362, i64 16, !362, i64 24, !354, i64 32, !354, i64 36}
!371 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!372 = !{!373, !373, i64 0}
!373 = !{!"vtable pointer", !356, i64 0}
!374 = !{i8 0, i8 2}
!375 = !{!"branch_weights", i32 1795968, i32 -1585036047}
!376 = !{!358, !362, i64 264}
!377 = !{!"branch_weights", i32 336749, i32 496164}
!378 = !{!"branch_weights", i32 0, i32 -2147483648}
!379 = !{!380, !354, i64 920}
!380 = !{!"_ZTSN11xercesc_2_712IGXMLScannerE", !358, i64 0, !361, i64 776, !381, i64 780, !354, i64 784, !362, i64 792, !368, i64 800, !362, i64 840, !354, i64 848, !362, i64 856, !362, i64 864, !362, i64 872, !362, i64 880, !362, i64 888, !362, i64 896, !362, i64 904, !362, i64 912, !354, i64 920, !362, i64 928, !362, i64 936, !362, i64 944, !362, i64 952, !362, i64 960, !362, i64 968, !362, i64 976, !382, i64 984}
!381 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !355, i64 0}
!382 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !361, i64 0, !361, i64 1, !354, i64 4, !354, i64 8, !354, i64 12, !362, i64 16, !362, i64 24, !362, i64 32}
!383 = !{!"branch_weights", i32 956092216, i32 -1058167617}
!384 = !{!361, !361, i64 0}
!385 = !{!380, !381, i64 780}
!386 = !{!"branch_weights", i32 515, i32 189537}
!387 = !{!"branch_weights", i32 1, i32 190050}
!388 = !{!380, !362, i64 856}
!389 = !{!"branch_weights", i32 191813, i32 4}
!390 = !{!"branch_weights", i32 4, i32 1}
!391 = !{!392, !392, i64 0}
!392 = !{!"short", !355, i64 0}
!393 = !{!358, !362, i64 360}
!394 = !{!358, !354, i64 64}
!395 = !{!"branch_weights", i32 3, i32 191814}
!396 = !{!"branch_weights", i32 3, i32 191812}
!397 = !{!"branch_weights", i32 6, i32 191811}
!398 = !{!"branch_weights", i32 3, i32 4}
!399 = !{!"branch_weights", i32 11178, i32 2140252660, i32 7219809}
!400 = !{!"branch_weights", i32 1, i32 191163}
!401 = !{!358, !362, i64 280}
!402 = !{!358, !354, i64 52}
!403 = !{!358, !362, i64 312}
!404 = !{!358, !361, i64 24}
!405 = !{}
!406 = !{!"branch_weights", i32 2141662720, i32 5820928}
!407 = !{!380, !361, i64 985}
!408 = !{!380, !362, i64 928}
!409 = !{!"branch_weights", i32 14, i32 191150}
!410 = !{!"branch_weights", i32 191150, i32 1}
!411 = !{!"branch_weights", i32 2147483419, i32 229}
!412 = !{!380, !362, i64 936}
!413 = !{!"branch_weights", i32 1, i32 651}
!414 = !{!380, !362, i64 944}
!415 = !{!"branch_weights", i32 2147479449, i32 4199}
!416 = !{!"branch_weights", i32 3298313, i32 2144185335}
!417 = !{!"branch_weights", i32 2147472452, i32 11196}
!418 = !{!"branch_weights", i32 3298608, i32 2144185040}
!419 = !{!358, !361, i64 32}
!420 = !{!"branch_weights", i32 191163, i32 651}
!421 = !{!"branch_weights", i32 191163, i32 1}
!422 = !{!"branch_weights", i32 1128, i32 190036}
!423 = !{!"branch_weights", i32 -1022481783, i32 51660}
!424 = !{!"branch_weights", i32 -2011011511, i32 23895}
!425 = !{!"branch_weights", i32 191813, i32 1}
!426 = !{!380, !362, i64 952}
!427 = !{!380, !362, i64 960}
!428 = !{!358, !362, i64 320}
!429 = !{!"branch_weights", i32 2, i32 3}
!430 = !{!"branch_weights", i32 2, i32 2}
!431 = !{!"branch_weights", i32 1, i32 9}
!432 = !{!"branch_weights", i32 651, i32 191166}
!433 = !{!"branch_weights", i32 651, i32 1}
!434 = !{!"branch_weights", i32 490, i32 161}
!435 = !{!"branch_weights", i32 158, i32 4}
!436 = !{!"branch_weights", i32 1, i32 158}
!437 = !{!"branch_weights", i32 161, i32 0}
!438 = distinct !{!438, !439}
!439 = !{!"llvm.loop.mustprogress"}
!440 = !{!358, !362, i64 112}
!441 = !{!"branch_weights", i32 191809, i32 8}
!442 = !{!"branch_weights", i32 191816, i32 1}
!443 = !{!"branch_weights", i32 1766, i32 190050}
!444 = distinct !{!444, !439}
!445 = !{!"branch_weights", i32 189536, i32 516}
!446 = !{!"branch_weights", i32 200911, i32 189536}
!447 = !{!"branch_weights", i32 12, i32 200900}
!448 = !{!"branch_weights", i32 9738, i32 191163}
!449 = !{!"branch_weights", i32 1, i32 9749}
!450 = !{!"branch_weights", i32 19499, i32 95043001}
!451 = !{!"branch_weights", i32 19499, i32 1}
!452 = !{!358, !361, i64 22}
!453 = !{!"branch_weights", i32 -2147483648, i32 0}
!454 = !{!"branch_weights", i32 9749, i32 1}
!455 = !{!358, !362, i64 104}
!456 = !{!"branch_weights", i32 11947, i32 -2010999563}
!457 = distinct !{!457, !439}
!458 = !{!"function_entry_count", i64 4843157}
!459 = !{!460, !362, i64 168}
!460 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !461, i64 0, !362, i64 40, !362, i64 48, !362, i64 56, !362, i64 64, !361, i64 72, !362, i64 80, !362, i64 88, !368, i64 96, !361, i64 136, !361, i64 137, !462, i64 144, !362, i64 168, !362, i64 176, !361, i64 184, !361, i64 185}
!461 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32}
!462 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !361, i64 8, !362, i64 16}
!463 = !{!"branch_weights", i32 1, i32 4843158}
!464 = !{!362, !362, i64 0}
!465 = !{!"function_entry_count", i64 1272296}
!466 = !{!460, !362, i64 80}
!467 = !{!"function_entry_count", i64 496216}
!468 = !{!469, !362, i64 128}
!469 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !371, i64 0, !361, i64 8, !361, i64 9, !361, i64 10, !361, i64 11, !361, i64 12, !354, i64 16, !354, i64 20, !354, i64 24, !354, i64 28, !354, i64 32, !354, i64 36, !354, i64 40, !354, i64 44, !362, i64 48, !362, i64 56, !362, i64 64, !362, i64 72, !362, i64 80, !362, i64 88, !362, i64 96, !362, i64 104, !362, i64 112, !362, i64 120, !362, i64 128, !362, i64 136, !362, i64 144, !362, i64 152, !362, i64 160, !362, i64 168}
!470 = !{!"function_entry_count", i64 190440}
!471 = !{!472, !354, i64 12}
!472 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !361, i64 8, !354, i64 12, !354, i64 16, !362, i64 24, !362, i64 32}
!473 = !{!"function_entry_count", i64 379609}
!474 = !{!475, !362, i64 8}
!475 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !362, i64 0, !362, i64 8}
!476 = !{!"function_entry_count", i64 379607}
!477 = !{!475, !362, i64 0}
!478 = !{!"function_entry_count", i64 514}
!479 = !{!"branch_weights", i32 1, i32 515}
!480 = !{!"function_entry_count", i64 191815}
!481 = !{!482, !354, i64 12}
!482 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !361, i64 8, !354, i64 12, !354, i64 16, !362, i64 24, !362, i64 32}
!483 = !{!482, !362, i64 32}
!484 = !{!482, !362, i64 24}
!485 = !{!"function_entry_count", i64 574795}
!486 = !{!487, !362, i64 24}
!487 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !371, i64 0, !360, i64 8, !360, i64 16, !362, i64 24, !362, i64 32, !362, i64 40}
!488 = !{!489, !362, i64 0}
!489 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !362, i64 0, !362, i64 8}
!490 = !{!489, !362, i64 8}
!491 = !{!"function_entry_count", i64 2453164456}
!492 = !{!"branch_weights", i32 1, i32 -1841802839}
!493 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!494 = !{!"branch_weights", i32 408669070, i32 -279908792}
!495 = distinct !{!495, !439}
!496 = !{!"function_entry_count", i64 0}
!497 = !{!"function_entry_count", i64 558789}
!498 = !{!"branch_weights", i32 158605, i32 400186}
!499 = !{!"function_entry_count", i64 4}
!500 = !{!"function_entry_count", i64 382980}
!501 = !{!"branch_weights", i32 4, i32 382978}
!502 = !{!"branch_weights", i32 1, i32 382978}
!503 = !{!358, !354, i64 60}
!504 = !{!"branch_weights", i32 382978, i32 1}
!505 = !{!"function_entry_count", i64 1231717351}
!506 = !{!"branch_weights", i32 621, i32 -1469098093}
!507 = !{!"branch_weights", i32 408901017, i32 1}
!508 = !{!"branch_weights", i32 267, i32 4}
!509 = !{!"branch_weights", i32 1, i32 4}
!510 = !{!"branch_weights", i32 156, i32 112}
!511 = !{!"branch_weights", i32 1, i32 112}
!512 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!513 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!514 = distinct !{!514, !439}
!515 = !{!"function_entry_count", i64 349768}
!516 = !{!"function_entry_count", i64 191162}
!517 = !{!469, !362, i64 104}
!518 = !{!519, !362, i64 120}
!519 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !520, i64 0, !522, i64 36, !523, i64 40, !524, i64 44, !525, i64 48, !354, i64 52, !354, i64 56, !354, i64 60, !354, i64 64, !362, i64 72, !362, i64 80, !362, i64 88, !362, i64 96, !362, i64 104, !362, i64 112, !362, i64 120, !362, i64 128, !362, i64 136, !361, i64 144, !361, i64 145, !361, i64 146}
!520 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !371, i64 0, !362, i64 8, !362, i64 16, !521, i64 24, !354, i64 28, !361, i64 32}
!521 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !355, i64 0}
!522 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !355, i64 0}
!523 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !355, i64 0}
!524 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !355, i64 0}
!525 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !355, i64 0}
!526 = !{!527, !530, i64 16}
!527 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !371, i64 0, !528, i64 8, !529, i64 12, !530, i64 16, !361, i64 20, !361, i64 21, !354, i64 24, !362, i64 32, !362, i64 40, !362, i64 48}
!528 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !355, i64 0}
!529 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !355, i64 0}
!530 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !355, i64 0}
!531 = distinct !{!531, !439}
!532 = !{!"function_entry_count", i64 1}
!533 = !{!534, !362, i64 48}
!534 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !535, i64 0, !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40, !362, i64 48, !362, i64 56, !362, i64 64, !362, i64 72, !362, i64 80, !362, i64 88, !362, i64 96, !362, i64 104, !362, i64 112, !362, i64 120, !361, i64 128, !536, i64 136}
!535 = !{!"_ZTSN11xercesc_2_77GrammarE", !371, i64 0}
!536 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !371, i64 0, !362, i64 8, !362, i64 16}
!537 = !{!538, !362, i64 0}
!538 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !362, i64 0, !362, i64 8, !362, i64 16}
!539 = !{!"function_entry_count", i64 1035025}
!540 = !{!358, !362, i64 160}
!541 = !{!"function_entry_count", i64 392072}
!542 = !{!"branch_weights", i32 25, i32 392049}
!543 = !{!544, !362, i64 0}
!544 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !362, i64 0, !362, i64 8, !362, i64 16}
!545 = !{!"function_entry_count", i64 885}
!546 = !{!547, !354, i64 24}
!547 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !362, i64 0, !361, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !354, i64 32, !362, i64 40}
!548 = !{!547, !354, i64 32}
!549 = !{!"branch_weights", i32 886, i32 1}
!550 = !{!547, !361, i64 8}
!551 = !{!544, !362, i64 16}
!552 = !{!547, !362, i64 0}
!553 = !{!547, !362, i64 16}
!554 = !{!"function_entry_count", i64 1668291}
!555 = !{!520, !362, i64 16}
!556 = !{!"function_entry_count", i64 872}
!557 = !{!558, !354, i64 24}
!558 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !362, i64 0, !361, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !362, i64 32}
!559 = !{!558, !354, i64 28}
!560 = !{!558, !361, i64 8}
!561 = !{!562, !362, i64 0}
!562 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !362, i64 0, !362, i64 8, !362, i64 16, !354, i64 24}
!563 = !{!562, !362, i64 16}
!564 = !{!562, !354, i64 24}
!565 = !{!558, !362, i64 0}
!566 = !{!558, !362, i64 16}
!567 = !{!"function_entry_count", i64 7992849}
!568 = !{!368, !354, i64 0}
!569 = !{!368, !354, i64 4}
!570 = !{!"branch_weights", i32 1, i32 7992850}
!571 = !{!368, !362, i64 32}
!572 = !{!"function_entry_count", i64 789922}
!573 = !{!"branch_weights", i32 1, i32 789923}
!574 = !{!"branch_weights", i32 285, i32 789639}
!575 = !{!"branch_weights", i32 789639, i32 41628304}
!576 = distinct !{!576, !439}
!577 = !{!"branch_weights", i32 789637, i32 3}
!578 = !{!"function_entry_count", i64 10769804}
!579 = !{!"function_entry_count", i64 191812}
!580 = !{!"branch_weights", i32 651, i32 191163}
!581 = !{!"branch_weights", i32 2147472415, i32 11233}
!582 = !{!"branch_weights", i32 -29293624, i32 391491269, i32 2041}
!583 = !{!"branch_weights", i32 1, i32 2089988}
!584 = !{!"branch_weights", i32 2089988, i32 2089989, i32 2089989, i32 2089989}
!585 = distinct !{!585, !439}
!586 = distinct !{!586, !439}
!587 = !{!"function_entry_count", i64 191820}
!588 = !{!487, !362, i64 32}
!589 = !{!"function_entry_count", i64 550665}
!590 = !{!591, !362, i64 80}
!591 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !527, i64 0, !354, i64 56, !524, i64 60, !525, i64 64, !523, i64 68, !362, i64 72, !362, i64 80, !362, i64 88, !362, i64 96, !362, i64 104, !362, i64 112}
!592 = !{!"function_entry_count", i64 1205039}
!593 = !{!594, !392, i64 12}
!594 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !371, i64 0, !361, i64 8, !361, i64 9, !361, i64 10, !361, i64 11, !392, i64 12, !354, i64 16, !354, i64 20, !354, i64 24, !595, i64 28, !596, i64 32, !362, i64 40, !362, i64 48, !362, i64 56, !362, i64 64, !362, i64 72, !362, i64 80, !362, i64 88, !362, i64 96}
!595 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !355, i64 0}
!596 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !355, i64 0}
!597 = !{!"function_entry_count", i64 190774}
!598 = !{!460, !362, i64 176}
!599 = !{!"function_entry_count", i64 1856984}
!600 = !{!460, !361, i64 184}
!601 = !{!"function_entry_count", i64 2}
!602 = !{!"function_entry_count", i64 108}
!603 = !{!"branch_weights", i32 1, i32 109}
!604 = !{!605, !362, i64 0}
!605 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !362, i64 0, !362, i64 8, !362, i64 16}
!606 = !{!"function_entry_count", i64 593014}
!607 = !{!527, !529, i64 12}
!608 = !{!609, !354, i64 32}
!609 = !{!"_ZTSN11xercesc_2_717PSVIAttributeListE", !362, i64 0, !362, i64 8, !362, i64 16, !362, i64 24, !354, i64 32}
!610 = !{!609, !362, i64 8}
!611 = !{!609, !362, i64 0}
!612 = !{!609, !362, i64 16}
!613 = !{!609, !362, i64 24}
!614 = !{!"function_entry_count", i64 19496}
!615 = !{!527, !362, i64 32}
!616 = !{!617, !622, i64 64}
!617 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !618, i64 0, !354, i64 56, !354, i64 60, !622, i64 64, !362, i64 72, !362, i64 80, !362, i64 88, !362, i64 96, !362, i64 104, !362, i64 112, !362, i64 120}
!618 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !619, i64 0, !621, i64 36, !392, i64 40, !362, i64 48}
!619 = !{!"_ZTSN11xercesc_2_78XSObjectE", !620, i64 8, !362, i64 16, !362, i64 24, !354, i64 32}
!620 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !355, i64 0}
!621 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !355, i64 0}
!622 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !355, i64 0}
!623 = !{!"function_entry_count", i64 7}
!624 = !{!"branch_weights", i32 15438249, i32 500000, i32 62250, i32 62001}
!625 = !{!"branch_weights", i32 2, i32 248}
!626 = distinct !{!626, !439}
!627 = !{!"function_entry_count", i64 201935}
!628 = !{!"branch_weights", i32 201936, i32 1}
!629 = !{!472, !362, i64 32}
!630 = !{!472, !362, i64 24}
!631 = !{!"function_entry_count", i64 360316}
!632 = !{!633, !362, i64 24}
!633 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !361, i64 0, !529, i64 4, !354, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40, !361, i64 48}
!634 = !{!"function_entry_count", i64 159625}
!635 = !{!"function_entry_count", i64 10}
!636 = !{!"function_entry_count", i64 201775}
!637 = !{!633, !529, i64 4}
!638 = !{!633, !361, i64 48}
!639 = !{!633, !362, i64 40}
!640 = !{!633, !361, i64 0}
!641 = !{!642, !354, i64 24}
!642 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !362, i64 0, !361, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !362, i64 32}
!643 = !{!642, !354, i64 28}
!644 = !{!642, !361, i64 8}
!645 = !{!646, !362, i64 0}
!646 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !362, i64 0, !362, i64 8, !362, i64 16, !354, i64 24}
!647 = !{!646, !362, i64 16}
!648 = !{!646, !354, i64 24}
!649 = !{!642, !362, i64 0}
!650 = !{!642, !362, i64 16}
!651 = !{!"function_entry_count", i64 360600}
!652 = !{!633, !362, i64 16}
!653 = !{!"function_entry_count", i64 243874}
!654 = !{!"function_entry_count", i64 189535}
!655 = !{!"branch_weights", i32 -2049723840, i32 23692}
!656 = !{!"function_entry_count", i64 401820}
!657 = !{!527, !528, i64 8}
!658 = !{!"function_entry_count", i64 200910}
!659 = !{!527, !361, i64 21}
!660 = !{!"function_entry_count", i64 200913}
!661 = !{!"function_entry_count", i64 9774}
!662 = !{!591, !362, i64 72}
!663 = !{!"function_entry_count", i64 2192223}
!664 = !{!665, !362, i64 32}
!665 = !{!"_ZTSN11xercesc_2_75QNameE", !371, i64 0, !354, i64 8, !354, i64 12, !354, i64 16, !354, i64 20, !362, i64 24, !362, i64 32, !362, i64 40, !362, i64 48}
!666 = !{!"function_entry_count", i64 6553673}
!667 = !{!665, !354, i64 20}
!668 = !{!669, !670, i64 48}
!669 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40, !670, i64 48, !671, i64 52, !361, i64 56, !362, i64 64, !362, i64 72}
!670 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !355, i64 0}
!671 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !355, i64 0}
!672 = !{!"function_entry_count", i64 10519225}
!673 = !{!674, !354, i64 4}
!674 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !361, i64 0, !354, i64 4, !354, i64 8, !362, i64 16, !362, i64 24}
!675 = !{!674, !362, i64 24}
!676 = !{!"branch_weights", i32 4843158, i32 1}
!677 = !{!674, !362, i64 16}
!678 = !{!679, !362, i64 40}
!679 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !680, i64 8, !362, i64 16, !354, i64 24, !362, i64 32, !362, i64 40}
!680 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !355, i64 0}
!681 = !{!"function_entry_count", i64 496246}
!682 = !{!683, !354, i64 28}
!683 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !362, i64 0, !361, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !362, i64 32}
!684 = !{!"function_entry_count", i64 5836268}
!685 = !{!642, !362, i64 32}
!686 = !{!646, !362, i64 8}
!687 = distinct !{!687, !439}
!688 = distinct !{!688, !439}
!689 = distinct !{!689, !439}
!690 = !{!"branch_weights", i32 14, i32 349756}
!691 = !{!692, !362, i64 0}
!692 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !362, i64 0, !362, i64 8, !362, i64 16, !354, i64 24}
!693 = !{!"function_entry_count", i64 349781}
!694 = !{!683, !362, i64 32}
!695 = !{!683, !354, i64 24}
!696 = !{!683, !362, i64 0}
!697 = !{!683, !362, i64 16}
!698 = !{!"branch_weights", i32 1, i32 215}
!699 = !{!692, !354, i64 24}
!700 = !{!"branch_weights", i32 349756, i32 1}
!701 = !{!692, !362, i64 16}
!702 = !{!"branch_weights", i32 215, i32 2797833}
!703 = distinct !{!703, !439}
!704 = !{!705, !362, i64 40}
!705 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !362, i64 0, !361, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !354, i64 32, !362, i64 40}
!706 = !{!705, !354, i64 24}
!707 = !{!705, !362, i64 0}
!708 = !{!705, !362, i64 16}
!709 = !{!538, !362, i64 16}
!710 = distinct !{!710, !439}
!711 = !{!"function_entry_count", i64 392957}
!712 = !{!547, !362, i64 40}
!713 = !{!"branch_weights", i32 1, i32 909}
!714 = !{!"branch_weights", i32 392049, i32 30}
!715 = !{!"branch_weights", i32 909, i32 391169}
!716 = distinct !{!716, !439}
!717 = !{!544, !362, i64 8}
!718 = distinct !{!718, !439}
!719 = distinct !{!719, !439}
!720 = !{!721, !362, i64 0}
!721 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !362, i64 0, !362, i64 8}
!722 = !{!721, !362, i64 8}
!723 = !{!"branch_weights", i32 843, i32 30}
!724 = !{!"branch_weights", i32 1, i32 30}
!725 = !{!"branch_weights", i32 30, i32 0}
!726 = distinct !{!726, !439}
!727 = !{!558, !362, i64 32}
!728 = distinct !{!728, !439}
!729 = !{!562, !362, i64 8}
!730 = distinct !{!730, !439}
!731 = distinct !{!731, !439}
!732 = distinct !{!732, !439}
!733 = !{!734, !362, i64 0}
!734 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEE", !362, i64 0, !362, i64 8}
!735 = !{!734, !362, i64 8}
!736 = !{!"function_entry_count", i64 170}
!737 = !{!738, !362, i64 40}
!738 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !362, i64 0, !361, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !354, i64 32, !362, i64 40}
!739 = !{!738, !354, i64 24}
!740 = !{!738, !362, i64 0}
!741 = !{!738, !362, i64 16}
!742 = !{!"branch_weights", i32 1, i32 251}
!743 = !{!605, !362, i64 16}
!744 = !{!"branch_weights", i32 109, i32 30}
!745 = !{!"branch_weights", i32 251, i32 301}
!746 = distinct !{!746, !439}
!747 = !{!748, !354, i64 12}
!748 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEEE", !361, i64 8, !354, i64 12, !354, i64 16, !362, i64 24, !362, i64 32}
!749 = !{!748, !362, i64 24}
!750 = !{!"function_entry_count", i64 188992}
!751 = !{!752, !362, i64 24}
!752 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !361, i64 8, !354, i64 12, !354, i64 16, !362, i64 24, !362, i64 32}
!753 = !{!752, !354, i64 12}
!754 = !{!748, !362, i64 32}
!755 = !{!748, !354, i64 16}
!756 = distinct !{!756, !439}
!757 = !{!752, !354, i64 16}
!758 = !{!"branch_weights", i32 10, i32 188984}
!759 = !{!752, !362, i64 32}
!760 = !{!"branch_weights", i32 1, i32 159}
!761 = !{!"branch_weights", i32 159, i32 1}
!762 = !{!"branch_weights", i32 159, i32 9329}
!763 = distinct !{!763, !439}
!764 = distinct !{!764, !439}
!765 = !{!472, !354, i64 16}
!766 = !{!"branch_weights", i32 1, i32 11}
!767 = distinct !{!767, !439}
!768 = distinct !{!768, !439}
!769 = distinct !{!769, !439}
!770 = distinct !{!770, !439}
!771 = !{!772, !362, i64 0}
!772 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEE", !362, i64 0, !362, i64 8}
!773 = !{!772, !362, i64 8}
!774 = !{!"branch_weights", i32 191816, i32 52060}
!775 = !{!"branch_weights", i32 1, i32 52060}
!776 = !{!"function_entry_count", i64 211020}
!777 = !{!665, !362, i64 24}
!778 = !{!"function_entry_count", i64 8985736}
!779 = !{!"function_entry_count", i64 7478295}
!780 = !{!363, !362, i64 16}
!781 = !{!"function_entry_count", i64 5190970}
!782 = !{!783, !362, i64 163968}
!783 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !354, i64 0, !355, i64 4, !354, i64 32772, !355, i64 32776, !355, i64 49160, !360, i64 114696, !360, i64 114704, !784, i64 114712, !362, i64 114720, !361, i64 114728, !361, i64 114729, !362, i64 114736, !354, i64 114744, !355, i64 114748, !354, i64 163900, !354, i64 163904, !785, i64 163908, !361, i64 163912, !786, i64 163916, !354, i64 163920, !361, i64 163924, !361, i64 163925, !362, i64 163928, !362, i64 163936, !361, i64 163944, !361, i64 163945, !362, i64 163952, !787, i64 163960, !362, i64 163968, !361, i64 163976, !365, i64 163980, !362, i64 163984}
!784 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !355, i64 0}
!785 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !355, i64 0}
!786 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !355, i64 0}
!787 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !355, i64 0}
!788 = !{!355, !355, i64 0}
!789 = !{!"function_entry_count", i64 3}
!790 = !{!358, !361, i64 29}
!791 = !{!358, !361, i64 30}
!792 = !{!380, !362, i64 880}
!793 = !{!358, !362, i64 288}
!794 = !{!358, !362, i64 304}
!795 = !{!358, !361, i64 25}
!796 = !{!358, !362, i64 144}
!797 = !{!358, !361, i64 19}
!798 = !{!380, !362, i64 864}
!799 = !{!358, !366, i64 272}
!800 = !{!358, !361, i64 38}
!801 = !{!358, !362, i64 120}
!802 = !{!358, !362, i64 136}
!803 = !{!"branch_weights", i32 3, i32 2}
!804 = !{!380, !362, i64 888}
!805 = !{!358, !354, i64 56}
!806 = !{!358, !354, i64 68}
!807 = !{!358, !361, i64 21}
!808 = !{!358, !354, i64 40}
!809 = !{!358, !361, i64 23}
!810 = !{!380, !361, i64 776}
!811 = !{!380, !362, i64 968}
!812 = !{!380, !362, i64 976}
!813 = !{!380, !362, i64 872}
!814 = !{!358, !361, i64 17}
!815 = !{!358, !362, i64 344}
!816 = !{!358, !354, i64 44}
!817 = !{!358, !354, i64 48}
!818 = !{!358, !354, i64 88}
!819 = !{!380, !362, i64 904}
!820 = !{!821, !361, i64 1}
!821 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !361, i64 0, !361, i64 1, !361, i64 2, !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40, !362, i64 48, !362, i64 56, !362, i64 64, !362, i64 72}
!822 = !{!460, !362, i64 56}
!823 = !{!358, !362, i64 168}
!824 = !{!358, !361, i64 176}
!825 = !{!"function_entry_count", i64 12}
!826 = !{!461, !362, i64 16}
!827 = !{!"function_entry_count", i64 190248}
!828 = !{!"branch_weights", i32 189545, i32 705}
!829 = !{!"branch_weights", i32 1, i32 704}
!830 = !{!"branch_weights", i32 4167, i32 886}
!831 = !{!"branch_weights", i32 886, i32 0}
!832 = distinct !{!832, !439}
!833 = !{!"branch_weights", i32 4349, i32 704}
!834 = distinct !{!834, !439}
!835 = !{!"function_entry_count", i64 190056}
!836 = !{!"branch_weights", i32 190057, i32 1}
!837 = distinct !{!837, !439}
!838 = distinct !{!838, !439}
!839 = !{!"function_entry_count", i64 9}
!840 = !{!841, !354, i64 32}
!841 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !362, i64 0, !362, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !354, i64 32}
!842 = !{!841, !354, i64 28}
!843 = !{!841, !362, i64 8}
!844 = !{!"branch_weights", i32 454, i32 48}
!845 = !{!846, !362, i64 8}
!846 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !362, i64 0, !362, i64 8}
!847 = !{!846, !362, i64 0}
!848 = !{!841, !362, i64 0}
!849 = !{!"branch_weights", i32 48, i32 0}
!850 = distinct !{!850, !439}
!851 = !{!"branch_weights", i32 7873, i32 159}
!852 = distinct !{!852, !439}
!853 = !{!"function_entry_count", i64 5}
!854 = !{!462, !362, i64 16}
!855 = !{!462, !361, i64 8}
!856 = !{!857, !361, i64 0}
!857 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !361, i64 0, !354, i64 4, !354, i64 8, !362, i64 16, !362, i64 24}
!858 = !{!857, !354, i64 4}
!859 = !{!857, !354, i64 8}
!860 = !{!857, !362, i64 16}
!861 = !{!857, !362, i64 24}
!862 = !{!"function_entry_count", i64 1512649}
!863 = !{!"branch_weights", i32 1, i32 1512650}
!864 = !{!"branch_weights", i32 1136, i32 1511515}
!865 = !{!"branch_weights", i32 1511515, i32 1}
!866 = !{!"branch_weights", i32 335387, i32 1176129}
!867 = !{!868, !362, i64 0}
!868 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !362, i64 0, !354, i64 8, !354, i64 12, !354, i64 16, !362, i64 24, !362, i64 32, !354, i64 40, !354, i64 44, !361, i64 48, !361, i64 49, !361, i64 50, !354, i64 52, !362, i64 56, !354, i64 64, !362, i64 72, !354, i64 80, !354, i64 84}
!869 = !{!"branch_weights", i32 3652, i32 2147479996}
!870 = !{!"branch_weights", i32 925595, i32 585921}
!871 = !{!"branch_weights", i32 3220, i32 -1355568639, i32 41480040}
!872 = !{!"branch_weights", i32 1, i32 912715}
!873 = !{!"branch_weights", i32 12881, i32 1}
!874 = !{!"branch_weights", i32 1, i32 12881}
!875 = !{!"branch_weights", i32 585921, i32 1}
!876 = !{!"branch_weights", i32 250535, i32 335387}
!877 = !{!"branch_weights", i32 214122, i32 121266}
!878 = !{!"branch_weights", i32 1, i32 585921}
!879 = !{!"branch_weights", i32 1, i32 1136}
!880 = !{!"function_entry_count", i64 2728090}
!881 = !{!"function_entry_count", i64 3529098}
!882 = !{!"function_entry_count", i64 3338153}
!883 = !{!469, !354, i64 32}
!884 = !{!"function_entry_count", i64 598800}
!885 = !{!"function_entry_count", i64 2264622}
!886 = !{!"branch_weights", i32 2211, i32 -1790808443}
!887 = !{!888, !362, i64 24}
!888 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40}
!889 = !{!"function_entry_count", i64 2718768}
!890 = !{!"branch_weights", i32 1, i32 2718769}
!891 = !{!"branch_weights", i32 2718765, i32 5}
!892 = !{!"function_entry_count", i64 3930443}
!893 = !{!894, !354, i64 0}
!894 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !354, i64 0, !362, i64 8, !362, i64 16}
!895 = !{!"branch_weights", i32 3, i32 3}
!896 = !{!"branch_weights", i32 1, i32 3}
!897 = !{!"branch_weights", i32 1, i32 7}
!898 = !{!"branch_weights", i32 1, i32 5}
!899 = !{!"function_entry_count", i64 190050}
!900 = !{!"branch_weights", i32 190050, i32 1}
!901 = !{!380, !362, i64 840}
!902 = !{!"branch_weights", i32 2, i32 4}
!903 = !{!"branch_weights", i32 190050, i32 1766}
!904 = distinct !{!904, !439}
!905 = !{!358, !361, i64 26}
!906 = !{!"branch_weights", i32 6112600, i32 -2049700148}
!907 = !{!"branch_weights", i32 189536, i32 1}
!908 = !{!"branch_weights", i32 191164, i32 3}
!909 = !{!"branch_weights", i32 2, i32 191165}
!910 = !{!"branch_weights", i32 2, i32 1}
!911 = !{!"branch_weights", i32 1, i32 2}
!912 = !{!"branch_weights", i32 189536, i32 1630}
!913 = distinct !{!913, !439}
!914 = !{!"branch_weights", i32 1, i32 189537}
!915 = !{!"branch_weights", i32 189537, i32 1}
!916 = !{!"function_entry_count", i64 574788}
!917 = !{!"branch_weights", i32 574789, i32 1}
!918 = !{!"function_entry_count", i64 695}
!919 = !{!380, !362, i64 896}
!920 = !{!"branch_weights", i32 1, i32 127}
!921 = distinct !{!921, !439}
!922 = !{!923, !362, i64 0}
!923 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !362, i64 0, !362, i64 8, !360, i64 16, !360, i64 24}
!924 = !{!358, !361, i64 37}
!925 = !{!358, !361, i64 16}
!926 = !{!460, !361, i64 72}
!927 = !{!460, !362, i64 64}
!928 = !{!460, !362, i64 40}
!929 = !{!"function_entry_count", i64 52059}
!930 = !{!931, !354, i64 4}
!931 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPtEE", !361, i64 0, !354, i64 4, !354, i64 8, !362, i64 16, !362, i64 24}
!932 = !{!"branch_weights", i32 3, i32 1}
!933 = !{!931, !362, i64 24}
!934 = !{!931, !362, i64 16}
!935 = !{!936, !937, i64 0}
!936 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !937, i64 0, !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40}
!937 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !355, i64 0}
!938 = !{!936, !362, i64 8}
!939 = !{!936, !362, i64 16}
!940 = !{!936, !362, i64 24}
!941 = !{!936, !362, i64 32}
!942 = !{!936, !362, i64 40}
!943 = !{!944, !362, i64 0}
!944 = !{!"_ZTSN11xercesc_2_77JanitorINS_11InputSourceEEE", !362, i64 0}
!945 = !{!946, !361, i64 224}
!946 = !{!"_ZTSN11xercesc_2_712XSDDOMParserE", !947, i64 0, !361, i64 224, !354, i64 228, !354, i64 232, !354, i64 236, !362, i64 240, !362, i64 248, !362, i64 256, !368, i64 264, !462, i64 304, !954, i64 328}
!947 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !948, i64 0, !362, i64 200, !362, i64 208, !362, i64 216}
!948 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !949, i64 0, !950, i64 8, !951, i64 16, !952, i64 24, !953, i64 32, !361, i64 40, !361, i64 41, !361, i64 42, !361, i64 43, !361, i64 44, !361, i64 45, !361, i64 46, !362, i64 48, !362, i64 56, !362, i64 64, !362, i64 72, !362, i64 80, !362, i64 88, !362, i64 96, !362, i64 104, !362, i64 112, !362, i64 120, !362, i64 128, !362, i64 136, !362, i64 144, !362, i64 152, !367, i64 160, !362, i64 184, !362, i64 192}
!949 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!950 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!951 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!952 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!953 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!954 = !{!"_ZTSN11xercesc_2_710XSDLocatorE", !364, i64 0, !360, i64 8, !360, i64 16, !362, i64 24, !362, i64 32}
!955 = !{!"function_entry_count", i64 833852}
!956 = !{!369, !362, i64 48}
!957 = !{!369, !354, i64 60}
!958 = !{!868, !361, i64 48}
!959 = !{!"branch_weights", i32 191816, i32 2090101}
!960 = !{!"branch_weights", i32 1, i32 2090101}
!961 = !{!"branch_weights", i32 2090101, i32 1}
!962 = distinct !{!962, !439}
!963 = !{!"function_entry_count", i64 4926602}
!964 = !{!"function_entry_count", i64 3115354}
!965 = !{!783, !354, i64 163904}
!966 = !{!"function_entry_count", i64 222}
!967 = !{!"branch_weights", i32 223, i32 1}
!968 = !{!"branch_weights", i32 1, i32 3833}
!969 = !{!"branch_weights", i32 223, i32 3611}
!970 = !{!"branch_weights", i32 1, i32 3611}
!971 = distinct !{!971, !439}
!972 = !{!"branch_weights", i32 3611, i32 1}
!973 = !{!"branch_weights", i32 3611, i32 13042933}
!974 = !{!"function_entry_count", i64 1275875}
!975 = !{!520, !361, i64 32}
!976 = !{!"function_entry_count", i64 680336}
!977 = !{!"branch_weights", i32 -1158909641, i32 2474}
!978 = !{!"branch_weights", i32 1021645, i32 1512650}
!979 = !{!"branch_weights", i32 1512650, i32 1}
!980 = !{!"branch_weights", i32 1, i32 1021645}
!981 = distinct !{!981, !439}
!982 = !{!"branch_weights", i32 1021645, i32 1}
!983 = !{!"branch_weights", i32 -217785632, i32 3990, i32 3990}
!984 = distinct !{!984, !439}
!985 = !{!"branch_weights", i32 1678314, i32 -2063836832}
!986 = !{!"branch_weights", i32 1275876, i32 235640}
!987 = !{!"branch_weights", i32 1, i32 1275876}
!988 = !{!"function_entry_count", i64 4539474}
!989 = !{!990, !361, i64 0}
!990 = !{!"_ZTSN11xercesc_2_715ThrowEOEJanitorE", !361, i64 0, !362, i64 8}
!991 = !{!990, !362, i64 8}
!992 = !{!"function_entry_count", i64 2534293}
!993 = !{!"function_entry_count", i64 2194501}
!994 = !{!868, !361, i64 50}
!995 = !{!996, !362, i64 0}
!996 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !362, i64 0, !354, i64 8}
!997 = !{!363, !361, i64 56}
!998 = !{!"function_entry_count", i64 9078948}
!999 = !{!783, !354, i64 0}
!1000 = !{!783, !354, i64 32772}
!1001 = !{!"branch_weights", i32 2493, i32 1}
!1002 = !{!"branch_weights", i32 39432941, i32 2531801}
!1003 = !{!"branch_weights", i32 41962248, i32 2493}
!1004 = distinct !{!1004, !439}
!1005 = !{!"branch_weights", i32 1641493687, i32 505989961}
!1006 = !{!783, !360, i64 114696}
!1007 = !{!"function_entry_count", i64 41964740}
!1008 = !{!"branch_weights", i32 2531801, i32 2494}
!1009 = !{!783, !361, i64 114729}
!1010 = !{!"branch_weights", i32 2494, i32 1}
!1011 = !{!"branch_weights", i32 1512650, i32 1021645}
!1012 = !{!"branch_weights", i32 1019521, i32 2125}
!1013 = !{!358, !361, i64 18}
!1014 = !{!"function_entry_count", i64 1025276}
!1015 = !{!"function_entry_count", i64 612}
!1016 = !{!1017, !362, i64 32}
!1017 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !535, i64 0, !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40, !362, i64 48, !354, i64 56, !361, i64 60}
!1018 = !{!1019, !362, i64 40}
!1019 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !371, i64 0, !354, i64 8, !354, i64 12, !362, i64 16, !362, i64 24, !362, i64 32, !362, i64 40, !362, i64 48, !362, i64 56, !362, i64 64}
!1020 = !{!1019, !362, i64 32}
!1021 = !{!1019, !362, i64 56}
!1022 = !{!1019, !362, i64 48}
!1023 = !{!1019, !362, i64 24}
!1024 = !{!1019, !362, i64 16}
!1025 = !{!1019, !354, i64 12}
!1026 = distinct !{!1026, !439}
!1027 = !{!1028, !362, i64 0}
!1028 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !362, i64 0, !362, i64 8}
!1029 = !{!1030, !354, i64 32}
!1030 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !362, i64 0, !362, i64 8, !362, i64 16, !354, i64 24, !354, i64 28, !354, i64 32}
!1031 = !{!1030, !362, i64 0}
!1032 = !{!1030, !362, i64 8}
!1033 = !{!"branch_weights", i32 5, i32 1}
!1034 = !{!"branch_weights", i32 1, i32 0}
!1035 = distinct !{!1035, !439}
!1036 = !{!"function_entry_count", i64 4646679}
!1037 = !{!"branch_weights", i32 1, i32 4646680}
!1038 = !{!"branch_weights", i32 1216534, i32 3430147}
!1039 = !{!"branch_weights", i32 1, i32 3430146}
!1040 = !{!"branch_weights", i32 3430146, i32 42249130}
!1041 = distinct !{!1041, !439}
!1042 = !{!"function_entry_count", i64 496163}
!1043 = !{!"branch_weights", i32 1, i32 496164}
!1044 = !{!"branch_weights", i32 -2705, i32 2705}
!1045 = !{!"branch_weights", i32 7752, i32 -448417124, i32 0}
!1046 = !{!"branch_weights", i32 496164, i32 1}
!1047 = !{!380, !362, i64 792}
!1048 = distinct !{!1048, !439}
!1049 = !{!1050, !362, i64 0}
!1050 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !362, i64 0, !362, i64 8}
!1051 = !{!1050, !362, i64 8}
!1052 = !{!591, !362, i64 104}
!1053 = !{!"function_entry_count", i64 832990}
!1054 = !{!1055, !354, i64 4}
!1055 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !361, i64 0, !354, i64 4, !354, i64 8, !362, i64 16, !362, i64 24}
!1056 = !{!"function_entry_count", i64 832914}
!1057 = !{!"branch_weights", i32 832915, i32 1}
!1058 = !{!1055, !362, i64 24}
!1059 = !{!1055, !362, i64 16}
