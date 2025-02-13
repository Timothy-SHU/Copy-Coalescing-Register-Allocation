; ModuleID = 'SGXMLScanner.cpp'
source_filename = "SGXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"struct.xercesc_2_7::PSVIElemContext" = type { i8, i8, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall.0" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::ThrowEOEJanitor" = type { i8, ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::IdentityConstraintHandler" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::ValueStackOf.1" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.2" }
%"class.xercesc_2_7::ValueVectorOf.2" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::XMLSchemaDescriptionImpl" = type { %"class.xercesc_2_7::XMLSchemaDescription", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLSchemaDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XMLGrammarDescription" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::XSDDOMParser" = type { %"class.xercesc_2_7::XercesDOMParser", i8, i32, i32, i32, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XSDErrorReporter", %"class.xercesc_2_7::XSDLocator" }
%"class.xercesc_2_7::XercesDOMParser" = type { %"class.xercesc_2_7::AbstractDOMParser", ptr, ptr, ptr }
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XSDLocator" = type { %"class.xercesc_2_7::Locator", i64, i64, ptr, ptr }
%"class.xercesc_2_7::Janitor.17" = type { ptr }
%"class.xercesc_2_7::TraverseSchema" = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, ptr, ptr, %"class.xercesc_2_7::GeneralAttributeCheck" }
%"class.xercesc_2_7::GeneralAttributeCheck" = type { ptr, ptr, %"class.xercesc_2_7::IDDatatypeValidator" }
%"class.xercesc_2_7::IDDatatypeValidator" = type { %"class.xercesc_2_7::StringDatatypeValidator" }
%"class.xercesc_2_7::StringDatatypeValidator" = type { %"class.xercesc_2_7::AbstractStringValidator" }
%"class.xercesc_2_7::AbstractStringValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i32, i32, i32, i8, ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::PSVIAttributeList" = type <{ ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i16, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.4" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSSimpleTypeDefinition" = type { %"class.xercesc_2_7::XSTypeDefinition", i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.10" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem.11" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHashTableOf.8" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.13" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.14" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.15" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.9" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.16" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.6" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.7" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.18" = type { i8, i32, i32, ptr, ptr }

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712SGXMLScanner7getNameEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEED2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv = comdat any

$_ZNK11xercesc_2_712XMLException12getErrorTypeEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_720EndOfEntityException9getEntityEv = comdat any

$_ZNK11xercesc_2_79ElemStack7isEmptyEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_79ReaderMgr10skipToCharEt = comdat any

$_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv = comdat any

$_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv = comdat any

$_ZN11xercesc_2_725IdentityConstraintHandler11endDocumentEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_715ValueStoreCache11endDocumentEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE4sizeEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt = comdat any

$_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi = comdat any

$_ZNK11xercesc_2_79XMLBuffer7isEmptyEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79ReaderMgr12skipPastCharEt = comdat any

$_ZNK11xercesc_2_79XMLBuffer6getLenEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712KVStringPair6setKeyEPKtj = comdat any

$_ZN11xercesc_2_712KVStringPair8setValueEPKtj = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79ElemStack13getCurrentURIEv = comdat any

$_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt = comdat any

$_ZN11xercesc_2_712ValueStackOfIbE3popEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator7getTypeEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv = comdat any

$_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIbE4pushERKb = comdat any

$_ZN11xercesc_2_712ValueStackOfIbE4sizeEv = comdat any

$_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv = comdat any

$_ZN11xercesc_2_79ElemStack17getValidationFlagEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIbE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj = comdat any

$_ZNK11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb = comdat any

$_ZN11xercesc_2_79ElemStack15getCurrentScopeEv = comdat any

$_ZN11xercesc_2_79ElemStack17setValidationFlagEb = comdat any

$_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii = comdat any

$_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl5setIdEj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE = comdat any

$_ZN11xercesc_2_79ElemStack13setCurrentURIEj = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv = comdat any

$_ZN11xercesc_2_79XMLString10startsWithEPKtS2_ = comdat any

$_ZN11xercesc_2_79ElemStack15setCurrentScopeEi = comdat any

$_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE = comdat any

$_ZN11xercesc_2_712XMLValidator16checkRootElementEj = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv = comdat any

$_ZN11xercesc_2_717PSVIAttributeList5resetEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl6getURIEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv = comdat any

$_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_ = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItED2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev = comdat any

$_ZN11xercesc_2_717PSVIAttributeListD2Ev = comdat any

$_ZN11xercesc_2_712ValueStackOfIbED2Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbED2Ev = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZNK11xercesc_2_712KVStringPair6getKeyEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_712ArrayJanitorItEixEi = comdat any

$_ZNK11xercesc_2_712ArrayJanitorItE3getEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv = comdat any

$_ZN11xercesc_2_717SchemaElementDecl14getAttWildCardEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE11containsKeyEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZNK11xercesc_2_712KVStringPair8getValueEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv = comdat any

$_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_ = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZN11xercesc_2_77XMLAttr12setSpecifiedEb = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_713getAttDefListEPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef10isExternalEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_713PSVIAttribute14updateValidityENS_8PSVIItem14VALIDITY_STATEE = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE = comdat any

$_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner22resetValidationContextEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_712ValueStackOfIbE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt = comdat any

$_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv = comdat any

$_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv = comdat any

$_ZN11xercesc_2_715SchemaValidator11setNillableEb = comdat any

$_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j = comdat any

$_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE5resetEPS2_ = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierD2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_ = comdat any

$_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_ = comdat any

$_ZNK11xercesc_2_79XMLReader9isXMLCharEt = comdat any

$_ZNK11xercesc_2_714XMLElementDecl10isExternalEv = comdat any

$_ZNK11xercesc_2_79XMLBufBid6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb = comdat any

$_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorD2Ev = comdat any

$_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv = comdat any

$_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb = comdat any

$_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt = comdat any

$_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt = comdat any

$_ZNK11xercesc_2_79XMLBufBid7isEmptyEv = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev = comdat any

$_ZNK11xercesc_2_712SchemaAttDef16getNamespaceListEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTIN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_712SGXMLScannerE = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SGXMLScannerE, ptr @_ZN11xercesc_2_712SGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712SGXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712SGXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712SGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_, ptr @_ZN11xercesc_2_712SGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_712SGXMLScanner10scanEndTagERb] }, align 8
@_ZTSN11xercesc_2_712SGXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712SGXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712SGXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SGXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [17 x i8] c"SGXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEvE9doctypeIE = internal constant [3 x i16] [i16 91, i16 62, i16 0], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni5fgAmpE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L11chAmpersandE = internal constant i16 38, align 2
@_ZN11xercesc_2_76XMLUni4fgLTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L11chOpenAngleE = internal constant i16 60, align 2
@_ZN11xercesc_2_76XMLUni4fgGTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L12chCloseAngleE = internal constant i16 62, align 2
@_ZN11xercesc_2_76XMLUni6fgQuotE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13chDoubleQuoteE = internal constant i16 34, align 2
@_ZN11xercesc_2_76XMLUni6fgAposE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13chSingleQuoteE = internal constant i16 39, align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_711RefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.5 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
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
@_ZZN11xercesc_2_712SGXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712SGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712SGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712SGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712SGXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712SGXMLScannerD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !177
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !180
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SGXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !176 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !176 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #1 align 2 !prof !176 {
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #14
  store i32 %6, ptr %4, align 4, !tbaa !200
  %7 = tail call noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %6) #14
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !201
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !177
  %9 = getelementptr inbounds ptr, ptr %8, i64 15
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %11 unwind label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !177
  %17 = getelementptr inbounds ptr, ptr %16, i64 10
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %13) #14
          to label %49 unwind label %19

19:                                               ; preds = %68, %64, %61, %60, %54, %53, %50, %49, %15, %2
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #15
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %28
  %26 = call ptr @__cxa_begin_catch(ptr %21) #15
  call void @__cxa_end_catch() #15
  br label %27

27:                                               ; preds = %25, %104, %65, %68
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void

28:                                               ; preds = %19
  %29 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #15
  %30 = icmp eq i32 %22, %29
  br i1 %30, label %25, label %31

31:                                               ; preds = %28
  %32 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %33 = icmp eq i32 %22, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call ptr @__cxa_begin_catch(ptr %21) #15
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %36, align 1, !tbaa !203
  %37 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !177
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
          to label %95 unwind label %77

44:                                               ; preds = %31
  %45 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %46 = icmp eq i32 %22, %45
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = call ptr @__cxa_begin_catch(ptr %21) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #16
          to label %120 unwind label %72

49:                                               ; preds = %15, %11
  invoke void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %50 unwind label %19

50:                                               ; preds = %49
  %51 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
          to label %52 unwind label %19

52:                                               ; preds = %50
  br i1 %51, label %53, label %54

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 279) #14
          to label %65 unwind label %19

54:                                               ; preds = %52
  %55 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
          to label %56 unwind label %19

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %58 = load i8, ptr %57, align 8, !tbaa !204, !range !205, !noundef !206
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %61 unwind label %19

61:                                               ; preds = %60, %56
  %62 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
          to label %63 unwind label %19

63:                                               ; preds = %61
  br i1 %62, label %65, label %64

64:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %65 unwind label %19

65:                                               ; preds = %64, %63, %53
  %66 = load ptr, ptr %12, align 8, !tbaa !202
  %67 = icmp eq ptr %66, null
  br i1 %67, label %27, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !177
  %70 = getelementptr inbounds ptr, ptr %69, i64 5
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %66) #14
          to label %27 unwind label %19

72:                                               ; preds = %47
  %73 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %74 unwind label %117

74:                                               ; preds = %72
  %75 = extractvalue { ptr, i32 } %73, 1
  %76 = extractvalue { ptr, i32 } %73, 0
  br label %112

77:                                               ; preds = %95, %93, %91, %39
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %79 = extractvalue { ptr, i32 } %78, 0
  %80 = extractvalue { ptr, i32 } %78, 1
  %81 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %77
  %84 = call ptr @__cxa_begin_catch(ptr %79) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #16
          to label %120 unwind label %99

85:                                               ; preds = %34
  %86 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  %87 = icmp sgt i32 %86, 1
  %88 = load ptr, ptr %35, align 8, !tbaa !177
  %89 = getelementptr inbounds ptr, ptr %88, i64 2
  %90 = load ptr, ptr %89, align 8
  br i1 %87, label %91, label %93

91:                                               ; preds = %85
  %92 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
          to label %95 unwind label %77

93:                                               ; preds = %85
  %94 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
          to label %95 unwind label %77

95:                                               ; preds = %93, %91, %39
  %96 = phi i32 [ 7, %39 ], [ 292, %91 ], [ 157, %93 ]
  %97 = phi ptr [ %43, %39 ], [ %92, %91 ], [ %94, %93 ]
  %98 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %96, ptr noundef %97, ptr noundef %98, ptr noundef null, ptr noundef null) #14
          to label %104 unwind label %77

99:                                               ; preds = %83
  %100 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %101 unwind label %117

101:                                              ; preds = %99
  %102 = extractvalue { ptr, i32 } %100, 1
  %103 = extractvalue { ptr, i32 } %100, 0
  br label %109

104:                                              ; preds = %95
  invoke void @__cxa_end_catch()
          to label %27 unwind label %105

105:                                              ; preds = %104
  %106 = landingpad { ptr, i32 }
          cleanup
  %107 = extractvalue { ptr, i32 } %106, 0
  %108 = extractvalue { ptr, i32 } %106, 1
  br label %112

109:                                              ; preds = %101, %77
  %110 = phi i32 [ %102, %101 ], [ %80, %77 ]
  %111 = phi ptr [ %103, %101 ], [ %79, %77 ]
  invoke void @__cxa_end_catch()
          to label %112 unwind label %117

112:                                              ; preds = %105, %109, %74, %44
  %113 = phi i32 [ %75, %74 ], [ %22, %44 ], [ %108, %105 ], [ %110, %109 ]
  %114 = phi ptr [ %76, %74 ], [ %21, %44 ], [ %107, %105 ], [ %111, %109 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %115 = insertvalue { ptr, i32 } poison, ptr %114, 0
  %116 = insertvalue { ptr, i32 } %115, i32 %113, 1
  resume { ptr, i32 } %116

117:                                              ; preds = %109, %99, %72
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  call void @__clang_call_terminate(ptr %119) #17
  unreachable

120:                                              ; preds = %83, %47
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %5 = alloca i8, align 1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #14
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 78, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #15
  br label %197

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %17, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #14
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  br label %19

19:                                               ; preds = %39, %16
  %20 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
          to label %21 unwind label %22

21:                                               ; preds = %19
  switch i32 %20, label %68 [
    i32 1, label %46
    i32 4, label %55
  ]

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = call ptr @__cxa_begin_catch(ptr %24) #15
  %30 = load ptr, ptr %18, align 8, !tbaa !202
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %29) #14
  %34 = load ptr, ptr %30, align 8, !tbaa !177
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(72) %33) #14
          to label %39 unwind label %37

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  invoke void @__cxa_end_catch()
          to label %42 unwind label %202

39:                                               ; preds = %32, %28
  invoke void @__cxa_end_catch()
          to label %19 unwind label %40, !llvm.loop !208

40:                                               ; preds = %39
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %38, %37 ]
  %44 = extractvalue { ptr, i32 } %43, 0
  %45 = extractvalue { ptr, i32 } %43, 1
  br label %77

46:                                               ; preds = %21
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %48 = load ptr, ptr %0, align 8, !tbaa !177
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %47) #14
          to label %84 unwind label %51

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %53 = extractvalue { ptr, i32 } %52, 0
  %54 = extractvalue { ptr, i32 } %52, 1
  br label %77

55:                                               ; preds = %21
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %57 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %56) #14
  br i1 %57, label %192, label %58

58:                                               ; preds = %55
  %59 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %56) #14
          to label %60 unwind label %64

60:                                               ; preds = %58
  %61 = load ptr, ptr %59, align 8, !tbaa !210
  %62 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %61) #14
          to label %63 unwind label %64

63:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %62, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %192 unwind label %64

64:                                               ; preds = %63, %60, %58
  %65 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %66 = extractvalue { ptr, i32 } %65, 0
  %67 = extractvalue { ptr, i32 } %65, 1
  br label %77

68:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 1, ptr %5, align 1, !tbaa !212
  switch i32 %20, label %123 [
    i32 0, label %69
    i32 2, label %112
    i32 3, label %113
    i32 5, label %117
    i32 6, label %118
  ]

69:                                               ; preds = %68
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %71 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %70) #14
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280) #14
          to label %108 unwind label %73

73:                                               ; preds = %147, %141, %138, %137, %129, %124, %123, %118, %117, %113, %112, %108, %72
  %74 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %75 = extractvalue { ptr, i32 } %74, 0
  %76 = extractvalue { ptr, i32 } %74, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %77

77:                                               ; preds = %22, %73, %64, %51, %42
  %78 = phi i32 [ %54, %51 ], [ %67, %64 ], [ %76, %73 ], [ %45, %42 ], [ %25, %22 ]
  %79 = phi ptr [ %53, %51 ], [ %66, %64 ], [ %75, %73 ], [ %44, %42 ], [ %24, %22 ]
  %80 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #15
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = call ptr @__cxa_begin_catch(ptr %79) #15
  call void @__cxa_end_catch() #15
  br label %192

84:                                               ; preds = %151, %46
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  br label %192

85:                                               ; preds = %77
  %86 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #15
  %87 = icmp eq i32 %78, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call ptr @__cxa_begin_catch(ptr %79) #15
  call void @__cxa_end_catch() #15
  br label %192

90:                                               ; preds = %85
  %91 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %92 = icmp eq i32 %78, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = call ptr @__cxa_begin_catch(ptr %79) #15
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %95, align 1, !tbaa !203
  %96 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %165

98:                                               ; preds = %93
  %99 = load ptr, ptr %94, align 8, !tbaa !177
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %175 unwind label %157

103:                                              ; preds = %90
  %104 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %105 = icmp eq i32 %78, %104
  br i1 %105, label %106, label %194

106:                                              ; preds = %103
  %107 = call ptr @__cxa_begin_catch(ptr %79) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  invoke void @__cxa_rethrow() #16
          to label %205 unwind label %152

108:                                              ; preds = %72, %69
  %109 = load ptr, ptr %0, align 8, !tbaa !177
  %110 = getelementptr inbounds ptr, ptr %109, i64 11
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
          to label %124 unwind label %73

112:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %124 unwind label %73

113:                                              ; preds = %68
  %114 = load ptr, ptr %0, align 8, !tbaa !177
  %115 = getelementptr inbounds ptr, ptr %114, i64 19
  %116 = load ptr, ptr %115, align 8
  invoke void %116(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %124 unwind label %73

117:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %124 unwind label %73

118:                                              ; preds = %68
  %119 = load ptr, ptr %0, align 8, !tbaa !177
  %120 = getelementptr inbounds ptr, ptr %119, i64 18
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef zeroext i1 %121(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %124 unwind label %73

123:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 60) #14
          to label %124 unwind label %73

124:                                              ; preds = %123, %118, %117, %113, %112, %108
  %125 = load i32, ptr %3, align 4, !tbaa !200
  %126 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %17) #14
          to label %127 unwind label %73

127:                                              ; preds = %124
  %128 = icmp eq i32 %125, %126
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %130 unwind label %73

130:                                              ; preds = %129, %127
  %131 = load i8, ptr %5, align 1, !tbaa !212, !range !205, !noundef !206
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %135 = load i8, ptr %134, align 8, !tbaa !204, !range !205, !noundef !206
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %138 unwind label %73

138:                                              ; preds = %137, %133
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %139 unwind label %73

139:                                              ; preds = %138
  %140 = call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %143 = load ptr, ptr %142, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_725IdentityConstraintHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %143) #14
          to label %144 unwind label %73

144:                                              ; preds = %141, %139
  %145 = load ptr, ptr %18, align 8, !tbaa !202
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %145, align 8, !tbaa !177
  %149 = getelementptr inbounds ptr, ptr %148, i64 5
  %150 = load ptr, ptr %149, align 8
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(8) %145) #14
          to label %151 unwind label %73

151:                                              ; preds = %144, %147, %130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %84

152:                                              ; preds = %106
  %153 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %154 unwind label %202

154:                                              ; preds = %152
  %155 = extractvalue { ptr, i32 } %153, 1
  %156 = extractvalue { ptr, i32 } %153, 0
  br label %194

157:                                              ; preds = %175, %173, %171, %98
  %158 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %159 = extractvalue { ptr, i32 } %158, 0
  %160 = extractvalue { ptr, i32 } %158, 1
  %161 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %157
  %164 = call ptr @__cxa_begin_catch(ptr %159) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  invoke void @__cxa_rethrow() #16
          to label %205 unwind label %179

165:                                              ; preds = %93
  %166 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  %167 = icmp sgt i32 %166, 1
  %168 = load ptr, ptr %94, align 8, !tbaa !177
  %169 = getelementptr inbounds ptr, ptr %168, i64 2
  %170 = load ptr, ptr %169, align 8
  br i1 %167, label %171, label %173

171:                                              ; preds = %165
  %172 = invoke noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %175 unwind label %157

173:                                              ; preds = %165
  %174 = invoke noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %175 unwind label %157

175:                                              ; preds = %173, %171, %98
  %176 = phi i32 [ 7, %98 ], [ 292, %171 ], [ 157, %173 ]
  %177 = phi ptr [ %102, %98 ], [ %172, %171 ], [ %174, %173 ]
  %178 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef null, ptr noundef null) #14
          to label %184 unwind label %157

179:                                              ; preds = %163
  %180 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %181 unwind label %202

181:                                              ; preds = %179
  %182 = extractvalue { ptr, i32 } %180, 1
  %183 = extractvalue { ptr, i32 } %180, 0
  br label %189

184:                                              ; preds = %175
  invoke void @__cxa_end_catch()
          to label %192 unwind label %185

185:                                              ; preds = %184
  %186 = landingpad { ptr, i32 }
          cleanup
  %187 = extractvalue { ptr, i32 } %186, 0
  %188 = extractvalue { ptr, i32 } %186, 1
  br label %194

189:                                              ; preds = %181, %157
  %190 = phi i32 [ %182, %181 ], [ %160, %157 ]
  %191 = phi ptr [ %183, %181 ], [ %159, %157 ]
  invoke void @__cxa_end_catch()
          to label %194 unwind label %202

192:                                              ; preds = %184, %55, %63, %88, %82, %84
  %193 = phi i1 [ true, %84 ], [ false, %82 ], [ false, %88 ], [ false, %63 ], [ false, %55 ], [ false, %184 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i1 %193

194:                                              ; preds = %185, %189, %154, %103
  %195 = phi i32 [ %155, %154 ], [ %78, %103 ], [ %188, %185 ], [ %190, %189 ]
  %196 = phi ptr [ %156, %154 ], [ %79, %103 ], [ %187, %185 ], [ %191, %189 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %197

197:                                              ; preds = %194, %12
  %198 = phi i32 [ %195, %194 ], [ %15, %12 ]
  %199 = phi ptr [ %196, %194 ], [ %14, %12 ]
  %200 = insertvalue { ptr, i32 } poison, ptr %199, 0
  %201 = insertvalue { ptr, i32 } %200, i32 %198, 1
  resume { ptr, i32 } %201

202:                                              ; preds = %189, %179, %152, %37
  %203 = landingpad { ptr, i32 }
          catch ptr null
  %204 = extractvalue { ptr, i32 } %203, 0
  call void @__clang_call_terminate(ptr %204) #17
  unreachable

205:                                              ; preds = %163, %106
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %6, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  invoke void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false) #14
          to label %9 unwind label %17

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !214
  call void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %10, i1 noundef zeroext %3) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %11, align 8, !tbaa !215
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %13 = load i32, ptr %12, align 8, !tbaa !216
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %16, align 8, !tbaa !204
  br label %45

17:                                               ; preds = %52, %4
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #15
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %27
  %24 = call ptr @__cxa_begin_catch(ptr %19) #15
  call void @__cxa_end_catch() #15
  br label %25

25:                                               ; preds = %23, %90, %52, %45
  %26 = phi ptr [ null, %45 ], [ %53, %52 ], [ null, %90 ], [ null, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret ptr %26

27:                                               ; preds = %17
  %28 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #15
  %29 = icmp eq i32 %20, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %27
  %31 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %32 = icmp eq i32 %20, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = call ptr @__cxa_begin_catch(ptr %19) #15
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %35, align 1, !tbaa !203
  %36 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  br label %81

40:                                               ; preds = %30
  %41 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %42 = icmp eq i32 %20, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %40
  %44 = call ptr @__cxa_begin_catch(ptr %19) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #16
          to label %106 unwind label %54

45:                                               ; preds = %15, %9
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %46, align 1, !tbaa !203
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %47, align 2, !tbaa !217
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %48, align 8, !tbaa !218
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %49, align 1, !tbaa !219
  %50 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %50, align 8, !tbaa !220
  %51 = icmp eq i16 %2, 1
  br i1 %51, label %52, label %25

52:                                               ; preds = %45
  %53 = invoke noundef ptr @_ZN11xercesc_2_712SGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3) #14
          to label %25 unwind label %17

54:                                               ; preds = %43
  %55 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %56 unwind label %103

56:                                               ; preds = %54
  %57 = extractvalue { ptr, i32 } %55, 1
  %58 = extractvalue { ptr, i32 } %55, 0
  br label %98

59:                                               ; preds = %81, %77, %73
  %60 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %61 = extractvalue { ptr, i32 } %60, 0
  %62 = extractvalue { ptr, i32 } %60, 1
  %63 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %59
  %66 = call ptr @__cxa_begin_catch(ptr %61) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #16
          to label %106 unwind label %85

67:                                               ; preds = %33
  %68 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  %69 = icmp sgt i32 %68, 1
  %70 = load ptr, ptr %34, align 8, !tbaa !177
  %71 = getelementptr inbounds ptr, ptr %70, i64 2
  %72 = load ptr, ptr %71, align 8
  br i1 %69, label %73, label %77

73:                                               ; preds = %67
  %74 = invoke noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
          to label %75 unwind label %59

75:                                               ; preds = %73
  %76 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  br label %81

77:                                               ; preds = %67
  %78 = invoke noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
          to label %79 unwind label %59

79:                                               ; preds = %77
  %80 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  br label %81

81:                                               ; preds = %38, %75, %79
  %82 = phi i32 [ 157, %79 ], [ 292, %75 ], [ 156, %38 ]
  %83 = phi ptr [ %78, %79 ], [ %74, %75 ], [ %39, %38 ]
  %84 = phi ptr [ %80, %79 ], [ %76, %75 ], [ null, %38 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef null, ptr noundef null) #14
          to label %90 unwind label %59

85:                                               ; preds = %65
  %86 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %87 unwind label %103

87:                                               ; preds = %85
  %88 = extractvalue { ptr, i32 } %86, 1
  %89 = extractvalue { ptr, i32 } %86, 0
  br label %95

90:                                               ; preds = %81
  invoke void @__cxa_end_catch()
          to label %25 unwind label %91

91:                                               ; preds = %90
  %92 = landingpad { ptr, i32 }
          cleanup
  %93 = extractvalue { ptr, i32 } %92, 0
  %94 = extractvalue { ptr, i32 } %92, 1
  br label %98

95:                                               ; preds = %87, %59
  %96 = phi i32 [ %88, %87 ], [ %62, %59 ]
  %97 = phi ptr [ %89, %87 ], [ %61, %59 ]
  invoke void @__cxa_end_catch()
          to label %98 unwind label %103

98:                                               ; preds = %91, %95, %56, %40
  %99 = phi i32 [ %57, %56 ], [ %20, %40 ], [ %94, %91 ], [ %96, %95 ]
  %100 = phi ptr [ %58, %56 ], [ %19, %40 ], [ %93, %91 ], [ %97, %95 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %101 = insertvalue { ptr, i32 } poison, ptr %100, 0
  %102 = insertvalue { ptr, i32 } %101, i32 %99, 1
  resume { ptr, i32 } %102

103:                                              ; preds = %95, %85, %54
  %104 = landingpad { ptr, i32 }
          catch ptr null
  %105 = extractvalue { ptr, i32 } %104, 0
  call void @__clang_call_terminate(ptr %105) #17
  unreachable

106:                                              ; preds = %65, %43
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca [9 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #14
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261) #14
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #14
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #14
  br i1 %8, label %9, label %166

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  %13 = invoke noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %12) #14
          to label %14 unwind label %22

14:                                               ; preds = %9
  %15 = icmp eq ptr %13, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %14
  %17 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %13) #14
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 0, i32 2
  %20 = icmp eq i32 %17, 4
  %21 = select i1 %20, i32 1, i32 %19
  br label %24

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %167

24:                                               ; preds = %16, %14
  %25 = phi i32 [ 2, %14 ], [ %21, %16 ]
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %27 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %26) #14
          to label %28 unwind label %44

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %31 = icmp eq i32 %25, 1
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  br label %33

33:                                               ; preds = %28, %162
  %34 = phi i8 [ %163, %162 ], [ 0, %28 ]
  %35 = phi i8 [ %164, %162 ], [ 0, %28 ]
  %36 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
          to label %37 unwind label %46

37:                                               ; preds = %33
  %38 = icmp eq i16 %36, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264) #14
          to label %40 unwind label %48

40:                                               ; preds = %39
  %41 = call ptr @__cxa_allocate_exception(i64 48) #15
  %42 = load ptr, ptr %32, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull @.str, i32 noundef 4042, i32 noundef 47, ptr noundef %42) #14
          to label %43 unwind label %50

43:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %169 unwind label %48

44:                                               ; preds = %24
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %167

46:                                               ; preds = %150, %33, %65, %72, %148, %162
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %167

48:                                               ; preds = %39, %43, %78
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %167

50:                                               ; preds = %40
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %41) #15
  br label %167

52:                                               ; preds = %37
  %53 = load i8, ptr %29, align 8, !tbaa !204, !range !205, !noundef !206
  %54 = icmp eq i8 %53, 0
  %55 = load i8, ptr %30, align 2, !range !205
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %60 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %59, i16 noundef zeroext %36) #14
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load ptr, ptr %27, align 8, !tbaa !210
  %63 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %62) #14
  %64 = and i1 %31, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load ptr, ptr %11, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %66, i32 noundef 84) #14
          to label %67 unwind label %46

67:                                               ; preds = %65
  %68 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %69

69:                                               ; preds = %61, %67, %58, %52
  %70 = zext i16 %36 to i32
  %71 = icmp eq i16 %36, 93
  br i1 %71, label %72, label %140

72:                                               ; preds = %69
  %73 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner13scanCDSectionEvE10CDataClose) #14
          to label %74 unwind label %46

74:                                               ; preds = %72
  br i1 %73, label %75, label %140

75:                                               ; preds = %74
  %76 = and i8 %34, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %79 unwind label %48

79:                                               ; preds = %78, %75
  %80 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %81 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %82 = load i8, ptr %29, align 8, !tbaa !204, !range !205, !noundef !206
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %111, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %11, align 8, !tbaa !221
  %86 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %85) #14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %84
  %89 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %86) #14
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %11, align 8, !tbaa !221
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %92, ptr noundef nonnull %86, ptr noundef %81, ptr noundef nonnull align 8 dereferenceable(40) %93) #14
          to label %94 unwind label %99

94:                                               ; preds = %91
  %95 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %93) #14
  %96 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %93) #14
  br label %101

97:                                               ; preds = %134, %121, %115
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %167

99:                                               ; preds = %107, %101, %91
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %167

101:                                              ; preds = %94, %88, %84
  %102 = phi i32 [ %96, %94 ], [ %80, %88 ], [ %80, %84 ]
  %103 = phi ptr [ %95, %94 ], [ %81, %88 ], [ %81, %84 ]
  %104 = load ptr, ptr %11, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %104, ptr noundef %103) #14
          to label %105 unwind label %99

105:                                              ; preds = %101
  %106 = icmp eq i32 %25, 2
  br i1 %106, label %111, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %11, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %108, i32 noundef 22) #14
          to label %109 unwind label %99

109:                                              ; preds = %107
  %110 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %111

111:                                              ; preds = %105, %109, %79
  %112 = phi i32 [ %80, %79 ], [ %102, %109 ], [ %102, %105 ]
  %113 = phi ptr [ %81, %79 ], [ %103, %109 ], [ %103, %105 ]
  %114 = call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %117 = load ptr, ptr %116, align 8, !tbaa !213
  %118 = invoke noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %117) #14
          to label %119 unwind label %97

119:                                              ; preds = %115
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %122, ptr noundef %113, i32 noundef %112) #14
          to label %123 unwind label %97

123:                                              ; preds = %121, %119, %111
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %125 = load ptr, ptr %124, align 8, !tbaa !202
  %126 = icmp eq ptr %125, null
  br i1 %126, label %165, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %129 = load i8, ptr %128, align 8, !tbaa !222, !range !205, !noundef !206
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %133 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  br label %134

134:                                              ; preds = %127, %131
  %135 = phi ptr [ %132, %131 ], [ %113, %127 ]
  %136 = phi i32 [ %133, %131 ], [ %112, %127 ]
  %137 = load ptr, ptr %125, align 8, !tbaa !177
  %138 = getelementptr inbounds ptr, ptr %137, i64 2
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %135, i32 noundef %136, i1 noundef zeroext true) #14
          to label %165 unwind label %97

140:                                              ; preds = %74, %69
  %141 = and i8 %35, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = and i16 %36, -1024
  %145 = and i8 %34, 1
  %146 = icmp eq i8 %145, 0
  switch i16 %144, label %152 [
    i16 -10240, label %147
    i16 -9216, label %149
  ]

147:                                              ; preds = %143
  br i1 %146, label %162, label %148

148:                                              ; preds = %147
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %162 unwind label %46

149:                                              ; preds = %143
  br i1 %146, label %150, label %162

150:                                              ; preds = %152, %149
  %151 = phi i32 [ 282, %149 ], [ 249, %152 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %151) #14
          to label %162 unwind label %46

152:                                              ; preds = %143
  br i1 %146, label %153, label %150

153:                                              ; preds = %152
  %154 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %155 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %154, i16 noundef zeroext %36) #14
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #15
  %157 = load ptr, ptr %32, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %70, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 16, ptr noundef %157) #14
          to label %158 unwind label %160

158:                                              ; preds = %156
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %159 unwind label %160

159:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #15
  br label %162

160:                                              ; preds = %158, %156
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #15
  br label %167

162:                                              ; preds = %150, %149, %153, %159, %147, %148, %140
  %163 = phi i8 [ %34, %140 ], [ %34, %148 ], [ 1, %147 ], [ 0, %159 ], [ 0, %153 ], [ 0, %149 ], [ 0, %150 ]
  %164 = phi i8 [ %35, %140 ], [ %35, %148 ], [ %35, %147 ], [ 1, %159 ], [ %35, %153 ], [ %35, %149 ], [ %35, %150 ]
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext %36) #14
          to label %33 unwind label %46

165:                                              ; preds = %134, %123
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %166

166:                                              ; preds = %6, %165
  ret void

167:                                              ; preds = %46, %48, %44, %97, %99, %160, %50, %22
  %168 = phi { ptr, i32 } [ %23, %22 ], [ %45, %44 ], [ %161, %160 ], [ %51, %50 ], [ %98, %97 ], [ %100, %99 ], [ %47, %46 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %168

169:                                              ; preds = %43
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %8 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #15
  store i16 0, ptr %5, align 2, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 0, ptr %6, align 1, !tbaa !212
  br label %10

10:                                               ; preds = %121, %2
  %11 = phi i8 [ 0, %2 ], [ %122, %121 ]
  %12 = phi i32 [ 0, %2 ], [ %123, %121 ]
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %10, %45
  %15 = phi i8 [ 0, %45 ], [ %11, %10 ]
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %13, i1 %17, i1 false
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %27 unwind label %20

20:                                               ; preds = %35, %27, %19
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %74

22:                                               ; preds = %119, %113, %110, %60, %58, %56
  %23 = phi i32 [ %115, %119 ], [ %115, %113 ], [ 2, %110 ], [ %12, %56 ], [ %12, %58 ], [ %12, %60 ]
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %74

25:                                               ; preds = %31
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %74

27:                                               ; preds = %19, %14
  %28 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 60, ptr noundef nonnull align 2 dereferenceable(2) %4) #14
          to label %29 unwind label %20

29:                                               ; preds = %27
  br i1 %28, label %32, label %30

30:                                               ; preds = %29
  br i1 %17, label %129, label %31

31:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %129 unwind label %25

32:                                               ; preds = %29
  store i8 0, ptr %6, align 1, !tbaa !212
  %33 = load i16, ptr %4, align 2
  %34 = icmp eq i16 %33, 38
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8, !tbaa !177
  %37 = getelementptr inbounds ptr, ptr %36, i64 16
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %39 unwind label %20

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %9, i1 noundef zeroext false) #14
          to label %40 unwind label %47

40:                                               ; preds = %39
  %41 = load ptr, ptr %0, align 8, !tbaa !177
  %42 = getelementptr inbounds ptr, ptr %41, i64 13
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %45 unwind label %49

45:                                               ; preds = %40
  %46 = icmp eq i32 %44, 1
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br i1 %46, label %95, label %14

47:                                               ; preds = %39
  %48 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %51

49:                                               ; preds = %40
  %50 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %74

53:                                               ; preds = %32
  %54 = and i16 %33, -1024
  switch i16 %54, label %59 [
    i16 -10240, label %55
    i16 -9216, label %57
  ]

55:                                               ; preds = %53
  br i1 %17, label %98, label %56

56:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %95 unwind label %22

57:                                               ; preds = %53
  br i1 %17, label %58, label %98

58:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282) #14
          to label %95 unwind label %22

59:                                               ; preds = %53
  br i1 %17, label %61, label %60

60:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %61 unwind label %22

61:                                               ; preds = %60, %59
  %62 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %63 = load i16, ptr %4, align 2, !tbaa !223
  %64 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %62, i16 noundef zeroext %63) #14
  br i1 %64, label %95, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %8) #15
  %67 = load i16, ptr %4, align 2, !tbaa !223
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr %66, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %68, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %69) #14
          to label %70 unwind label %72

70:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %71 unwind label %72

71:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #15
  br label %95

72:                                               ; preds = %70, %65
  %73 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #15
  br label %74

74:                                               ; preds = %25, %22, %20, %72, %51
  %75 = phi { ptr, i32 } [ %52, %51 ], [ %73, %72 ], [ %26, %25 ], [ %21, %20 ], [ %24, %22 ]
  %76 = phi i32 [ %12, %51 ], [ %12, %72 ], [ %12, %25 ], [ %12, %20 ], [ %23, %22 ]
  %77 = extractvalue { ptr, i32 } %75, 1
  %78 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %175

80:                                               ; preds = %74
  %81 = extractvalue { ptr, i32 } %75, 0
  %82 = call ptr @__cxa_begin_catch(ptr %81) #15
  %83 = load ptr, ptr %0, align 8, !tbaa !177
  %84 = getelementptr inbounds ptr, ptr %83, i64 16
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %86 unwind label %124

86:                                               ; preds = %80
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %88 = load ptr, ptr %87, align 8, !tbaa !202
  %89 = icmp eq ptr %88, null
  br i1 %89, label %126, label %90

90:                                               ; preds = %86
  %91 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %82) #14
  %92 = load ptr, ptr %88, align 8, !tbaa !177
  %93 = getelementptr inbounds ptr, ptr %92, i64 7
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(72) %91) #14
          to label %126 unwind label %124

95:                                               ; preds = %45, %56, %61, %71, %58
  %96 = phi i8 [ 0, %58 ], [ 0, %71 ], [ 0, %61 ], [ %15, %56 ], [ %15, %45 ]
  %97 = load i16, ptr %4, align 2, !tbaa !223
  br label %98

98:                                               ; preds = %95, %57, %55
  %99 = phi i16 [ %97, %95 ], [ %33, %57 ], [ %33, %55 ]
  %100 = phi i8 [ %96, %95 ], [ 0, %57 ], [ 1, %55 ]
  %101 = load i8, ptr %6, align 1, !tbaa !212, !range !205, !noundef !206
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  switch i16 %99, label %113 [
    i16 93, label %104
    i16 62, label %108
  ]

104:                                              ; preds = %103
  br i1 %13, label %113, label %105

105:                                              ; preds = %104
  %106 = icmp eq i32 %12, 1
  %107 = select i1 %106, i32 2, i32 %12
  br label %113

108:                                              ; preds = %103
  %109 = icmp eq i32 %12, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 262) #14
          to label %111 unwind label %22

111:                                              ; preds = %110
  %112 = load i16, ptr %4, align 2, !tbaa !223
  br label %113

113:                                              ; preds = %111, %98, %103, %108, %104, %105
  %114 = phi i16 [ 93, %105 ], [ 93, %104 ], [ %112, %111 ], [ 62, %108 ], [ %99, %103 ], [ %99, %98 ]
  %115 = phi i32 [ %107, %105 ], [ 1, %104 ], [ 0, %111 ], [ 0, %108 ], [ 0, %103 ], [ 0, %98 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %114) #14
          to label %116 unwind label %22

116:                                              ; preds = %113
  %117 = load i16, ptr %5, align 2, !tbaa !223
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %117) #14
          to label %120 unwind label %22

120:                                              ; preds = %119
  store i16 0, ptr %5, align 2, !tbaa !223
  br label %121

121:                                              ; preds = %120, %116, %126
  %122 = phi i8 [ %100, %120 ], [ %100, %116 ], [ 0, %126 ]
  %123 = phi i32 [ %115, %120 ], [ %115, %116 ], [ %76, %126 ]
  br label %10, !llvm.loop !225

124:                                              ; preds = %90, %80
  %125 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %175 unwind label %177

126:                                              ; preds = %90, %86
  invoke void @__cxa_end_catch()
          to label %121 unwind label %127

127:                                              ; preds = %126
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %175

129:                                              ; preds = %30, %31
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %131 = load i8, ptr %130, align 8, !tbaa !204, !range !205, !noundef !206
  %132 = icmp eq i8 %131, 0
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %134 = load i8, ptr %133, align 2, !range !205
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %132, i1 true, i1 %135
  br i1 %136, label %168, label %137

137:                                              ; preds = %129
  %138 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %139 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %140 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %141 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %140, ptr noundef %138, i32 noundef %139) #14
          to label %142 unwind label %158

142:                                              ; preds = %137
  br i1 %141, label %143, label %168

143:                                              ; preds = %142
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %145 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %144) #14
          to label %146 unwind label %160

146:                                              ; preds = %143
  %147 = load ptr, ptr %145, align 8, !tbaa !210
  %148 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %147) #14
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %151 = load ptr, ptr %150, align 8, !tbaa !221
  %152 = invoke noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %151) #14
          to label %153 unwind label %162

153:                                              ; preds = %149
  %154 = icmp eq ptr %152, null
  br i1 %154, label %168, label %155

155:                                              ; preds = %153
  %156 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %152) #14
  %157 = icmp eq i32 %156, 4
  br i1 %157, label %164, label %168

158:                                              ; preds = %137
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %175

160:                                              ; preds = %143
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %175

162:                                              ; preds = %164, %149
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %175

164:                                              ; preds = %155
  %165 = load ptr, ptr %150, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %165, i32 noundef 84) #14
          to label %166 unwind label %162

166:                                              ; preds = %164
  %167 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %168

168:                                              ; preds = %142, %155, %166, %153, %146, %129
  %169 = load ptr, ptr %0, align 8, !tbaa !177
  %170 = getelementptr inbounds ptr, ptr %169, i64 16
  %171 = load ptr, ptr %170, align 8
  invoke void %171(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %172 unwind label %173

172:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void

173:                                              ; preds = %168
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %175

175:                                              ; preds = %74, %158, %162, %160, %127, %124, %173
  %176 = phi { ptr, i32 } [ %174, %173 ], [ %128, %127 ], [ %125, %124 ], [ %159, %158 ], [ %163, %162 ], [ %161, %160 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %176

177:                                              ; preds = %124
  %178 = landingpad { ptr, i32 }
          catch ptr null
  %179 = extractvalue { ptr, i32 } %178, 0
  call void @__clang_call_terminate(ptr %179) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !223
  store i8 0, ptr %4, align 1, !tbaa !212
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 35) #14
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) #14
  br i1 %13, label %14, label %84

14:                                               ; preds = %12
  store i8 1, ptr %4, align 1, !tbaa !212
  %15 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %84, label %17

17:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
  br label %84

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %20 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %21 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %7) #14
          to label %22 unwind label %26

22:                                               ; preds = %18
  br i1 %21, label %28, label %23

23:                                               ; preds = %22
  %24 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  br i1 %24, label %25, label %52

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226) #14
          to label %80 unwind label %26

26:                                               ; preds = %52, %73, %38, %37, %33, %31, %28, %25, %18
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %82

28:                                               ; preds = %22
  %29 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 59) #14
          to label %30 unwind label %26

30:                                               ; preds = %28
  br i1 %29, label %33, label %31

31:                                               ; preds = %30
  %32 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %32, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %33 unwind label %26

33:                                               ; preds = %31, %30
  %34 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %35 unwind label %26

35:                                               ; preds = %33
  %36 = icmp eq i32 %10, %34
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %38 unwind label %26

38:                                               ; preds = %37, %35
  %39 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !226
  %41 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %42 = invoke noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef %41) #14
          to label %43 unwind label %26

43:                                               ; preds = %38
  br i1 %42, label %55, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %46 = load i8, ptr %45, align 2, !tbaa !217, !range !205, !noundef !206
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %49 = load i8, ptr %48, align 1, !range !205
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %47, i1 %50, i1 false
  br i1 %51, label %80, label %52

52:                                               ; preds = %44, %23
  %53 = phi i32 [ 310, %23 ], [ 227, %44 ]
  %54 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %53, ptr noundef %54, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %80 unwind label %26

55:                                               ; preds = %43
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %57 = load ptr, ptr %56, align 8, !tbaa !227
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %61 = load i32, ptr %60, align 8, !tbaa !228
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !228
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %64 = load i32, ptr %63, align 4, !tbaa !229
  %65 = icmp ugt i32 %62, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %68 = load ptr, ptr %67, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %64, ptr noundef nonnull %8, i32 noundef 15, i32 noundef 10, ptr noundef %68) #14
          to label %69 unwind label %71

69:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %70 unwind label %71

70:                                               ; preds = %69
  store i32 0, ptr %60, align 8, !tbaa !228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %73

71:                                               ; preds = %69, %66
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %82

73:                                               ; preds = %70, %59, %55
  %74 = load ptr, ptr %39, align 8, !tbaa !226
  %75 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %76 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !230
  %77 = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef %75, ptr noundef %76) #14
          to label %78 unwind label %26

78:                                               ; preds = %73
  %79 = load i16, ptr %77, align 2, !tbaa !223
  store i16 %79, ptr %2, align 2, !tbaa !223
  store i8 1, ptr %4, align 1, !tbaa !212
  br label %80

80:                                               ; preds = %52, %44, %25, %78
  %81 = phi i32 [ 1, %78 ], [ 2, %25 ], [ 2, %44 ], [ 2, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %84

82:                                               ; preds = %71, %26
  %83 = phi { ptr, i32 } [ %27, %26 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %83

84:                                               ; preds = %14, %17, %12, %80
  %85 = phi i32 [ %81, %80 ], [ 2, %12 ], [ 1, %17 ], [ 1, %14 ]
  ret i32 %85
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #1 align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEvE9doctypeIE) #14
  %4 = icmp eq i16 %3, 91
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %2, i16 noundef zeroext 93) #14
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %2, i16 noundef zeroext 62) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 1, !tbaa !231, !range !205, !noundef !206
  %7 = icmp ne i8 %6, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext %7) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !214
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %10 = load i8, ptr %9, align 2, !tbaa !232, !range !205, !noundef !206
  %11 = icmp ne i8 %10, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext %11) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !233
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 8, !tbaa !214
  %20 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %19) #14
  store ptr %20, ptr %12, align 8, !tbaa !233
  br label %21

21:                                               ; preds = %18, %15, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !234
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %27 = load ptr, ptr %26, align 8, !tbaa !235
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %27) #14
  %29 = load ptr, ptr %26, align 8, !tbaa !235
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %28, ptr noundef %29) #14
          to label %30 unwind label %31

30:                                               ; preds = %25
  store ptr %28, ptr %22, align 8, !tbaa !234
  br label %33

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %27) #13
  br label %222

33:                                               ; preds = %30, %21
  %34 = phi ptr [ %28, %30 ], [ %23, %21 ]
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %34, ptr %35, align 8, !tbaa !236
  %36 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 0, ptr %36, align 4, !tbaa !180
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %37, align 8, !tbaa !215
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %39 = load ptr, ptr %38, align 8, !tbaa !221
  %40 = load ptr, ptr %39, align 8, !tbaa !177
  %41 = getelementptr inbounds ptr, ptr %40, i64 11
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull %34) #14
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %44 = load i8, ptr %43, align 1, !tbaa !237, !range !205, !noundef !206
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %38, align 8, !tbaa !221
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %49 = load ptr, ptr %48, align 8, !tbaa !238
  tail call void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %47, ptr noundef %49) #14
  %50 = load ptr, ptr %38, align 8, !tbaa !221
  %51 = load ptr, ptr %3, align 8, !tbaa !214
  tail call void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %50, ptr noundef %51) #14
  %52 = load ptr, ptr %38, align 8, !tbaa !221
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %54 = load i8, ptr %53, align 1, !tbaa !239, !range !205, !noundef !206
  %55 = icmp ne i8 %54, 0
  tail call void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %52, i1 noundef zeroext %55) #14
  br label %56

56:                                               ; preds = %46, %33
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %58 = load i32, ptr %57, align 8, !tbaa !216
  %59 = icmp eq i32 %58, 1
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %61 = zext i1 %59 to i8
  store i8 %61, ptr %60, align 8, !tbaa !204
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %63 = load ptr, ptr %62, align 8, !tbaa !202
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load ptr, ptr %63, align 8, !tbaa !177
  %67 = getelementptr inbounds ptr, ptr %66, i64 9
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(8) %63) #14
  br label %69

69:                                               ; preds = %65, %56
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %71 = load ptr, ptr %70, align 8, !tbaa !240
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 8, !tbaa !177
  %75 = getelementptr inbounds ptr, ptr %74, i64 4
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(8) %71) #14
  br label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %79 = load ptr, ptr %78, align 8, !tbaa !238
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %79, align 8, !tbaa !177
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(8) %79) #14
  br label %85

85:                                               ; preds = %81, %77
  tail call void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %87 = load ptr, ptr %86, align 8, !tbaa !207
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %89 = load ptr, ptr %88, align 8, !tbaa !241
  %90 = load ptr, ptr %87, align 8, !tbaa !177
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %89) #14
  store ptr null, ptr %88, align 8, !tbaa !241
  %93 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !213
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  br label %97

97:                                               ; preds = %96, %85
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %100 = load i32, ptr %99, align 4, !tbaa !242
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %102 = load i32, ptr %101, align 8, !tbaa !243
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %104 = load i32, ptr %103, align 4, !tbaa !244
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %106 = load i32, ptr %105, align 8, !tbaa !245
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %98, i32 noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %106) #14
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %108 = load i32, ptr %107, align 4, !tbaa !246
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %97
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %112 = load ptr, ptr %111, align 8, !tbaa !247
  %113 = load ptr, ptr %112, align 8, !tbaa !177
  %114 = getelementptr inbounds ptr, ptr %113, i64 5
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef i32 %115(ptr noundef nonnull align 8 dereferenceable(40) %112, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #14
  store i32 %116, ptr %107, align 4, !tbaa !246
  br label %117

117:                                              ; preds = %110, %97
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %118, align 1, !tbaa !203
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %119, align 2, !tbaa !217
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %120, align 8, !tbaa !218
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %121, align 1, !tbaa !219
  %122 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %122, align 8, !tbaa !220
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 1, ptr %123, align 2, !tbaa !248
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 1, ptr %124, align 2, !tbaa !249
  %125 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %126 = load ptr, ptr %125, align 8, !tbaa !250
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load ptr, ptr %86, align 8, !tbaa !207
  %130 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %129) #14
  %131 = load ptr, ptr %86, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %130, ptr noundef %131) #14
          to label %132 unwind label %133

132:                                              ; preds = %128
  store ptr %130, ptr %125, align 8, !tbaa !250
  br label %135

133:                                              ; preds = %128
  %134 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %130, ptr noundef %129) #13
  br label %222

135:                                              ; preds = %132, %117
  %136 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %137 = load ptr, ptr %136, align 8, !tbaa !251
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load ptr, ptr %86, align 8, !tbaa !207
  %141 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %140) #14
  %142 = load ptr, ptr %86, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %141, i32 noundef 8, ptr noundef %142, i1 noundef zeroext false) #14
          to label %143 unwind label %144

143:                                              ; preds = %139
  store ptr %141, ptr %136, align 8, !tbaa !251
  br label %147

144:                                              ; preds = %139
  %145 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %141, ptr noundef %140) #13
  br label %222

146:                                              ; preds = %135
  tail call void @_ZN11xercesc_2_712ValueStackOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %137) #14
  br label %147

147:                                              ; preds = %146, %143
  tail call void @_ZN11xercesc_2_712SGXMLScanner20resetPSVIElemContextEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  %148 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  %149 = load ptr, ptr %148, align 8, !tbaa !252
  %150 = load ptr, ptr %149, align 8, !tbaa !177
  %151 = getelementptr inbounds ptr, ptr %150, i64 6
  %152 = load ptr, ptr %151, align 8
  tail call void %152(ptr noundef nonnull align 8 dereferenceable(186) %149) #14
  %153 = load ptr, ptr %148, align 8, !tbaa !252
  %154 = load ptr, ptr %78, align 8, !tbaa !238
  tail call void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %153, ptr noundef %154) #14
  %155 = load ptr, ptr %148, align 8, !tbaa !252
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %157 = load i8, ptr %156, align 1, !tbaa !239, !range !205, !noundef !206
  %158 = icmp ne i8 %157, 0
  tail call void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %155, i1 noundef zeroext %158) #14
  %159 = load ptr, ptr %148, align 8, !tbaa !252
  %160 = load ptr, ptr %3, align 8, !tbaa !214
  tail call void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %159, ptr noundef %160) #14
  %161 = load i8, ptr %43, align 1, !tbaa !237, !range !205, !noundef !206
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %147
  %164 = load ptr, ptr %38, align 8, !tbaa !221
  %165 = load ptr, ptr %164, align 8, !tbaa !177
  %166 = getelementptr inbounds ptr, ptr %165, i64 6
  %167 = load ptr, ptr %166, align 8
  tail call void %167(ptr noundef nonnull align 8 dereferenceable(40) %164) #14
  br label %168

168:                                              ; preds = %163, %147
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %171 = load i8, ptr %170, align 1, !tbaa !253, !range !205, !noundef !206
  %172 = icmp ne i8 %171, 0
  %173 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %169, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %172) #14
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %198

175:                                              ; preds = %168
  %176 = load ptr, ptr %1, align 8, !tbaa !177
  %177 = getelementptr inbounds ptr, ptr %176, i64 6
  %178 = load ptr, ptr %177, align 8
  %179 = tail call noundef zeroext i1 %178(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
  %180 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %181 = load ptr, ptr %1, align 8, !tbaa !177
  %182 = getelementptr inbounds ptr, ptr %181, i64 5
  %183 = load ptr, ptr %182, align 8
  br i1 %179, label %184, label %191

184:                                              ; preds = %175
  %185 = invoke noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %186 unwind label %189

186:                                              ; preds = %184
  %187 = load ptr, ptr %86, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %180, ptr noundef nonnull @.str, i32 noundef 3144, i32 noundef 76, ptr noundef %185, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %187) #14
          to label %188 unwind label %189

188:                                              ; preds = %186
  tail call void @__cxa_throw(ptr nonnull %180, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

189:                                              ; preds = %186, %184
  %190 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %180) #15
  br label %222

191:                                              ; preds = %175
  %192 = invoke noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %193 unwind label %196

193:                                              ; preds = %191
  %194 = load ptr, ptr %86, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %180, ptr noundef nonnull @.str, i32 noundef 3146, i32 noundef 2, ptr noundef %192, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %194) #14
          to label %195 unwind label %196

195:                                              ; preds = %193
  tail call void @__cxa_throw(ptr nonnull %180, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

196:                                              ; preds = %193, %191
  %197 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %180) #15
  br label %222

198:                                              ; preds = %168
  %199 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %169, ptr noundef nonnull %173, ptr noundef null) #14
  %200 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %201 = load ptr, ptr %200, align 8, !tbaa !227
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr %201, align 8, !tbaa !177
  %205 = getelementptr inbounds ptr, ptr %204, i64 3
  %206 = load ptr, ptr %205, align 8
  %207 = tail call noundef i32 %206(ptr noundef nonnull align 8 dereferenceable(12) %201) #14
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %207, ptr %208, align 4, !tbaa !229
  %209 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %209, align 8, !tbaa !228
  br label %210

210:                                              ; preds = %203, %198
  %211 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %211, align 8, !tbaa !254
  %212 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %213 = load i32, ptr %212, align 8, !tbaa !255
  %214 = icmp ugt i32 %213, 31
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %217 = load ptr, ptr %216, align 8, !tbaa !256
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %217) #14
  tail call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %219

218:                                              ; preds = %210
  tail call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %219

219:                                              ; preds = %218, %215
  %220 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %221 = load ptr, ptr %220, align 8, !tbaa !257
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %221) #14
  ret void

222:                                              ; preds = %189, %196, %144, %133, %31
  %223 = phi { ptr, i32 } [ %145, %144 ], [ %134, %133 ], [ %32, %31 ], [ %190, %189 ], [ %197, %196 ]
  resume { ptr, i32 } %223
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 align 2 !prof !176 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  br i1 %3, label %135, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 8, !tbaa !204, !range !205, !noundef !206
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %113, label %8

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %12) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %13) #14
  switch i32 %16, label %20 [
    i32 4, label %21
    i32 0, label %17
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr %11, align 8, !tbaa !221
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 22) #14
  %19 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %134

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %15, %20, %8
  %22 = phi i1 [ true, %8 ], [ false, %15 ], [ true, %20 ]
  %23 = phi i1 [ false, %8 ], [ true, %15 ], [ false, %20 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %25 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %24) #14
  %26 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %25, ptr noundef %9, i32 noundef %10) #14
  br i1 %26, label %27, label %73

27:                                               ; preds = %21
  br i1 %23, label %28, label %36

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %30 = load ptr, ptr %29, align 8, !tbaa !202
  %31 = icmp eq ptr %30, null
  br i1 %31, label %134, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !177
  %34 = getelementptr inbounds ptr, ptr %33, i64 8
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #14
  br label %134

36:                                               ; preds = %27
  %37 = load ptr, ptr %11, align 8, !tbaa !221
  %38 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %37) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %38) #14
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %11, align 8, !tbaa !221
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %44, ptr noundef nonnull %38, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(40) %45) #14
  %46 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %45) #14
  %47 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %45) #14
  br label %48

48:                                               ; preds = %36, %40, %43
  %49 = phi ptr [ %46, %43 ], [ %9, %40 ], [ %9, %36 ]
  %50 = phi i32 [ %47, %43 ], [ %10, %40 ], [ %10, %36 ]
  %51 = load ptr, ptr %11, align 8, !tbaa !221
  tail call void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %51, ptr noundef %49) #14
  %52 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %55 = load ptr, ptr %54, align 8, !tbaa !213
  %56 = tail call noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %55) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef %49, i32 noundef %50) #14
  br label %60

60:                                               ; preds = %58, %53, %48
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %62 = load ptr, ptr %61, align 8, !tbaa !202
  %63 = icmp eq ptr %62, null
  br i1 %63, label %134, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %66 = load i8, ptr %65, align 8, !tbaa !222, !range !205, !noundef !206
  %67 = icmp eq i8 %66, 0
  %68 = load ptr, ptr %62, align 8, !tbaa !177
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  br i1 %67, label %72, label %71

71:                                               ; preds = %64
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef %49, i32 noundef %50, i1 noundef zeroext false) #14
  br label %134

72:                                               ; preds = %64
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #14
  br label %134

73:                                               ; preds = %21
  %74 = load ptr, ptr %11, align 8, !tbaa !221
  br i1 %22, label %75, label %111

75:                                               ; preds = %73
  %76 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %74) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %76) #14
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %11, align 8, !tbaa !221
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %82, ptr noundef nonnull %76, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(40) %83) #14
  %84 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %83) #14
  %85 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %83) #14
  br label %86

86:                                               ; preds = %75, %78, %81
  %87 = phi i32 [ %85, %81 ], [ %10, %78 ], [ %10, %75 ]
  %88 = phi ptr [ %84, %81 ], [ %9, %78 ], [ %9, %75 ]
  %89 = load ptr, ptr %11, align 8, !tbaa !221
  tail call void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %89, ptr noundef %88) #14
  %90 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %93 = load ptr, ptr %92, align 8, !tbaa !213
  %94 = tail call noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %93) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %97, ptr noundef %88, i32 noundef %87) #14
  br label %98

98:                                               ; preds = %96, %91, %86
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %100 = load ptr, ptr %99, align 8, !tbaa !202
  %101 = icmp eq ptr %100, null
  br i1 %101, label %134, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %104 = load i8, ptr %103, align 8, !tbaa !222, !range !205, !noundef !206
  %105 = icmp eq i8 %104, 0
  %106 = load ptr, ptr %100, align 8, !tbaa !177
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8
  br i1 %105, label %110, label %109

109:                                              ; preds = %102
  tail call void %108(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %88, i32 noundef %87, i1 noundef zeroext false) #14
  br label %134

110:                                              ; preds = %102
  tail call void %108(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #14
  br label %134

111:                                              ; preds = %73
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef 22) #14
  %112 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %134

113:                                              ; preds = %4
  %114 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %114, label %115, label %124

115:                                              ; preds = %113
  %116 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %117 = load ptr, ptr %116, align 8, !tbaa !213
  %118 = tail call noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %117) #14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  %122 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %123 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %121, ptr noundef %122, i32 noundef %123) #14
  br label %124

124:                                              ; preds = %120, %115, %113
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %126 = load ptr, ptr %125, align 8, !tbaa !202
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %130 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %131 = load ptr, ptr %126, align 8, !tbaa !177
  %132 = getelementptr inbounds ptr, ptr %131, i64 2
  %133 = load ptr, ptr %132, align 8
  tail call void %133(ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef %129, i32 noundef %130, i1 noundef zeroext false) #14
  br label %134

134:                                              ; preds = %17, %111, %32, %28, %71, %72, %60, %109, %110, %98, %124, %128
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  br label %135

135:                                              ; preds = %2, %134
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %4 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %5 = alloca i16, align 2
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %9 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %10 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %11 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %12) #14
  %13 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #15
  store i16 -1, ptr %5, align 2, !tbaa !223
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(40) %13) #14
          to label %14 unwind label %28

14:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  %15 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %13) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %12) #14
          to label %16 unwind label %30

16:                                               ; preds = %14
  %17 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %19 = load ptr, ptr %18, align 8, !tbaa !240
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !177
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(40) %17) #14
          to label %26 unwind label %32

26:                                               ; preds = %21
  br i1 %25, label %34, label %27

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %15) #14
          to label %34 unwind label %32

28:                                               ; preds = %3
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
          to label %36 unwind label %44

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #15
  %37 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #14
  %38 = load ptr, ptr %7, align 8, !tbaa !258
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 4, ptr noundef %37, ptr noundef null, ptr noundef %2, ptr noundef %38, ptr noundef nonnull %35) #14
  %39 = load ptr, ptr %18, align 8, !tbaa !240
  %40 = load ptr, ptr %39, align 8, !tbaa !177
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull %8) #14
          to label %51 unwind label %46

44:                                               ; preds = %34
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %36
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %139

50:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %15) #14
          to label %53 unwind label %32

51:                                               ; preds = %36
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  %52 = icmp eq ptr %43, null
  br i1 %52, label %53, label %137

53:                                               ; preds = %50, %51
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %55 = load i8, ptr %54, align 1, !tbaa !260, !range !205, !noundef !206
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %137

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %58, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
          to label %59 unwind label %86

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #15
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %61 = load ptr, ptr %60, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %61) #14
          to label %62 unwind label %88

62:                                               ; preds = %59
  %63 = load ptr, ptr %9, align 8, !tbaa !258
  %64 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #14
  %65 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %63, ptr noundef %64, ptr noundef nonnull align 8 dereferenceable(81) %10) #14
          to label %66 unwind label %90

66:                                               ; preds = %62
  br i1 %65, label %67, label %70

67:                                               ; preds = %66
  %68 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %10) #14
          to label %69 unwind label %90

69:                                               ; preds = %67
  br i1 %68, label %70, label %107

70:                                               ; preds = %69, %66
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %72 = load i8, ptr %71, align 8, !tbaa !261, !range !205, !noundef !206
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %12) #14
          to label %75 unwind label %92

75:                                               ; preds = %74
  %76 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #14
  %77 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #14
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %77, ptr noundef nonnull align 8 dereferenceable(40) %76) #14
          to label %78 unwind label %94

78:                                               ; preds = %75
  %79 = load ptr, ptr %60, align 8, !tbaa !207
  %80 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %79) #14
          to label %81 unwind label %94

81:                                               ; preds = %78
  %82 = load ptr, ptr %9, align 8, !tbaa !258
  %83 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %76) #14
  %84 = load ptr, ptr %60, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %80, ptr noundef %82, ptr noundef %83, ptr noundef %84) #14
          to label %85 unwind label %96

85:                                               ; preds = %81
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #13
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %131

102:                                              ; preds = %70
  %103 = call ptr @__cxa_allocate_exception(i64 48) #15
  %104 = load ptr, ptr %60, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull @.str, i32 noundef 3748, i32 noundef 99, ptr noundef %104) #14
          to label %117 unwind label %105

105:                                              ; preds = %102
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %103) #15
  br label %131

107:                                              ; preds = %69
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %109 = load i8, ptr %108, align 8, !tbaa !261, !range !205, !noundef !206
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %10) #14
          to label %113 unwind label %90

113:                                              ; preds = %111
  br i1 %112, label %114, label %122

114:                                              ; preds = %113
  %115 = call ptr @__cxa_allocate_exception(i64 48) #15
  %116 = load ptr, ptr %60, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %115, ptr noundef nonnull @.str, i32 noundef 3753, i32 noundef 99, ptr noundef %116) #14
          to label %117 unwind label %120

117:                                              ; preds = %114, %102
  %118 = phi ptr [ %103, %102 ], [ %115, %114 ]
  invoke void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %119 unwind label %90

119:                                              ; preds = %117
  unreachable

120:                                              ; preds = %114
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %115) #15
  br label %131

122:                                              ; preds = %113, %107
  %123 = load ptr, ptr %60, align 8, !tbaa !207
  %124 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %123) #14
          to label %125 unwind label %90

125:                                              ; preds = %122
  %126 = load ptr, ptr %60, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %124, ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %126) #14
          to label %129 unwind label %127

127:                                              ; preds = %125
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %124, ptr noundef %123) #13
  br label %131

129:                                              ; preds = %125, %85
  %130 = phi ptr [ %80, %85 ], [ %124, %125 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %137

131:                                              ; preds = %127, %120, %105, %100, %90
  %132 = phi { ptr, i32 } [ %91, %90 ], [ %106, %105 ], [ %101, %100 ], [ %121, %120 ], [ %128, %127 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #13
  br label %133

133:                                              ; preds = %131, %88
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #15
  br label %135

135:                                              ; preds = %133, %86
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %139

137:                                              ; preds = %51, %129, %53
  %138 = phi ptr [ null, %53 ], [ %43, %51 ], [ %130, %129 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret ptr %138

139:                                              ; preds = %135, %48, %32
  %140 = phi { ptr, i32 } [ %136, %135 ], [ %49, %48 ], [ %33, %32 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br label %141

141:                                              ; preds = %139, %30
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %143

143:                                              ; preds = %141, %28
  %144 = phi { ptr, i32 } [ %142, %141 ], [ %29, %28 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  resume { ptr, i32 } %144
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %"class.xercesc_2_7::QName", align 8
  %6 = alloca [2 x i16], align 4
  %7 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  store i8 1, ptr %1, align 1, !tbaa !212
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %11 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %3) #14
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183) #14
  br label %17

15:                                               ; preds = %12
  %16 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %17

17:                                               ; preds = %15, %14
  call void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 60) #14
  br label %668

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %20 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  %21 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false) #14
  %22 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !262
  %25 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  br i1 %20, label %53, label %26

26:                                               ; preds = %18
  %27 = call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  %28 = load ptr, ptr %27, align 8, !tbaa !210
  %29 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %28) #14
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %31 = load i8, ptr %30, align 8, !tbaa !204, !range !205, !noundef !206
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %35 = load ptr, ptr %34, align 8, !tbaa !221
  %36 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %35) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %36) #14
  br label %42

40:                                               ; preds = %26
  %41 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %28) #14
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi ptr [ %36, %38 ], [ %41, %40 ]
  %44 = phi i32 [ %39, %38 ], [ %29, %40 ]
  switch i32 %44, label %53 [
    i32 4, label %45
    i32 3, label %45
    i32 2, label %45
    i32 1, label %52
  ]

45:                                               ; preds = %42, %42, %42
  %46 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %43, i1 noundef zeroext false) #14
  %47 = load ptr, ptr %46, align 8, !tbaa !177
  %48 = getelementptr inbounds ptr, ptr %47, i64 5
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46) #14
  %51 = call noundef i32 @_ZN11xercesc_2_79ElemStack15getCurrentScopeEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  br label %53

52:                                               ; preds = %33, %42
  br label %53

53:                                               ; preds = %45, %52, %42, %18
  %54 = phi i8 [ 0, %18 ], [ 0, %45 ], [ 1, %52 ], [ 0, %42 ]
  %55 = phi i32 [ -2, %18 ], [ %51, %45 ], [ -2, %52 ], [ -2, %42 ]
  %56 = phi ptr [ null, %18 ], [ %46, %45 ], [ null, %52 ], [ null, %42 ]
  %57 = phi ptr [ null, %18 ], [ %50, %45 ], [ null, %52 ], [ null, %42 ]
  %58 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %60 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %61 = icmp ne i8 %60, 0
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %19, i1 noundef zeroext %61) #14
  %62 = load i32, ptr %3, align 4, !tbaa !200
  call void @_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi(ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef %62) #14
  br i1 %20, label %63, label %78

63:                                               ; preds = %53
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %65 = load ptr, ptr %64, align 8, !tbaa !263
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  %70 = select i1 %66, i1 %69, i1 false
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  br i1 %66, label %74, label %72

72:                                               ; preds = %71
  call void @_ZN11xercesc_2_712SGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %65) #14
  %73 = load ptr, ptr %67, align 8, !tbaa !264
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi ptr [ %73, %72 ], [ %68, %71 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %75, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
  br label %78

78:                                               ; preds = %63, %74, %77, %53
  %79 = icmp eq i32 %25, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  call void @_ZN11xercesc_2_712SGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %25) #14
  br label %81

81:                                               ; preds = %80, %78
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %83 = load i32, ptr %3, align 4, !tbaa !200
  %84 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(40) %82, i16 noundef signext 1, i32 noundef %83) #14
  %85 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %86 = icmp eq i8 %85, 0
  %87 = icmp eq ptr %57, null
  br i1 %87, label %102, label %88

88:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  %89 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %82) #14
  %90 = load i32, ptr %3, align 4, !tbaa !200
  %91 = sext i32 %90 to i64
  %92 = getelementptr i16, ptr %22, i64 %91
  %93 = getelementptr i16, ptr %92, i64 1
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %95 = load ptr, ptr %94, align 8, !tbaa !207
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %89, ptr noundef %93, i32 noundef %84, ptr noundef %95) #14
  %96 = add i32 %58, -1
  %97 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %5, ptr noundef nonnull %57, ptr noundef %56, i32 noundef %96) #14
          to label %98 unwind label %100

98:                                               ; preds = %88
  %99 = zext i1 %97 to i8
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %102

100:                                              ; preds = %88
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %666

102:                                              ; preds = %98, %81
  %103 = phi i8 [ %99, %98 ], [ %54, %81 ]
  %104 = load i32, ptr %3, align 4, !tbaa !200
  %105 = sext i32 %104 to i64
  %106 = getelementptr i16, ptr %22, i64 %105
  %107 = getelementptr i16, ptr %106, i64 1
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %109 = load ptr, ptr %108, align 8, !tbaa !236
  %110 = load ptr, ptr %109, align 8, !tbaa !177
  %111 = getelementptr inbounds ptr, ptr %110, i64 6
  %112 = load ptr, ptr %111, align 8
  %113 = call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(8) %109) #14
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %115 = load i32, ptr %114, align 4, !tbaa !242
  %116 = icmp eq i32 %84, %115
  %117 = load ptr, ptr %108, align 8, !tbaa !236
  %118 = load ptr, ptr %117, align 8, !tbaa !177
  %119 = getelementptr inbounds ptr, ptr %118, i64 11
  %120 = load ptr, ptr %119, align 8
  %121 = call noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %117, i32 noundef %84, ptr noundef %107, ptr noundef %22, i32 noundef %55) #14
  %122 = icmp eq ptr %121, null
  br i1 %116, label %197, label %123

123:                                              ; preds = %102
  br i1 %122, label %124, label %308

124:                                              ; preds = %123
  %125 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %126 = load ptr, ptr %125, align 8, !tbaa !265
  %127 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %126, ptr noundef %107, i32 noundef %84, i32 noundef %55) #14
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %308

129:                                              ; preds = %124
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %131 = load ptr, ptr %130, align 8, !tbaa !247
  %132 = load ptr, ptr %131, align 8, !tbaa !177
  %133 = getelementptr inbounds ptr, ptr %132, i64 9
  %134 = load ptr, ptr %133, align 8
  %135 = call noundef i32 %134(ptr noundef nonnull align 8 dereferenceable(40) %131, ptr noundef %113) #14
  %136 = icmp eq i32 %135, %84
  br i1 %136, label %155, label %137

137:                                              ; preds = %129
  %138 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %84) #14
  %139 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %138) #14
  %140 = load i8, ptr %59, align 8, !range !205
  %141 = icmp ne i8 %140, 0
  %142 = xor i1 %139, true
  %143 = select i1 %142, i1 %141, i1 false
  %144 = icmp eq i8 %103, 0
  %145 = and i1 %144, %143
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %148 = load ptr, ptr %147, align 8, !tbaa !221
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %148, i32 noundef 72, ptr noundef %138, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %149

149:                                              ; preds = %146, %137
  %150 = load ptr, ptr %108, align 8, !tbaa !236
  %151 = load ptr, ptr %150, align 8, !tbaa !177
  %152 = getelementptr inbounds ptr, ptr %151, i64 11
  %153 = load ptr, ptr %152, align 8
  %154 = call noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(8) %150, i32 noundef %84, ptr noundef %107, ptr noundef %22, i32 noundef %55) #14
  br label %155

155:                                              ; preds = %149, %129
  %156 = phi ptr [ %154, %149 ], [ null, %129 ]
  %157 = icmp eq ptr %156, null
  %158 = icmp ne i32 %55, -2
  %159 = and i1 %158, %157
  br i1 %159, label %160, label %185

160:                                              ; preds = %155
  %161 = load ptr, ptr %108, align 8, !tbaa !236
  %162 = load ptr, ptr %161, align 8, !tbaa !177
  %163 = getelementptr inbounds ptr, ptr %162, i64 11
  %164 = load ptr, ptr %163, align 8
  %165 = call noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(8) %161, i32 noundef %84, ptr noundef %107, ptr noundef %22, i32 noundef -2) #14
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %308

167:                                              ; preds = %160
  %168 = load ptr, ptr %125, align 8, !tbaa !265
  %169 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %168, ptr noundef %107, i32 noundef %84, i32 noundef -2) #14
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %308

171:                                              ; preds = %167
  %172 = load ptr, ptr %108, align 8, !tbaa !236
  %173 = load i32, ptr %114, align 4, !tbaa !242
  %174 = load ptr, ptr %172, align 8, !tbaa !177
  %175 = getelementptr inbounds ptr, ptr %174, i64 11
  %176 = load ptr, ptr %175, align 8
  %177 = call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %172, i32 noundef %173, ptr noundef %107, ptr noundef %22, i32 noundef %55) #14
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %171
  %180 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %177) #14
  %181 = icmp eq i32 %180, 5
  %182 = load i8, ptr %59, align 8, !range !205
  %183 = icmp eq i8 %182, 0
  %184 = select i1 %181, i1 true, i1 %183
  br i1 %184, label %308, label %302

185:                                              ; preds = %155
  br i1 %157, label %186, label %308

186:                                              ; preds = %171, %185
  br i1 %136, label %189, label %187

187:                                              ; preds = %186
  %188 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %113) #14
  br label %189

189:                                              ; preds = %187, %186
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %191 = load ptr, ptr %190, align 8, !tbaa !207
  %192 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %191) #14
  %193 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %82) #14
  %194 = load ptr, ptr %190, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %192, ptr noundef %193, ptr noundef %107, i32 noundef %84, i32 noundef 1, i32 noundef -2, ptr noundef %194) #14
          to label %286 unwind label %195

195:                                              ; preds = %189
  %196 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %192, ptr noundef %191) #13
  br label %666

197:                                              ; preds = %102
  br i1 %122, label %198, label %308

198:                                              ; preds = %197
  %199 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %200 = load ptr, ptr %199, align 8, !tbaa !265
  %201 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %200, ptr noundef %107, i32 noundef %84, i32 noundef %55) #14
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %308

203:                                              ; preds = %198
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %205 = load ptr, ptr %204, align 8, !tbaa !247
  %206 = load ptr, ptr %205, align 8, !tbaa !177
  %207 = getelementptr inbounds ptr, ptr %206, i64 9
  %208 = load ptr, ptr %207, align 8
  %209 = call noundef i32 %208(ptr noundef nonnull align 8 dereferenceable(40) %205, ptr noundef %113) #14
  %210 = load i32, ptr %114, align 4, !tbaa !242
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %229, label %212

212:                                              ; preds = %203
  %213 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
  %214 = load i8, ptr %59, align 8, !range !205
  %215 = icmp ne i8 %214, 0
  %216 = xor i1 %213, true
  %217 = select i1 %216, i1 %215, i1 false
  %218 = icmp eq i8 %103, 0
  %219 = and i1 %218, %217
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %222 = load ptr, ptr %221, align 8, !tbaa !221
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %222, i32 noundef 72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %223

223:                                              ; preds = %220, %212
  %224 = load ptr, ptr %108, align 8, !tbaa !236
  %225 = load ptr, ptr %224, align 8, !tbaa !177
  %226 = getelementptr inbounds ptr, ptr %225, i64 11
  %227 = load ptr, ptr %226, align 8
  %228 = call noundef ptr %227(ptr noundef nonnull align 8 dereferenceable(8) %224, i32 noundef %84, ptr noundef %107, ptr noundef %22, i32 noundef %55) #14
  br label %229

229:                                              ; preds = %223, %203
  %230 = phi ptr [ %228, %223 ], [ null, %203 ]
  %231 = icmp eq ptr %230, null
  %232 = icmp ne i32 %55, -2
  %233 = and i1 %232, %231
  br i1 %233, label %234, label %272

234:                                              ; preds = %229
  %235 = load ptr, ptr %108, align 8, !tbaa !236
  %236 = load ptr, ptr %235, align 8, !tbaa !177
  %237 = getelementptr inbounds ptr, ptr %236, i64 11
  %238 = load ptr, ptr %237, align 8
  %239 = call noundef ptr %238(ptr noundef nonnull align 8 dereferenceable(8) %235, i32 noundef %84, ptr noundef %107, ptr noundef %22, i32 noundef -2) #14
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %308

241:                                              ; preds = %234
  %242 = load ptr, ptr %199, align 8, !tbaa !265
  %243 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %242, ptr noundef %107, i32 noundef %84, i32 noundef -2) #14
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %308

245:                                              ; preds = %241
  %246 = load i32, ptr %114, align 4, !tbaa !242
  %247 = icmp eq i32 %209, %246
  br i1 %247, label %273, label %248

248:                                              ; preds = %245
  %249 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %113) #14
  %250 = load i8, ptr %59, align 8, !range !205
  %251 = icmp ne i8 %250, 0
  %252 = xor i1 %249, true
  %253 = select i1 %252, i1 %251, i1 false
  %254 = icmp eq i8 %103, 0
  %255 = and i1 %254, %253
  br i1 %255, label %256, label %259

256:                                              ; preds = %248
  %257 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %258 = load ptr, ptr %257, align 8, !tbaa !221
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %258, i32 noundef 72, ptr noundef %113, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %259

259:                                              ; preds = %256, %248
  %260 = load ptr, ptr %108, align 8, !tbaa !236
  %261 = load ptr, ptr %260, align 8, !tbaa !177
  %262 = getelementptr inbounds ptr, ptr %261, i64 11
  %263 = load ptr, ptr %262, align 8
  %264 = call noundef ptr %263(ptr noundef nonnull align 8 dereferenceable(8) %260, i32 noundef %209, ptr noundef %107, ptr noundef %22, i32 noundef %55) #14
  %265 = icmp eq ptr %264, null
  br i1 %265, label %273, label %266

266:                                              ; preds = %259
  %267 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %264) #14
  %268 = icmp eq i32 %267, 5
  %269 = load i8, ptr %59, align 8, !range !205
  %270 = icmp eq i8 %269, 0
  %271 = select i1 %268, i1 true, i1 %270
  br i1 %271, label %308, label %302

272:                                              ; preds = %229
  br i1 %231, label %273, label %308

273:                                              ; preds = %259, %245, %272
  %274 = load i32, ptr %114, align 4, !tbaa !242
  %275 = icmp eq i32 %209, %274
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %113) #14
  br label %278

278:                                              ; preds = %276, %273
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %280 = load ptr, ptr %279, align 8, !tbaa !207
  %281 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %280) #14
  %282 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %82) #14
  %283 = load ptr, ptr %279, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %281, ptr noundef %282, ptr noundef %107, i32 noundef %84, i32 noundef 1, i32 noundef -2, ptr noundef %283) #14
          to label %286 unwind label %284

284:                                              ; preds = %278
  %285 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %281, ptr noundef %280) #13
  br label %666

286:                                              ; preds = %278, %189
  %287 = phi ptr [ %125, %189 ], [ %199, %278 ]
  %288 = phi ptr [ %192, %189 ], [ %281, %278 ]
  %289 = load ptr, ptr %287, align 8, !tbaa !265
  %290 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %288) #14
  %291 = call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %289, ptr noundef %290, i32 noundef %84, i32 noundef %55, ptr noundef nonnull %288) #14
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %288, i32 noundef %291) #14
  %292 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  store i8 0, ptr %292, align 1, !tbaa !266
  %293 = icmp eq i8 %103, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %286
  store i8 0, ptr %59, align 8, !tbaa !204
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %19, i1 noundef zeroext false) #14
  br label %295

295:                                              ; preds = %294, %286
  %296 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %326, label %298

298:                                              ; preds = %295
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %288, i32 noundef 5) #14
  %299 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %300 = load ptr, ptr %299, align 8, !tbaa !221
  %301 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %288) #14
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %300, i32 noundef 2, ptr noundef %301, ptr noundef null, ptr noundef null, ptr noundef null) #14
  store i8 1, ptr %292, align 1, !tbaa !266
  br label %326

302:                                              ; preds = %266, %179
  %303 = phi ptr [ %177, %179 ], [ %264, %266 ]
  %304 = phi i32 [ 80, %179 ], [ 79, %266 ]
  %305 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %306 = load ptr, ptr %305, align 8, !tbaa !221
  %307 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %303) #14
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %306, i32 noundef %304, ptr noundef %307, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %308

308:                                              ; preds = %302, %266, %241, %198, %197, %234, %272, %185, %160, %123, %124, %179, %167
  %309 = phi ptr [ %177, %179 ], [ %169, %167 ], [ %127, %124 ], [ %121, %123 ], [ %165, %160 ], [ %230, %272 ], [ %156, %185 ], [ %264, %266 ], [ %243, %241 ], [ %201, %198 ], [ %121, %197 ], [ %239, %234 ], [ %303, %302 ]
  %310 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  store i8 0, ptr %310, align 1, !tbaa !266
  %311 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %309) #14
  br i1 %311, label %326, label %312

312:                                              ; preds = %308
  %313 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %309) #14
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  store i8 1, ptr %310, align 1, !tbaa !266
  br label %316

316:                                              ; preds = %315, %312
  %317 = icmp eq i8 %103, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %316
  store i8 0, ptr %59, align 8, !tbaa !204
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %19, i1 noundef zeroext false) #14
  br label %319

319:                                              ; preds = %318, %316
  %320 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %324 = load ptr, ptr %323, align 8, !tbaa !221
  %325 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %309) #14
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %324, i32 noundef 2, ptr noundef %325, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %326

326:                                              ; preds = %308, %322, %319, %295, %298
  %327 = phi ptr [ %310, %308 ], [ %310, %322 ], [ %310, %319 ], [ %292, %295 ], [ %292, %298 ]
  %328 = phi ptr [ %309, %308 ], [ %309, %322 ], [ %309, %319 ], [ %288, %295 ], [ %288, %298 ]
  %329 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  %330 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  call void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull %328, i32 noundef %330) #14
  call void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef %84) #14
  br i1 %20, label %331, label %338

331:                                              ; preds = %326
  %332 = load ptr, ptr %108, align 8, !tbaa !236
  %333 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %332, ptr %333, align 8, !tbaa !215
  %334 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %335 = load ptr, ptr %334, align 8, !tbaa !207
  %336 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %335) #14
  %337 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  store ptr %336, ptr %337, align 8, !tbaa !241
  br label %338

338:                                              ; preds = %331, %326
  %339 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %340 = load ptr, ptr %339, align 8, !tbaa !267
  %341 = icmp eq ptr %340, null
  br i1 %341, label %352, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 2
  %344 = load i32, ptr %343, align 4, !tbaa !268
  %345 = add nsw i32 %344, 1
  store i32 %345, ptr %343, align 4, !tbaa !268
  %346 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  %347 = load i32, ptr %343, align 4, !tbaa !268
  br i1 %346, label %348, label %350

348:                                              ; preds = %342
  %349 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 4
  store i32 %347, ptr %349, align 4, !tbaa !269
  br label %352

350:                                              ; preds = %342
  %351 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 3
  store i32 %347, ptr %351, align 8, !tbaa !270
  br label %352

352:                                              ; preds = %348, %350, %338
  %353 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %364, label %355

355:                                              ; preds = %352
  %356 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %357 = load ptr, ptr %356, align 8, !tbaa !221
  %358 = load ptr, ptr %357, align 8, !tbaa !177
  %359 = getelementptr inbounds ptr, ptr %358, i64 9
  %360 = load ptr, ptr %359, align 8
  call void %360(ptr noundef nonnull align 8 dereferenceable(40) %357, ptr noundef nonnull %328) #14
  %361 = load ptr, ptr %356, align 8, !tbaa !221
  %362 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %361) #14
  br i1 %362, label %363, label %364

363:                                              ; preds = %355
  store i8 1, ptr %327, align 1, !tbaa !266
  br label %364

364:                                              ; preds = %355, %363, %352
  %365 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  call void @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %365) #14
  %366 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %372, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %370 = load ptr, ptr %369, align 8, !tbaa !221
  %371 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %370) #14
  br label %374

372:                                              ; preds = %364
  %373 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %328) #14
  br label %374

374:                                              ; preds = %372, %368
  %375 = phi ptr [ %371, %368 ], [ %373, %372 ]
  %376 = icmp eq ptr %375, null
  br i1 %376, label %410, label %377

377:                                              ; preds = %374
  %378 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %375) #14
  %379 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(176) %375) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 35, ptr %6, align 4
  %380 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %379, ptr noundef nonnull %6) #14
  br i1 %380, label %409, label %381

381:                                              ; preds = %377
  %382 = call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %379, i16 noundef zeroext 44) #14
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %409

384:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #15
  %385 = add nuw nsw i32 %382, 1
  %386 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %387 = load ptr, ptr %386, align 8, !tbaa !207
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %385, ptr noundef %387) #14
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %379, i32 noundef %382) #14
          to label %388 unwind label %402

388:                                              ; preds = %384
  %389 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  %390 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %389) #14
          to label %391 unwind label %404

391:                                              ; preds = %388
  %392 = load i8, ptr %59, align 8, !range !205
  %393 = icmp ne i8 %392, 0
  %394 = xor i1 %390, true
  %395 = select i1 %394, i1 %393, i1 false
  %396 = icmp eq i8 %103, 0
  %397 = and i1 %396, %395
  br i1 %397, label %398, label %406

398:                                              ; preds = %391
  %399 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %400 = load ptr, ptr %399, align 8, !tbaa !221
  %401 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %400, i32 noundef 72, ptr noundef %401, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %406 unwind label %404

402:                                              ; preds = %384
  %403 = landingpad { ptr, i32 }
          cleanup
  br label %407

404:                                              ; preds = %398, %388
  %405 = landingpad { ptr, i32 }
          cleanup
  br label %407

406:                                              ; preds = %398, %391
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #15
  br label %409

407:                                              ; preds = %404, %402
  %408 = phi { ptr, i32 } [ %405, %404 ], [ %403, %402 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %666

409:                                              ; preds = %381, %406, %377
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %410

410:                                              ; preds = %409, %374
  %411 = phi i32 [ %378, %409 ], [ %55, %374 ]
  call void @_ZN11xercesc_2_79ElemStack15setCurrentScopeEi(ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef %411) #14
  %412 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %413 = load i32, ptr %412, align 8, !tbaa !271
  %414 = icmp ult i32 %58, %413
  br i1 %414, label %416, label %415

415:                                              ; preds = %410
  call void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br label %416

416:                                              ; preds = %415, %410
  %417 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %418 = load ptr, ptr %417, align 8, !tbaa !272
  %419 = zext i32 %58 to i64
  %420 = getelementptr inbounds i32, ptr %418, i64 %419
  store i32 0, ptr %420, align 4, !tbaa !200
  %421 = load ptr, ptr %108, align 8, !tbaa !236
  call void @_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %421) #14
  br i1 %20, label %422, label %436

422:                                              ; preds = %416
  %423 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %424 = icmp eq i8 %423, 0
  %425 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %426 = load i8, ptr %425, align 1, !range !205
  %427 = icmp eq i8 %426, 0
  %428 = select i1 %424, i1 true, i1 %427
  br i1 %428, label %440, label %429

429:                                              ; preds = %422
  %430 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %431 = load ptr, ptr %430, align 8, !tbaa !221
  %432 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  %433 = call noundef zeroext i1 @_ZN11xercesc_2_712XMLValidator16checkRootElementEj(ptr noundef nonnull align 8 dereferenceable(40) %431, i32 noundef %432) #14
  br i1 %433, label %440, label %434

434:                                              ; preds = %429
  %435 = load ptr, ptr %430, align 8, !tbaa !221
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %435, i32 noundef 5) #14
  br label %440

436:                                              ; preds = %416
  br i1 %86, label %440, label %437

437:                                              ; preds = %436
  %438 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  %439 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %438, i1 noundef zeroext true) #14
  br label %440

440:                                              ; preds = %436, %437, %422, %434, %429
  %441 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %442 = icmp eq ptr %441, null
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %445 = load ptr, ptr %444, align 8, !tbaa !273
  call void @_ZN11xercesc_2_717PSVIAttributeList5resetEv(ptr noundef nonnull align 8 dereferenceable(36) %445) #14
  br label %446

446:                                              ; preds = %443, %440
  %447 = load ptr, ptr %23, align 8, !tbaa !262
  %448 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %449 = load ptr, ptr %448, align 8, !tbaa !274
  %450 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %447, i32 noundef %25, ptr noundef nonnull %328, ptr noundef nonnull align 8 dereferenceable(40) %449) #14
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %446
  %453 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %454 = load ptr, ptr %453, align 8, !tbaa !257
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %454) #14
  br label %455

455:                                              ; preds = %452, %446
  %456 = call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %456, label %457, label %462

457:                                              ; preds = %455
  %458 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %459 = load ptr, ptr %458, align 8, !tbaa !213
  %460 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %82) #14
  %461 = load ptr, ptr %448, align 8, !tbaa !274
  call void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48) %459, ptr noundef nonnull %328, i32 noundef %58, i32 noundef %84, ptr noundef %460, ptr noundef nonnull align 8 dereferenceable(40) %461, i32 noundef %450) #14
  br label %462

462:                                              ; preds = %457, %455
  %463 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %464 = load ptr, ptr %463, align 8, !tbaa !202
  %465 = icmp eq ptr %464, null
  br i1 %465, label %472, label %466

466:                                              ; preds = %462
  %467 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %82) #14
  %468 = load ptr, ptr %448, align 8, !tbaa !274
  %469 = load ptr, ptr %464, align 8, !tbaa !177
  %470 = getelementptr inbounds ptr, ptr %469, i64 11
  %471 = load ptr, ptr %470, align 8
  call void %471(ptr noundef nonnull align 8 dereferenceable(8) %464, ptr noundef nonnull align 8 dereferenceable(33) %328, i32 noundef %84, ptr noundef %467, ptr noundef nonnull align 8 dereferenceable(40) %468, i32 noundef %450, i1 noundef zeroext false, i1 noundef zeroext %20) #14
  br label %472

472:                                              ; preds = %466, %462
  %473 = load ptr, ptr %339, align 8, !tbaa !267
  %474 = icmp eq ptr %473, null
  br i1 %474, label %491, label %475

475:                                              ; preds = %472
  %476 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  %477 = load ptr, ptr %339, align 8, !tbaa !267
  %478 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %476) #14
  %479 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %480 = load ptr, ptr %479, align 8, !tbaa !247
  %481 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %476) #14
  %482 = load ptr, ptr %480, align 8, !tbaa !177
  %483 = getelementptr inbounds ptr, ptr %482, i64 10
  %484 = load ptr, ptr %483, align 8
  %485 = call noundef ptr %484(ptr noundef nonnull align 8 dereferenceable(40) %480, i32 noundef %481) #14
  %486 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %487 = load ptr, ptr %486, align 8, !tbaa !273
  %488 = load ptr, ptr %477, align 8, !tbaa !177
  %489 = getelementptr inbounds ptr, ptr %488, i64 4
  %490 = load ptr, ptr %489, align 8
  call void %490(ptr noundef nonnull align 8 dereferenceable(8) %477, ptr noundef %478, ptr noundef %485, ptr noundef %487) #14
  br label %491

491:                                              ; preds = %475, %472
  %492 = load i8, ptr %4, align 1, !tbaa !212, !range !205, !noundef !206
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %608, label %494

494:                                              ; preds = %491
  %495 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  %496 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %497 = load i32, ptr %496, align 4, !tbaa !180
  %498 = icmp eq i32 %497, 1
  br i1 %498, label %499, label %526

499:                                              ; preds = %494
  %500 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %524, label %502

502:                                              ; preds = %499
  %503 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  br i1 %503, label %504, label %524

504:                                              ; preds = %502
  %505 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %506 = load ptr, ptr %505, align 8, !tbaa !221
  %507 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %506) #14
  %508 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 6
  store ptr %507, ptr %508, align 8, !tbaa !275
  %509 = icmp eq ptr %507, null
  br i1 %509, label %510, label %513

510:                                              ; preds = %504
  %511 = load ptr, ptr %505, align 8, !tbaa !221
  %512 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %511) #14
  br label %513

513:                                              ; preds = %504, %510
  %514 = phi ptr [ %512, %510 ], [ null, %504 ]
  %515 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  store ptr %514, ptr %515, align 8
  %516 = load ptr, ptr %339, align 8, !tbaa !267
  %517 = icmp eq ptr %516, null
  br i1 %517, label %526, label %518

518:                                              ; preds = %513
  %519 = load ptr, ptr %505, align 8, !tbaa !221
  %520 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(186) %519) #14
  %521 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %520, ptr %521, align 8, !tbaa !276
  %522 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %520, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
  br i1 %522, label %523, label %526

523:                                              ; preds = %518
  store ptr null, ptr %521, align 8, !tbaa !276
  br label %526

524:                                              ; preds = %502, %499
  %525 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %525, i8 0, i64 24, i1 false)
  br label %526

526:                                              ; preds = %524, %518, %523, %513, %494
  %527 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %579, label %529

529:                                              ; preds = %526
  %530 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %531 = load ptr, ptr %530, align 8, !tbaa !221
  %532 = load ptr, ptr %531, align 8, !tbaa !177
  %533 = getelementptr inbounds ptr, ptr %532, i64 2
  %534 = load ptr, ptr %533, align 8
  %535 = call noundef i32 %534(ptr noundef nonnull align 8 dereferenceable(40) %531, ptr noundef nonnull %328, ptr noundef null, i32 noundef 0) #14
  %536 = icmp sgt i32 %535, -1
  br i1 %536, label %537, label %544

537:                                              ; preds = %529
  %538 = load ptr, ptr %530, align 8, !tbaa !221
  %539 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  %540 = load ptr, ptr %328, align 8, !tbaa !177
  %541 = getelementptr inbounds ptr, ptr %540, i64 15
  %542 = load ptr, ptr %541, align 8
  %543 = call noundef ptr %542(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %538, i32 noundef 7, ptr noundef %539, ptr noundef %543, ptr noundef null, ptr noundef null) #14
  br label %544

544:                                              ; preds = %537, %529
  %545 = load ptr, ptr %530, align 8, !tbaa !221
  %546 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %545) #14
  br i1 %546, label %547, label %548

547:                                              ; preds = %544
  store i8 1, ptr %327, align 1, !tbaa !266
  br label %572

548:                                              ; preds = %544
  %549 = load ptr, ptr %339, align 8, !tbaa !267
  %550 = icmp eq ptr %549, null
  br i1 %550, label %558, label %551

551:                                              ; preds = %548
  %552 = load ptr, ptr %530, align 8, !tbaa !221
  %553 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %552) #14
  %554 = zext i1 %553 to i8
  store i8 %554, ptr %329, align 8, !tbaa !277
  br i1 %553, label %555, label %558

555:                                              ; preds = %551
  %556 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %328) #14
  %557 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %556, ptr %557, align 8, !tbaa !276
  br label %558

558:                                              ; preds = %551, %555, %548
  %559 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %560 = load ptr, ptr %559, align 8, !tbaa !278
  %561 = icmp eq ptr %560, null
  br i1 %561, label %572, label %562

562:                                              ; preds = %558
  %563 = call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %560) #14
  %564 = icmp eq i32 %563, 25
  br i1 %564, label %565, label %572

565:                                              ; preds = %562
  %566 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %567 = load ptr, ptr %566, align 8, !tbaa !279
  %568 = load ptr, ptr %567, align 8, !tbaa !177
  %569 = getelementptr inbounds ptr, ptr %568, i64 11
  %570 = load ptr, ptr %569, align 8
  %571 = call noundef ptr %570(ptr noundef nonnull align 8 dereferenceable(16) %567) #14
  br label %572

572:                                              ; preds = %558, %562, %565, %547
  %573 = phi ptr [ null, %547 ], [ %571, %565 ], [ null, %562 ], [ null, %558 ]
  %574 = call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %574, label %575, label %579

575:                                              ; preds = %572
  %576 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %577 = load ptr, ptr %576, align 8, !tbaa !213
  %578 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %577, ptr noundef nonnull %328, ptr noundef %578) #14
  br label %579

579:                                              ; preds = %572, %575, %526
  %580 = phi ptr [ null, %526 ], [ %573, %575 ], [ %573, %572 ]
  %581 = load ptr, ptr %339, align 8, !tbaa !267
  %582 = icmp eq ptr %581, null
  br i1 %582, label %584, label %583

583:                                              ; preds = %579
  call void @_ZN11xercesc_2_712SGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %328, ptr noundef %580) #14
  br label %584

584:                                              ; preds = %583, %579
  %585 = load ptr, ptr %463, align 8, !tbaa !202
  %586 = icmp eq ptr %585, null
  br i1 %586, label %592, label %587

587:                                              ; preds = %584
  %588 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %82) #14
  %589 = load ptr, ptr %585, align 8, !tbaa !177
  %590 = getelementptr inbounds ptr, ptr %589, i64 6
  %591 = load ptr, ptr %590, align 8
  call void %591(ptr noundef nonnull align 8 dereferenceable(8) %585, ptr noundef nonnull align 8 dereferenceable(33) %328, i32 noundef %84, i1 noundef zeroext %20, ptr noundef %588) #14
  br label %592

592:                                              ; preds = %587, %584
  br i1 %20, label %593, label %594

593:                                              ; preds = %592
  store i8 0, ptr %1, align 1, !tbaa !212
  br label %665

594:                                              ; preds = %592
  %595 = call noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  store ptr %595, ptr %108, align 8, !tbaa !236
  %596 = load ptr, ptr %595, align 8, !tbaa !177
  %597 = getelementptr inbounds ptr, ptr %596, i64 5
  %598 = load ptr, ptr %597, align 8
  %599 = call noundef i32 %598(ptr noundef nonnull align 8 dereferenceable(8) %595) #14
  store i32 %599, ptr %496, align 4, !tbaa !180
  %600 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %601 = load ptr, ptr %600, align 8, !tbaa !221
  %602 = load ptr, ptr %108, align 8, !tbaa !236
  %603 = load ptr, ptr %601, align 8, !tbaa !177
  %604 = getelementptr inbounds ptr, ptr %603, i64 11
  %605 = load ptr, ptr %604, align 8
  call void %605(ptr noundef nonnull align 8 dereferenceable(40) %601, ptr noundef %602) #14
  %606 = call noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  %607 = zext i1 %606 to i8
  store i8 %607, ptr %59, align 8, !tbaa !204
  br label %665

608:                                              ; preds = %491
  %609 = load ptr, ptr %339, align 8, !tbaa !267
  %610 = icmp eq ptr %609, null
  br i1 %610, label %662, label %611

611:                                              ; preds = %608
  %612 = load i8, ptr %59, align 8, !tbaa !204, !range !205, !noundef !206
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %630, label %614

614:                                              ; preds = %611
  %615 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  br i1 %615, label %616, label %630

616:                                              ; preds = %614
  %617 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %618 = load ptr, ptr %617, align 8, !tbaa !221
  %619 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %618) #14
  %620 = icmp eq ptr %619, null
  br i1 %620, label %621, label %625

621:                                              ; preds = %616
  %622 = load ptr, ptr %617, align 8, !tbaa !221
  %623 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %622) #14
  %624 = icmp eq ptr %623, null
  br i1 %624, label %630, label %625

625:                                              ; preds = %621, %616
  %626 = phi ptr [ %619, %616 ], [ %623, %621 ]
  %627 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %628 = load ptr, ptr %627, align 8, !tbaa !233
  %629 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %628, ptr noundef nonnull %626) #14
  br label %630

630:                                              ; preds = %625, %621, %614, %611
  %631 = phi ptr [ null, %621 ], [ null, %614 ], [ null, %611 ], [ %629, %625 ]
  %632 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %633 = load ptr, ptr %632, align 8, !tbaa !250
  %634 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %635 = load ptr, ptr %634, align 8, !tbaa !241
  %636 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %637 = load ptr, ptr %636, align 8, !tbaa !221
  %638 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %637) #14
  %639 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  br i1 %639, label %640, label %644

640:                                              ; preds = %630
  %641 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %642 = load ptr, ptr %641, align 8, !tbaa !233
  %643 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %642, ptr noundef nonnull %328) #14
  br label %644

644:                                              ; preds = %630, %640
  %645 = phi ptr [ %643, %640 ], [ null, %630 ]
  %646 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %647 = load ptr, ptr %646, align 8, !tbaa !233
  %648 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %328) #14
  call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %633, i32 noundef 0, i32 noundef 0, ptr noundef %635, i1 noundef zeroext %638, ptr noundef %645, ptr noundef %631, ptr noundef null, ptr noundef %647, ptr noundef %648, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %649 = load ptr, ptr %339, align 8, !tbaa !267
  %650 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  %651 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %652 = load ptr, ptr %651, align 8, !tbaa !247
  %653 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %328) #14
  %654 = load ptr, ptr %652, align 8, !tbaa !177
  %655 = getelementptr inbounds ptr, ptr %654, i64 10
  %656 = load ptr, ptr %655, align 8
  %657 = call noundef ptr %656(ptr noundef nonnull align 8 dereferenceable(40) %652, i32 noundef %653) #14
  %658 = load ptr, ptr %632, align 8, !tbaa !250
  %659 = load ptr, ptr %649, align 8, !tbaa !177
  %660 = getelementptr inbounds ptr, ptr %659, i64 3
  %661 = load ptr, ptr %660, align 8
  call void %661(ptr noundef nonnull align 8 dereferenceable(8) %649, ptr noundef %650, ptr noundef %657, ptr noundef %658) #14
  br label %662

662:                                              ; preds = %644, %608
  %663 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %664 = load ptr, ptr %663, align 8, !tbaa !251
  call void @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb(ptr noundef nonnull align 8 dereferenceable(40) %664, ptr noundef nonnull align 1 dereferenceable(1) %327) #14
  br label %665

665:                                              ; preds = %593, %594, %662
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %668

666:                                              ; preds = %195, %284, %407, %100
  %667 = phi { ptr, i32 } [ %101, %100 ], [ %408, %407 ], [ %196, %195 ], [ %285, %284 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  resume { ptr, i32 } %667

668:                                              ; preds = %665, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i1 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca i8, align 1
  store i8 1, ptr %1, align 1, !tbaa !212
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 62) #14
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 77, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %16 = load i8, ptr %15, align 2, !tbaa !248, !range !205, !noundef !206
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  br label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %22 = load i32, ptr %21, align 4, !tbaa !242
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ]
  %25 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  %26 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef %25) #14
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %25, ptr noundef null, ptr noundef null, ptr noundef null) #14
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %27, i16 noundef zeroext 62) #14
  br label %228

30:                                               ; preds = %23
  %31 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !251
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %33) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  %36 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %37 = zext i1 %34 to i8
  store i8 %37, ptr %36, align 1, !tbaa !266
  %38 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %26, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !280
  %40 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %27) #14
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278) #14
  br label %43

43:                                               ; preds = %42, %30
  %44 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %27, i1 noundef zeroext false) #14
  %45 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %27, i16 noundef zeroext 62) #14
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %26, align 8, !tbaa !210
  %48 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %47) #14
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %48, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %51 = load i8, ptr %50, align 8, !tbaa !204, !range !205, !noundef !206
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %26, align 8, !tbaa !210
  %55 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %54) #14
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %58 = load ptr, ptr %57, align 8, !tbaa !221
  %59 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %58) #14
  %60 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 6
  store ptr %59, ptr %60, align 8, !tbaa !275
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load ptr, ptr %57, align 8, !tbaa !221
  %64 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %63) #14
  br label %65

65:                                               ; preds = %56, %62
  %66 = phi ptr [ %64, %62 ], [ null, %56 ]
  %67 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  store ptr %66, ptr %67, align 8
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %69 = load ptr, ptr %68, align 8, !tbaa !267
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %57, align 8, !tbaa !221
  %73 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(186) %72) #14
  %74 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %73, ptr %74, align 8, !tbaa !276
  %75 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %73, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  store ptr null, ptr %74, align 8, !tbaa !276
  br label %79

77:                                               ; preds = %53, %49
  %78 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, i8 0, i64 24, i1 false)
  br label %79

79:                                               ; preds = %65, %76, %71, %77
  %80 = load i8, ptr %50, align 8, !tbaa !204, !range !205, !noundef !206
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %164, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %84 = load ptr, ptr %83, align 8, !tbaa !221
  %85 = load ptr, ptr %26, align 8, !tbaa !210
  %86 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %26, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !281
  %88 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %26, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !282
  %90 = load ptr, ptr %84, align 8, !tbaa !177
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef i32 %92(ptr noundef nonnull align 8 dereferenceable(40) %84, ptr noundef %85, ptr noundef %87, i32 noundef %89) #14
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %125

95:                                               ; preds = %82
  %96 = load i32, ptr %88, align 8, !tbaa !282
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load ptr, ptr %83, align 8, !tbaa !221
  %100 = load ptr, ptr %26, align 8, !tbaa !210
  %101 = load ptr, ptr %100, align 8, !tbaa !177
  %102 = getelementptr inbounds ptr, ptr %101, i64 15
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(33) %100) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %99, i32 noundef 16, ptr noundef %104, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %125

105:                                              ; preds = %95
  %106 = icmp ult i32 %93, %96
  %107 = load ptr, ptr %83, align 8, !tbaa !221
  br i1 %106, label %114, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %26, align 8, !tbaa !210
  %110 = load ptr, ptr %109, align 8, !tbaa !177
  %111 = getelementptr inbounds ptr, ptr %110, i64 15
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(33) %109) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %107, i32 noundef 21, ptr noundef %113, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %125

114:                                              ; preds = %105
  %115 = load ptr, ptr %86, align 8, !tbaa !281
  %116 = zext nneg i32 %93 to i64
  %117 = getelementptr inbounds ptr, ptr %115, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !230
  %119 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %118) #14
  %120 = load ptr, ptr %26, align 8, !tbaa !210
  %121 = load ptr, ptr %120, align 8, !tbaa !177
  %122 = getelementptr inbounds ptr, ptr %121, i64 15
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(33) %120) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %107, i32 noundef 7, ptr noundef %119, ptr noundef %124, ptr noundef null, ptr noundef null) #14
  br label %125

125:                                              ; preds = %98, %114, %108, %82
  %126 = load ptr, ptr %83, align 8, !tbaa !221
  %127 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %126) #14
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i8 1, ptr %36, align 1, !tbaa !266
  br label %143

129:                                              ; preds = %125
  %130 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %131 = load ptr, ptr %130, align 8, !tbaa !278
  %132 = icmp eq ptr %131, null
  br i1 %132, label %143, label %133

133:                                              ; preds = %129
  %134 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %131) #14
  %135 = icmp eq i32 %134, 25
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %138 = load ptr, ptr %137, align 8, !tbaa !279
  %139 = load ptr, ptr %138, align 8, !tbaa !177
  %140 = getelementptr inbounds ptr, ptr %139, i64 11
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(16) %138) #14
  br label %143

143:                                              ; preds = %129, %133, %136, %128
  %144 = phi ptr [ null, %128 ], [ %142, %136 ], [ null, %133 ], [ null, %129 ]
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %146 = load ptr, ptr %145, align 8, !tbaa !267
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %83, align 8, !tbaa !221
  %150 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %149) #14
  %151 = zext i1 %150 to i8
  store i8 %151, ptr %35, align 8, !tbaa !277
  br i1 %150, label %152, label %156

152:                                              ; preds = %148
  %153 = load ptr, ptr %26, align 8, !tbaa !210
  %154 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %153) #14
  %155 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %154, ptr %155, align 8, !tbaa !276
  br label %156

156:                                              ; preds = %148, %152, %143
  %157 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br i1 %157, label %158, label %164

158:                                              ; preds = %156
  %159 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %160 = load ptr, ptr %159, align 8, !tbaa !213
  %161 = load ptr, ptr %26, align 8, !tbaa !210
  %162 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  %163 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %162) #14
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %160, ptr noundef %161, ptr noundef %163) #14
  br label %164

164:                                              ; preds = %156, %158, %79
  %165 = phi ptr [ null, %79 ], [ %144, %158 ], [ %144, %156 ]
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %167 = load ptr, ptr %166, align 8, !tbaa !267
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %26, align 8, !tbaa !210
  tail call void @_ZN11xercesc_2_712SGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %170, ptr noundef %165) #14
  br label %171

171:                                              ; preds = %169, %164
  %172 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %173 = load ptr, ptr %172, align 8, !tbaa !221
  tail call void @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv(ptr noundef nonnull align 8 dereferenceable(186) %173) #14
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %175 = load ptr, ptr %174, align 8, !tbaa !202
  %176 = icmp eq ptr %175, null
  br i1 %176, label %201, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !180
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %26, i64 0, i32 16
  %183 = load i32, ptr %182, align 4, !tbaa !283
  %184 = icmp eq i32 %183, -1
  %185 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  br i1 %184, label %187, label %186

186:                                              ; preds = %181
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %185, ptr noundef %25, i32 noundef %183) #14
  br label %193

187:                                              ; preds = %181
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %185) #14
  br label %193

188:                                              ; preds = %177
  %189 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %190 = load ptr, ptr %26, align 8, !tbaa !210
  %191 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %190) #14
  %192 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %191) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %189, ptr noundef %192) #14
  br label %193

193:                                              ; preds = %186, %187, %188
  %194 = load ptr, ptr %174, align 8, !tbaa !202
  %195 = load ptr, ptr %26, align 8, !tbaa !210
  %196 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %197 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %196) #14
  %198 = load ptr, ptr %194, align 8, !tbaa !177
  %199 = getelementptr inbounds ptr, ptr %198, i64 6
  %200 = load ptr, ptr %199, align 8
  tail call void %200(ptr noundef nonnull align 8 dereferenceable(8) %194, ptr noundef nonnull align 8 dereferenceable(33) %195, i32 noundef %24, i1 noundef zeroext %31, ptr noundef %197) #14
  br label %201

201:                                              ; preds = %193, %171
  br i1 %31, label %227, label %202

202:                                              ; preds = %201
  %203 = load ptr, ptr %32, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  %204 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %203) #14
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr %32, align 8, !tbaa !251
  %208 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %207) #14
  br i1 %208, label %211, label %209

209:                                              ; preds = %206, %202
  %210 = load i8, ptr %36, align 1, !tbaa !266, !range !205, !noundef !206
  br label %211

211:                                              ; preds = %206, %209
  %212 = phi i8 [ 1, %206 ], [ %210, %209 ]
  store i8 %212, ptr %3, align 1, !tbaa !212
  call void @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb(ptr noundef nonnull align 8 dereferenceable(40) %203, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  store i8 1, ptr %1, align 1, !tbaa !212
  %213 = call noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  %214 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %213, ptr %214, align 8, !tbaa !236
  %215 = load ptr, ptr %213, align 8, !tbaa !177
  %216 = getelementptr inbounds ptr, ptr %215, i64 5
  %217 = load ptr, ptr %216, align 8
  %218 = call noundef i32 %217(ptr noundef nonnull align 8 dereferenceable(8) %213) #14
  %219 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %218, ptr %219, align 4, !tbaa !180
  %220 = load ptr, ptr %172, align 8, !tbaa !221
  %221 = load ptr, ptr %214, align 8, !tbaa !236
  %222 = load ptr, ptr %220, align 8, !tbaa !177
  %223 = getelementptr inbounds ptr, ptr %222, i64 11
  %224 = load ptr, ptr %223, align 8
  call void %224(ptr noundef nonnull align 8 dereferenceable(40) %220, ptr noundef %221) #14
  %225 = call noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  %226 = zext i1 %225 to i8
  store i8 %226, ptr %50, align 8, !tbaa !204
  br label %228

227:                                              ; preds = %201
  store i8 0, ptr %1, align 1, !tbaa !212
  br label %228

228:                                              ; preds = %211, %227, %29
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_712SGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %6, align 8, !tbaa !220
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %7, align 4, !tbaa !180
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %8, align 8, !tbaa !271
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !272
  %10 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1023, ptr noundef %3) #14
          to label %11 unwind label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i32 32, ptr %13, align 8, !tbaa !284
  %14 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %14, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_712SGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
          to label %33 unwind label %20

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  br label %37

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #16
          to label %45 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %42

30:                                               ; preds = %28
  %31 = extractvalue { ptr, i32 } %29, 1
  %32 = extractvalue { ptr, i32 } %29, 0
  br label %34

33:                                               ; preds = %11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void

34:                                               ; preds = %30, %20
  %35 = phi i32 [ %31, %30 ], [ %23, %20 ]
  %36 = phi ptr [ %32, %30 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  br label %37

37:                                               ; preds = %34, %16
  %38 = phi i32 [ %35, %34 ], [ %19, %16 ]
  %39 = phi ptr [ %36, %34 ], [ %18, %16 ]
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %40 = insertvalue { ptr, i32 } poison, ptr %39, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %38, 1
  resume { ptr, i32 } %41

42:                                               ; preds = %28
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #17
  unreachable

45:                                               ; preds = %26
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !285 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i32 0, ptr %0, align 8, !tbaa !286
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !287
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !288
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !289
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !290
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !291
  store i16 0, ptr %16, align 2, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) #1 align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !272
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !234
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(160) %10) #13
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !226
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #13
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !262
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !177
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %23) #13
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !207
  %31 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !292
  %33 = load ptr, ptr %30, align 8, !tbaa !177
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !252
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load ptr, ptr %37, align 8, !tbaa !177
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(186) %37) #13
  br label %43

43:                                               ; preds = %39, %29
  %44 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !213
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !177
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(48) %45) #13
  br label %51

51:                                               ; preds = %47, %43
  %52 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !265
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %53) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %53) #13
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !256
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %58) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %58) #13
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %63 = load ptr, ptr %62, align 8, !tbaa !257
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %63) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %63) #13
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !273
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_717PSVIAttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %68) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %68) #13
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !250
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %73, align 8, !tbaa !177
  %77 = getelementptr inbounds ptr, ptr %76, i64 1
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(104) %73) #13
  br label %79

79:                                               ; preds = %75, %71
  %80 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %81 = load ptr, ptr %80, align 8, !tbaa !251
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @_ZN11xercesc_2_712ValueStackOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %81) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %81) #13
  br label %84

84:                                               ; preds = %83, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !176 {
  store ptr %1, ptr %0, align 8, !tbaa !293
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !295
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !295
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !271
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = load ptr, ptr %3, align 8, !tbaa !177
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %7) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !272
  %13 = load ptr, ptr %2, align 8, !tbaa !207
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %13) #14
  %15 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 32, i1 noundef zeroext true, ptr noundef %15) #14
          to label %16 unwind label %87

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  store ptr %14, ptr %17, align 8, !tbaa !262
  %18 = load ptr, ptr %2, align 8, !tbaa !207
  %19 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !284
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  %23 = load ptr, ptr %18, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %22) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !292
  %28 = load ptr, ptr %2, align 8, !tbaa !207
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 192, ptr noundef %28) #14
  %30 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186) %29, ptr noundef null, ptr noundef %30) #14
          to label %31 unwind label %89

31:                                               ; preds = %16
  %32 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %29, ptr %32, align 8, !tbaa !252
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %29) #14
  %33 = load ptr, ptr %2, align 8, !tbaa !207
  %34 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %33) #14
  %35 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull %0, ptr noundef %35) #14
          to label %36 unwind label %91

36:                                               ; preds = %31
  %37 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  store ptr %34, ptr %37, align 8, !tbaa !213
  %38 = load ptr, ptr %2, align 8, !tbaa !207
  %39 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %38) #14
  %40 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %39, i32 noundef 11, ptr noundef %40) #14
          to label %41 unwind label %93

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  store ptr %39, ptr %42, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chAmpersandE) #14
  %43 = load ptr, ptr %42, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chOpenAngleE) #14
  %44 = load ptr, ptr %42, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L12chCloseAngleE) #14
  %45 = load ptr, ptr %42, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chDoubleQuoteE) #14
  %46 = load ptr, ptr %42, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chSingleQuoteE) #14
  %47 = load ptr, ptr %2, align 8, !tbaa !207
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %47) #14
  %49 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %48, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %49) #14
          to label %50 unwind label %95

50:                                               ; preds = %41
  %51 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  store ptr %48, ptr %51, align 8, !tbaa !265
  %52 = load ptr, ptr %2, align 8, !tbaa !207
  %53 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %52) #14
  %54 = load ptr, ptr %2, align 8, !tbaa !207
  %55 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %54) #14
          to label %56 unwind label %97

56:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %55) #14
          to label %57 unwind label %99

57:                                               ; preds = %56
  %58 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %53, i32 noundef 131, i1 noundef zeroext false, ptr noundef nonnull %55, ptr noundef %58) #14
          to label %59 unwind label %97

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  store ptr %53, ptr %60, align 8, !tbaa !256
  %61 = load ptr, ptr %2, align 8, !tbaa !207
  %62 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %61) #14
  %63 = load ptr, ptr %2, align 8, !tbaa !207
  %64 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %63) #14
          to label %65 unwind label %103

65:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %64) #14
          to label %66 unwind label %105

66:                                               ; preds = %65
  %67 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %62, i32 noundef 7, i1 noundef zeroext false, ptr noundef nonnull %64, ptr noundef %67) #14
          to label %68 unwind label %103

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  store ptr %62, ptr %69, align 8, !tbaa !257
  %70 = load ptr, ptr %2, align 8, !tbaa !207
  %71 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %70) #14
  %72 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef %72) #14
          to label %73 unwind label %109

73:                                               ; preds = %68
  %74 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  store ptr %71, ptr %74, align 8, !tbaa !273
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %76 = load ptr, ptr %75, align 8, !tbaa !221
  %77 = icmp eq ptr %76, null
  br i1 %77, label %113, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %76, align 8, !tbaa !177
  %80 = getelementptr inbounds ptr, ptr %79, i64 13
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef zeroext i1 %81(ptr noundef nonnull align 8 dereferenceable(40) %76) #14
  br i1 %82, label %115, label %83

83:                                               ; preds = %78
  %84 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %85 = load ptr, ptr %2, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef nonnull @.str, i32 noundef 2017, i32 noundef 158, ptr noundef %85) #14
          to label %86 unwind label %111

86:                                               ; preds = %83
  tail call void @__cxa_throw(ptr nonnull %84, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

87:                                               ; preds = %1
  %88 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #13
  br label %116

89:                                               ; preds = %16
  %90 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #13
  br label %116

91:                                               ; preds = %31
  %92 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %33) #13
  br label %116

93:                                               ; preds = %36
  %94 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %39, ptr noundef %38) #13
  br label %116

95:                                               ; preds = %41
  %96 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %47) #13
  br label %116

97:                                               ; preds = %57, %50
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %101

99:                                               ; preds = %56
  %100 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %55, ptr noundef %54) #13
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi { ptr, i32 } [ %98, %97 ], [ %100, %99 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %53, ptr noundef %52) #13
  br label %116

103:                                              ; preds = %66, %59
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %107

105:                                              ; preds = %65
  %106 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %64, ptr noundef %63) #13
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi { ptr, i32 } [ %104, %103 ], [ %106, %105 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %62, ptr noundef %61) #13
  br label %116

109:                                              ; preds = %68
  %110 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %71, ptr noundef %70) #13
  br label %116

111:                                              ; preds = %83
  %112 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %84) #15
  br label %116

113:                                              ; preds = %73
  %114 = load ptr, ptr %32, align 8, !tbaa !252
  store ptr %114, ptr %75, align 8, !tbaa !221
  br label %115

115:                                              ; preds = %78, %113
  ret void

116:                                              ; preds = %111, %109, %107, %101, %95, %93, %91, %89, %87
  %117 = phi { ptr, i32 } [ %112, %111 ], [ %110, %109 ], [ %108, %107 ], [ %102, %101 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ]
  resume { ptr, i32 } %117
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = load ptr, ptr %0, align 8, !tbaa !293
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !295
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !177
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !206
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(1000) %11) #14
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !291
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !296 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %9 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_712SGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %10 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %10, align 8, !tbaa !220
  %11 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %11, align 4, !tbaa !180
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %12, align 8, !tbaa !271
  %13 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %13, align 8, !tbaa !272
  %14 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1023, ptr noundef %7) #14
          to label %15 unwind label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store i32 32, ptr %17, align 8, !tbaa !284
  %18 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %18, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_712SGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
          to label %37 unwind label %24

20:                                               ; preds = %8
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  br label %41

24:                                               ; preds = %15
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  %28 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = call ptr @__cxa_begin_catch(ptr %26) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14
  invoke void @__cxa_rethrow() #16
          to label %49 unwind label %32

32:                                               ; preds = %30
  %33 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %34 unwind label %46

34:                                               ; preds = %32
  %35 = extractvalue { ptr, i32 } %33, 1
  %36 = extractvalue { ptr, i32 } %33, 0
  br label %38

37:                                               ; preds = %15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret void

38:                                               ; preds = %34, %24
  %39 = phi i32 [ %35, %34 ], [ %27, %24 ]
  %40 = phi ptr [ %36, %34 ], [ %26, %24 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #13
  br label %41

41:                                               ; preds = %38, %20
  %42 = phi i32 [ %39, %38 ], [ %23, %20 ]
  %43 = phi ptr [ %40, %38 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %44 = insertvalue { ptr, i32 } poison, ptr %43, 0
  %45 = insertvalue { ptr, i32 } %44, i32 %42, 1
  resume { ptr, i32 } %45

46:                                               ; preds = %32
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #17
  unreachable

49:                                               ; preds = %30
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_712SGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !297 {
  store ptr %1, ptr %0, align 8, !tbaa !298
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !300
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !300
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 1, ptr %2, align 1, !tbaa !212
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %6

6:                                                ; preds = %56, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %7 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
          to label %8 unwind label %14

8:                                                ; preds = %6
  switch i32 %7, label %46 [
    i32 1, label %9
    i32 4, label %17
    i32 0, label %28
    i32 2, label %35
    i32 3, label %36
    i32 5, label %40
    i32 6, label %41
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %11 = load ptr, ptr %0, align 8, !tbaa !177
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %10) #14
          to label %53 unwind label %14, !llvm.loop !301

14:                                               ; preds = %52, %47, %46, %41, %40, %36, %35, %31, %30, %9, %6
  %15 = phi i1 [ false, %9 ], [ true, %52 ], [ true, %47 ], [ true, %46 ], [ true, %41 ], [ true, %40 ], [ true, %36 ], [ true, %35 ], [ true, %31 ], [ true, %30 ], [ false, %6 ]
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %57

17:                                               ; preds = %8
  %18 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
          to label %21 unwind label %25

21:                                               ; preds = %19
  %22 = load ptr, ptr %20, align 8, !tbaa !210
  %23 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %22) #14
          to label %24 unwind label %25

24:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %27 unwind label %25

25:                                               ; preds = %24, %21, %19
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %57

27:                                               ; preds = %17, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %81

28:                                               ; preds = %8
  %29 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280) #14
          to label %31 unwind label %14

31:                                               ; preds = %30, %28
  %32 = load ptr, ptr %0, align 8, !tbaa !177
  %33 = getelementptr inbounds ptr, ptr %32, i64 11
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
          to label %47 unwind label %14

35:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %47 unwind label %14

36:                                               ; preds = %8
  %37 = load ptr, ptr %0, align 8, !tbaa !177
  %38 = getelementptr inbounds ptr, ptr %37, i64 19
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
          to label %47 unwind label %14

40:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %47 unwind label %14

41:                                               ; preds = %8
  %42 = load ptr, ptr %0, align 8, !tbaa !177
  %43 = getelementptr inbounds ptr, ptr %42, i64 18
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
          to label %47 unwind label %14

46:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 60) #14
          to label %47 unwind label %14

47:                                               ; preds = %46, %41, %40, %36, %35, %31
  %48 = load i32, ptr %3, align 4, !tbaa !200
  %49 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #14
          to label %50 unwind label %14

50:                                               ; preds = %47
  %51 = icmp eq i32 %48, %49
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %53 unwind label %14

53:                                               ; preds = %50, %52, %9
  %54 = load i8, ptr %2, align 1, !tbaa !212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %53, %78
  br label %6, !llvm.loop !302

57:                                               ; preds = %25, %14
  %58 = phi { ptr, i32 } [ %16, %14 ], [ %26, %25 ]
  %59 = phi i1 [ %15, %14 ], [ false, %25 ]
  %60 = extractvalue { ptr, i32 } %58, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %61 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = extractvalue { ptr, i32 } %58, 0
  %65 = call ptr @__cxa_begin_catch(ptr %64) #15
  br i1 %59, label %66, label %69

66:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %69 unwind label %67

67:                                               ; preds = %73, %66
  %68 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %82 unwind label %84

69:                                               ; preds = %66, %63
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %71 = load ptr, ptr %70, align 8, !tbaa !202
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %65) #14
  %75 = load ptr, ptr %71, align 8, !tbaa !177
  %76 = getelementptr inbounds ptr, ptr %75, i64 7
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(72) %74) #14
          to label %78 unwind label %67

78:                                               ; preds = %69, %73
  call void @__cxa_end_catch()
  %79 = load i8, ptr %2, align 1, !tbaa !212
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %56

81:                                               ; preds = %78, %53, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret i1 true

82:                                               ; preds = %57, %67
  %83 = phi { ptr, i32 } [ %68, %67 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  resume { ptr, i32 } %83

84:                                               ; preds = %67
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !303
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = add i32 %3, -5
  %8 = icmp ult i32 %7, 397
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = and i32 %3, -2
  %11 = icmp eq i32 %10, 402
  %12 = select i1 %11, i32 1, i32 3
  br label %13

13:                                               ; preds = %9, %6, %1
  %14 = phi i32 [ 0, %1 ], [ 2, %6 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  %2 = load ptr, ptr %0, align 8, !tbaa !298
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !307

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !300
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !307

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !300
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !177
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !206
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(80) %11) #14
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #17
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
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

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = load ptr, ptr %0, align 8, !tbaa !308
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !311
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !316

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !317 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712SGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 8, !tbaa !204, !range !205, !noundef !206
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %6 = load i8, ptr %5, align 4, !range !205
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !319
  tail call void @_ZN11xercesc_2_715ValueStoreCache11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !317 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !322
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ValueStoreCache11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %5 = alloca i32, align 4
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  store i8 0, ptr %3, align 1, !tbaa !212
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %11 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  br label %13

13:                                               ; preds = %105, %4
  %14 = phi i32 [ 0, %4 ], [ %106, %105 ]
  %15 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  switch i16 %15, label %18 [
    i16 62, label %26
    i16 47, label %26
  ]

18:                                               ; preds = %17
  %19 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  %20 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %19, i16 noundef zeroext %15) #14
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  %23 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %7, i1 noundef zeroext false) #14
  %24 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  br label %26

25:                                               ; preds = %18
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #14
  br label %26

26:                                               ; preds = %17, %17, %25, %21, %13
  %27 = phi i16 [ %24, %21 ], [ %15, %25 ], [ %15, %17 ], [ %15, %13 ], [ %15, %17 ]
  %28 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  %29 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %28, i16 noundef zeroext %27) #14
  br i1 %29, label %86, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %31 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %5) #14
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  br label %37

35:                                               ; preds = %32
  %36 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %36, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %37

37:                                               ; preds = %35, %34
  call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 62) #14
  br label %109

38:                                               ; preds = %30
  %39 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  %40 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false) #14
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180) #14
  %42 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList) #14
  switch i16 %42, label %43 [
    i16 62, label %103
    i16 47, label %103
    i16 39, label %49
    i16 34, label %49
  ]

43:                                               ; preds = %41
  %44 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  %45 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %44, i16 noundef zeroext %42) #14
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = icmp eq i16 %42, 60
  br i1 %47, label %48, label %109

48:                                               ; preds = %46
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %109

49:                                               ; preds = %41, %41, %43, %38
  %50 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %39, ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  br i1 %50, label %59, label %51

51:                                               ; preds = %49
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199) #14
  %52 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0) #14
  switch i16 %52, label %53 [
    i16 62, label %59
    i16 47, label %59
  ]

53:                                               ; preds = %51
  %54 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  %55 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %54, i16 noundef zeroext %52) #14
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = icmp eq i16 %52, 60
  br i1 %57, label %58, label %109

58:                                               ; preds = %56
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %109

59:                                               ; preds = %53, %51, %51, %49
  %60 = icmp ult i32 %14, %6
  br i1 %60, label %71, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %10, align 8, !tbaa !207
  %63 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %62) #14
  %64 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  %65 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  %66 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  %67 = load ptr, ptr %10, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %63, ptr noundef %39, i32 noundef %64, ptr noundef %65, i32 noundef %66, ptr noundef %67) #14
          to label %68 unwind label %69

68:                                               ; preds = %61
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %63) #14
  br label %76

69:                                               ; preds = %61
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %63, ptr noundef %62) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %107

71:                                               ; preds = %59
  %72 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %14) #14
  %73 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  %74 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  %75 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  call void @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j(ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef %39, i32 noundef %73, ptr noundef %74, i32 noundef %75) #14
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, ptr %11, align 8, !tbaa !284
  %78 = icmp ult i32 %14, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @_ZN11xercesc_2_712SGXMLScanner22resizeRawAttrColonListEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #14
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, ptr %5, align 4, !tbaa !200
  %82 = load ptr, ptr %12, align 8, !tbaa !292
  %83 = zext i32 %14 to i64
  %84 = getelementptr inbounds i32, ptr %82, i64 %83
  store i32 %81, ptr %84, align 4, !tbaa !200
  %85 = add i32 %14, 1
  br label %103

86:                                               ; preds = %26
  switch i16 %27, label %105 [
    i16 0, label %87
    i16 47, label %93
    i16 62, label %97
    i16 60, label %99
    i16 39, label %100
    i16 34, label %100
  ]

87:                                               ; preds = %86
  %88 = call ptr @__cxa_allocate_exception(i64 48) #15
  %89 = load ptr, ptr %10, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %88, ptr noundef nonnull @.str, i32 noundef 674, i32 noundef 47, ptr noundef %89) #14
          to label %90 unwind label %91

90:                                               ; preds = %87
  call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

91:                                               ; preds = %87
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %88) #15
  br label %107

93:                                               ; preds = %86
  %94 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  store i8 1, ptr %3, align 1, !tbaa !212
  %95 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 62) #14
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %110

97:                                               ; preds = %86
  %98 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  br label %110

99:                                               ; preds = %86
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %110

100:                                              ; preds = %86, %86
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  %101 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext %27) #14
  %102 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %7, i1 noundef zeroext false) #14
  br label %105, !llvm.loop !328

103:                                              ; preds = %80, %41, %41
  %104 = phi i32 [ %85, %80 ], [ %14, %41 ], [ %14, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %105

105:                                              ; preds = %86, %100, %103
  %106 = phi i32 [ %104, %103 ], [ %14, %100 ], [ %14, %86 ]
  br label %13, !llvm.loop !328

107:                                              ; preds = %91, %69
  %108 = phi { ptr, i32 } [ %92, %91 ], [ %70, %69 ]
  resume { ptr, i32 } %108

109:                                              ; preds = %37, %56, %58, %46, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %110

110:                                              ; preds = %109, %93, %96, %99, %97
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !329 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !330
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !332 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !333 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !335
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !336 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !335
  %8 = and i8 %7, 16
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !337 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !318
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #14
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !338 {
  %2 = load i32, ptr %0, align 8, !tbaa !286
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !339 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  %4 = load i32, ptr %0, align 8, !tbaa !286
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !223
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !340

8:                                                ; preds = %3
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %4 = alloca i16, align 2
  %5 = alloca [9 x i16], align 16
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 2 dereferenceable(2) %4) #14
  br i1 %10, label %11, label %97

11:                                               ; preds = %3
  %12 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  br label %13

13:                                               ; preds = %95, %11
  %14 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %15 unwind label %34

15:                                               ; preds = %13
  %16 = zext i16 %14 to i32
  %17 = load i16, ptr %4, align 2, !tbaa !223
  %18 = icmp eq i16 %14, %17
  br i1 %18, label %76, label %19

19:                                               ; preds = %15
  %20 = icmp eq i16 %14, 38
  br i1 %20, label %56, label %21

21:                                               ; preds = %19
  %22 = add i16 %14, 8192
  %23 = icmp ult i16 %22, -2048
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %26 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %25, i16 noundef zeroext %14) #14
  br i1 %26, label %85, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %29 = icmp eq i16 %14, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = call ptr @__cxa_allocate_exception(i64 48) #15
  %32 = load ptr, ptr %28, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull @.str, i32 noundef 3892, i32 noundef 47, ptr noundef %32) #14
          to label %33 unwind label %38

33:                                               ; preds = %30
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %99 unwind label %36

34:                                               ; preds = %13, %48, %49, %54, %55, %76, %80, %85
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %87

36:                                               ; preds = %33, %84
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %87

38:                                               ; preds = %30
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %31) #15
  br label %87

40:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #15
  %41 = load ptr, ptr %28, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %16, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 16, ptr noundef %41) #14
          to label %42 unwind label %44

42:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #14
          to label %43 unwind label %44

43:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #15
  br label %85

44:                                               ; preds = %42, %40
  %45 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #15
  br label %87

46:                                               ; preds = %21
  %47 = icmp ult i16 %14, -9216
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %14) #14
          to label %49 unwind label %34

49:                                               ; preds = %48
  %50 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %51 unwind label %34

51:                                               ; preds = %49
  %52 = add i16 %50, 8192
  %53 = icmp ult i16 %52, -1024
  br i1 %53, label %54, label %85

54:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %85 unwind label %34

55:                                               ; preds = %46
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282) #14
          to label %85 unwind label %34

56:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  %57 = load ptr, ptr %0, align 8, !tbaa !177
  %58 = getelementptr inbounds ptr, ptr %57, i64 13
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %61 unwind label %67

61:                                               ; preds = %56
  %62 = icmp eq i32 %60, 1
  br i1 %62, label %63, label %75

63:                                               ; preds = %61
  %64 = load i8, ptr %6, align 1, !tbaa !212, !range !205, !noundef !206
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext -1) #14
          to label %69 unwind label %67

67:                                               ; preds = %74, %69, %66, %56
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %87

69:                                               ; preds = %66, %63
  %70 = load i16, ptr %7, align 2, !tbaa !223
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %70) #14
          to label %71 unwind label %67

71:                                               ; preds = %69
  %72 = load i16, ptr %8, align 2, !tbaa !223
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %72) #14
          to label %75 unwind label %67

75:                                               ; preds = %71, %74, %61
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %95

76:                                               ; preds = %15
  %77 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %78 unwind label %34

78:                                               ; preds = %76
  %79 = icmp eq i32 %12, %77
  br i1 %79, label %97, label %80

80:                                               ; preds = %78
  %81 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %82 unwind label %34

82:                                               ; preds = %80
  %83 = icmp ugt i32 %12, %81
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %97 unwind label %36

85:                                               ; preds = %82, %54, %51, %55, %24, %43
  %86 = phi i16 [ %14, %24 ], [ %14, %43 ], [ %50, %54 ], [ %50, %51 ], [ %14, %55 ], [ %14, %82 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %86) #14
          to label %95 unwind label %34

87:                                               ; preds = %34, %36, %67, %44, %38
  %88 = phi { ptr, i32 } [ %39, %38 ], [ %45, %44 ], [ %68, %67 ], [ %35, %34 ], [ %37, %36 ]
  %89 = extractvalue { ptr, i32 } %88, 1
  %90 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = extractvalue { ptr, i32 } %88, 0
  %94 = call ptr @__cxa_begin_catch(ptr %93) #15
  call void @__cxa_end_catch()
  br label %95

95:                                               ; preds = %92, %85, %75
  br label %13, !llvm.loop !341

96:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  resume { ptr, i32 } %88

97:                                               ; preds = %84, %78, %3
  %98 = phi i1 [ false, %3 ], [ %79, %78 ], [ %79, %84 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i1 %98

99:                                               ; preds = %33
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !342 {
  %2 = load i32, ptr %0, align 8, !tbaa !286
  ret i32 %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !343 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !344
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !330
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !230
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !330
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !345 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !330
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !346

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !347
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !344
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !230
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat align 2 !prof !348 {
  tail call void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) #14
  tail call void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner22resizeRawAttrColonListEv(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #1 align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !284
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !177
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  %13 = load i32, ptr %2, align 8, !tbaa !284
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !292
  br i1 %14, label %26, label %17

17:                                               ; preds = %1, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %1 ]
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !200
  %21 = getelementptr inbounds i32, ptr %12, i64 %18
  store i32 %20, ptr %21, align 4, !tbaa !200
  %22 = add nuw nsw i64 %18, 1
  %23 = load i32, ptr %2, align 8, !tbaa !284
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %17, label %26, !llvm.loop !349

26:                                               ; preds = %17, %1
  %27 = load ptr, ptr %5, align 8, !tbaa !207
  %28 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %27, align 8, !tbaa !177
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %16) #14
  store ptr %12, ptr %28, align 8, !tbaa !292
  store i32 %4, ptr %2, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !350 {
  store i32 0, ptr %0, align 8, !tbaa !286
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  store i16 0, ptr %3, align 2, !tbaa !223
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !343 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !330
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !351
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !352

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !347
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !330
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !230
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !344
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !230
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !230
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !353

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !347
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !344
  %49 = load ptr, ptr %46, align 8, !tbaa !177
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !344
  store i32 %12, ptr %6, align 8, !tbaa !351
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !354 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !355
  %7 = icmp ugt i64 %6, %4
  br i1 %7, label %8, label %14, !prof !357

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !358
  %11 = add i32 %2, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  br label %30

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !359
  %17 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !358
  %19 = load ptr, ptr %16, align 8, !tbaa !177
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18) #14
  %22 = add i32 %2, 1
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %5, align 8, !tbaa !355
  %24 = load ptr, ptr %15, align 8, !tbaa !359
  %25 = shl nuw nsw i64 %23, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !177
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %25) #14
  store ptr %29, ptr %17, align 8, !tbaa !358
  br label %30

30:                                               ; preds = %8, %14
  %31 = phi i64 [ %13, %8 ], [ %25, %14 ]
  %32 = phi ptr [ %10, %8 ], [ %29, %14 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %1, i64 %31, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !354 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !360
  %7 = icmp ugt i64 %6, %4
  br i1 %7, label %8, label %14, !prof !361

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !362
  %11 = add i32 %2, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  br label %30

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !359
  %17 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !362
  %19 = load ptr, ptr %16, align 8, !tbaa !177
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18) #14
  %22 = add i32 %2, 1
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %5, align 8, !tbaa !360
  %24 = load ptr, ptr %15, align 8, !tbaa !359
  %25 = shl nuw nsw i64 %23, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !177
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %25) #14
  store ptr %29, ptr %17, align 8, !tbaa !362
  br label %30

30:                                               ; preds = %8, %14
  %31 = phi i64 [ %13, %8 ], [ %25, %14 ]
  %32 = phi ptr [ %10, %8 ], [ %29, %14 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %1, i64 %31, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !363 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !311
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !365
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !366 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !311
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !367
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !368 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #14
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !369 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !370

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIbE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 80, ptr noundef %7) #14
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #14
  %14 = load i8, ptr %13, align 1, !tbaa !212, !range !205, !noundef !206
  %15 = icmp ne i8 %14, 0
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #14
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !371 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !372
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !373 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  br i1 %4, label %9, label %5, !prof !378

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !374
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  %8 = load ptr, ptr %7, align 8, !tbaa !230
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #0 comdat align 2 !prof !379 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !380
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !381 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !382

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !223
  %8 = load i16, ptr %1, align 2, !tbaa !223
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !383

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !384

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !223
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !307

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !385

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !223
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !386

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !387

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !223
  %28 = load i16, ptr %26, align 2, !tbaa !223
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !388, !llvm.loop !389

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #0 comdat align 2 !prof !390 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 8, !tbaa !391, !range !205, !noundef !206
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !392 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !393
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 17
  %3 = load i8, ptr %2, align 1, !tbaa !397, !range !205, !noundef !206
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !398 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !399
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  %5 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !268
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !270
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !269
  %13 = icmp sgt i32 %6, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %6, -1
  store i32 %15, ptr %11, align 4, !tbaa !269
  store i32 %15, ptr %7, align 8, !tbaa !270
  br label %16

16:                                               ; preds = %10, %3, %14
  %17 = phi i32 [ 1, %14 ], [ 2, %3 ], [ 0, %10 ]
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %19 = load i8, ptr %18, align 8, !tbaa !204, !range !205, !noundef !206
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %25 = load i8, ptr %24, align 1, !tbaa !266, !range !205, !noundef !206
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 2, i32 1
  br label %28

28:                                               ; preds = %23, %21, %16
  %29 = phi i32 [ %27, %23 ], [ 0, %21 ], [ 0, %16 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !275
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !233
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %35, ptr noundef nonnull %31) #14
  %37 = load ptr, ptr %30, align 8, !tbaa !275
  %38 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %37) #14
  %39 = and i32 %38, -2
  %40 = icmp ne i32 %39, 2
  br label %49

41:                                               ; preds = %28
  %42 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !233
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %47, ptr noundef nonnull %43) #14
  br label %49

49:                                               ; preds = %41, %45, %33
  %50 = phi ptr [ %36, %33 ], [ %48, %45 ], [ null, %41 ]
  %51 = phi i1 [ %40, %33 ], [ true, %45 ], [ true, %41 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !276
  %54 = icmp ne ptr %53, null
  %55 = icmp eq i32 %29, 2
  %56 = and i1 %55, %51
  %57 = and i1 %56, %54
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = icmp eq ptr %2, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !278
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60, %58
  %65 = phi ptr [ %2, %58 ], [ %62, %60 ]
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %67 = load ptr, ptr %66, align 8, !tbaa !207
  %68 = load ptr, ptr %65, align 8, !tbaa !177
  %69 = getelementptr inbounds ptr, ptr %68, i64 7
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(104) %65, ptr noundef nonnull %53, ptr noundef %67, i1 noundef zeroext false) #14
  br label %72

72:                                               ; preds = %64, %60, %49
  %73 = phi ptr [ null, %60 ], [ null, %49 ], [ %71, %64 ]
  %74 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !250
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %77 = load ptr, ptr %76, align 8, !tbaa !241
  %78 = load i8, ptr %4, align 8, !tbaa !277, !range !205, !noundef !206
  %79 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %82 = load ptr, ptr %81, align 8, !tbaa !233
  %83 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %82, ptr noundef nonnull %1) #14
  br label %84

84:                                               ; preds = %72, %80
  %85 = phi ptr [ %83, %80 ], [ null, %72 ]
  %86 = icmp eq ptr %2, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %89 = load ptr, ptr %88, align 8, !tbaa !233
  %90 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %89, ptr noundef nonnull %2) #14
  br label %91

91:                                               ; preds = %84, %87
  %92 = phi ptr [ %90, %87 ], [ null, %84 ]
  %93 = icmp ne i8 %78, 0
  %94 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %95 = load ptr, ptr %94, align 8, !tbaa !233
  %96 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #14
  %97 = load ptr, ptr %52, align 8, !tbaa !276
  tail call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %75, i32 noundef %29, i32 noundef %17, ptr noundef %77, i1 noundef zeroext %93, ptr noundef %85, ptr noundef %50, ptr noundef %92, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %73, ptr noundef null) #14
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %99 = load ptr, ptr %98, align 8, !tbaa !267
  %100 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %102 = load ptr, ptr %101, align 8, !tbaa !247
  %103 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %104 = load ptr, ptr %102, align 8, !tbaa !177
  %105 = getelementptr inbounds ptr, ptr %104, i64 10
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(40) %102, i32 noundef %103) #14
  %108 = load ptr, ptr %74, align 8, !tbaa !250
  %109 = load ptr, ptr %99, align 8, !tbaa !177
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  tail call void %111(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %100, ptr noundef %107, ptr noundef %108) #14
  %112 = load i32, ptr %5, align 4, !tbaa !268
  %113 = add nsw i32 %112, -1
  store i32 %113, ptr %5, align 4, !tbaa !268
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #0 comdat align 2 !prof !366 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !405 {
  store i32 0, ptr %0, align 8, !tbaa !286
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !406 {
  store i32 0, ptr %0, align 8, !tbaa !286
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !407 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !408 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !409
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 !prof !369 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !411 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !311
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !413
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !414 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !311
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !415, !range !205, !noundef !206
  %12 = icmp ne i8 %11, 0
  ret i1 %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !416 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !417
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIbE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !420 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !417
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !421

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !419
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !422
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !369 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !417
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !423

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !419
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !423

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !422
  %21 = zext i32 %1 to i64
  %22 = zext i32 %14 to i64
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %21, %18 ], [ %25, %23 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = getelementptr inbounds i8, ptr %20, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !212, !range !205, !noundef !206
  %28 = getelementptr inbounds i8, ptr %20, i64 %24
  store i8 %27, ptr %28, align 1, !tbaa !212
  %29 = icmp eq i64 %25, %22
  br i1 %29, label %30, label %23, !llvm.loop !424

30:                                               ; preds = %23, %16, %13
  store i32 %14, ptr %3, align 4, !tbaa !417
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !373 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.1", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !373 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.1", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !378

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 61, i32 noundef 80, ptr noundef %7) #14
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #14
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !425 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !426
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !373 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !426
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !429

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 198, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !430
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  %4 = load i32, ptr %0, align 8, !tbaa !286
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !223
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !431 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !432

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !286
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !287
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !433

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #14
  %12 = load i32, ptr %0, align 8, !tbaa !286
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !291
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !286
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !286
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #14
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !434 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !435

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !223
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !436

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !223
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !437, !llvm.loop !438

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !286
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !287
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !439

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #14
  %21 = load i32, ptr %0, align 8, !tbaa !286
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !291
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !286
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !286
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 !prof !420 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #14
  %3 = load i8, ptr %1, align 1, !tbaa !212, !range !205, !noundef !206
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !422
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !417
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  store i8 %3, ptr %9, align 1, !tbaa !212
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !417
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !420 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !417
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !440
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %40, !prof !441

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !419
  %16 = zext i32 %13 to i64
  %17 = load ptr, ptr %15, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !417
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !422
  br i1 %22, label %27, label %25, !prof !442

25:                                               ; preds = %9
  %26 = zext i32 %21 to i64
  br label %33

27:                                               ; preds = %33, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !419
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %28, align 8, !tbaa !177
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %24) #14
  store ptr %20, ptr %29, align 8, !tbaa !422
  store i32 %13, ptr %6, align 8, !tbaa !440
  br label %40

33:                                               ; preds = %25, %33
  %34 = phi i64 [ 0, %25 ], [ %38, %33 ]
  %35 = getelementptr inbounds i8, ptr %24, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !212, !range !205, !noundef !206
  %37 = getelementptr inbounds i8, ptr %20, i64 %34
  store i8 %36, ptr %37, align 1, !tbaa !212
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %26
  br i1 %39, label %27, label %33, !prof !443, !llvm.loop !444

40:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !445 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !447

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #14
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !448
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 !prof !449 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !450
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !452 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !453 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !454
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !455

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !456
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !457

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) #14
  store ptr %11, ptr %3, align 8, !tbaa !454
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ %4, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack15getCurrentScopeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !458 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !311
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !459
  ret i32 %11
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !460 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !364
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !311
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !230
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 8
  store i8 %3, ptr %12, align 8, !tbaa !415
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !329 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !311
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !230
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 16
  store i32 %1, ptr %11, align 4, !tbaa !283
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca %"class.xercesc_2_7::Janitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %5 = load ptr, ptr %4, align 8, !tbaa !207
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %6) #14
  %7 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %27, label %15

12:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 295) #14
          to label %27 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %28

15:                                               ; preds = %10, %22
  %16 = phi i32 [ %23, %22 ], [ 0, %10 ]
  %17 = or disjoint i32 %16, 1
  %18 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %17) #14
          to label %19 unwind label %25

19:                                               ; preds = %15
  %20 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %16) #14
          to label %21 unwind label %25

21:                                               ; preds = %19
  invoke void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %18, ptr noundef %20) #14
          to label %22 unwind label %25

22:                                               ; preds = %21
  %23 = add i32 %16, 2
  %24 = icmp ult i32 %23, %7
  br i1 %24, label %15, label %27, !llvm.loop !461

25:                                               ; preds = %21, %19, %15
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %28

27:                                               ; preds = %22, %10, %12
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void

28:                                               ; preds = %25, %13
  %29 = phi { ptr, i32 } [ %14, %13 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
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
  %14 = alloca %"class.xercesc_2_7::Janitor.17", align 8
  %15 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %17 = load ptr, ptr %16, align 8, !tbaa !207
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %2, ptr noundef %17) #14
  invoke void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %1) #14
          to label %18 unwind label %56

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !214
  %21 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80) %20, ptr noundef nonnull %4) #14
          to label %22 unwind label %56

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  %23 = icmp eq ptr %21, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %21, align 8, !tbaa !177
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(8) %21) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %334

30:                                               ; preds = %24, %22
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %5) #15
  %31 = load ptr, ptr %16, align 8, !tbaa !207
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef null, ptr noundef %31, ptr noundef null) #14
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %5, i32 noundef 0) #14
          to label %32 unwind label %58

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %5, i1 noundef zeroext true) #14
          to label %33 unwind label %58

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %35 = load ptr, ptr %34, align 8, !tbaa !240
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %35) #14
          to label %36 unwind label %58

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %38 = load ptr, ptr %37, align 8, !tbaa !238
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %38) #14
          to label %39 unwind label %58

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %40) #14
          to label %41 unwind label %60

41:                                               ; preds = %39
  %42 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  store i16 -1, ptr %7, align 2, !tbaa !223
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 8 dereferenceable(40) %42) #14
          to label %43 unwind label %62

43:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %42) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %40) #14
          to label %45 unwind label %64

45:                                               ; preds = %43
  %46 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  %47 = load ptr, ptr %34, align 8, !tbaa !240
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !177
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(40) %46) #14
          to label %54 unwind label %66

54:                                               ; preds = %49
  br i1 %53, label %68, label %55

55:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef %44) #14
          to label %68 unwind label %66

56:                                               ; preds = %18, %3
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %363

58:                                               ; preds = %36, %33, %32, %30
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %332

60:                                               ; preds = %39
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %330

62:                                               ; preds = %41
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  br label %328

64:                                               ; preds = %43
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %326

66:                                               ; preds = %84, %55, %49
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %324

68:                                               ; preds = %55, %54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %69, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
          to label %70 unwind label %78

70:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #15
  %71 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %46) #14
  %72 = load ptr, ptr %9, align 8, !tbaa !258
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %10, i32 noundef 0, ptr noundef %71, ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %72, ptr noundef nonnull %69) #14
  %73 = load ptr, ptr %34, align 8, !tbaa !240
  %74 = load ptr, ptr %73, align 8, !tbaa !177
  %75 = getelementptr inbounds ptr, ptr %74, i64 6
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull %10) #14
          to label %85 unwind label %80

78:                                               ; preds = %68
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %82

80:                                               ; preds = %70
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #15
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %324

84:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef %44) #14
          to label %87 unwind label %66

85:                                               ; preds = %70
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  %86 = icmp eq ptr %77, null
  br i1 %86, label %87, label %170

87:                                               ; preds = %84, %85
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %89 = load i8, ptr %88, align 1, !tbaa !260, !range !205, !noundef !206
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %321

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #14
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %92, ptr noundef nonnull align 8 dereferenceable(32) %11) #14
          to label %93 unwind label %119

93:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %12) #15
  %94 = load ptr, ptr %16, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %12, ptr noundef %94) #14
          to label %95 unwind label %121

95:                                               ; preds = %93
  %96 = load ptr, ptr %11, align 8, !tbaa !258
  %97 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %46) #14
  %98 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %12, ptr noundef %96, ptr noundef %97, ptr noundef nonnull align 8 dereferenceable(81) %12) #14
          to label %99 unwind label %123

99:                                               ; preds = %95
  br i1 %98, label %100, label %103

100:                                              ; preds = %99
  %101 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %12) #14
          to label %102 unwind label %123

102:                                              ; preds = %100
  br i1 %101, label %103, label %140

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %105 = load i8, ptr %104, align 8, !tbaa !261, !range !205, !noundef !206
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %40) #14
          to label %108 unwind label %125

108:                                              ; preds = %107
  %109 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #14
  %110 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %46) #14
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %110, ptr noundef nonnull align 8 dereferenceable(40) %109) #14
          to label %111 unwind label %127

111:                                              ; preds = %108
  %112 = load ptr, ptr %16, align 8, !tbaa !207
  %113 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %112) #14
          to label %114 unwind label %127

114:                                              ; preds = %111
  %115 = load ptr, ptr %11, align 8, !tbaa !258
  %116 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %109) #14
  %117 = load ptr, ptr %16, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %113, ptr noundef %115, ptr noundef %116, ptr noundef %117) #14
          to label %118 unwind label %129

118:                                              ; preds = %114
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #15
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %113, ptr noundef %112) #13
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %128, %127 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #13
  br label %133

133:                                              ; preds = %131, %125
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #15
  br label %164

135:                                              ; preds = %103
  %136 = call ptr @__cxa_allocate_exception(i64 48) #15
  %137 = load ptr, ptr %16, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %136, ptr noundef nonnull @.str, i32 noundef 3582, i32 noundef 99, ptr noundef %137) #14
          to label %150 unwind label %138

138:                                              ; preds = %135
  %139 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %136) #15
  br label %164

140:                                              ; preds = %102
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %142 = load i8, ptr %141, align 8, !tbaa !261, !range !205, !noundef !206
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %140
  %145 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %12) #14
          to label %146 unwind label %123

146:                                              ; preds = %144
  br i1 %145, label %147, label %155

147:                                              ; preds = %146
  %148 = call ptr @__cxa_allocate_exception(i64 48) #15
  %149 = load ptr, ptr %16, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %148, ptr noundef nonnull @.str, i32 noundef 3587, i32 noundef 99, ptr noundef %149) #14
          to label %150 unwind label %153

150:                                              ; preds = %147, %135
  %151 = phi ptr [ %136, %135 ], [ %148, %147 ]
  invoke void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %152 unwind label %123

152:                                              ; preds = %150
  unreachable

153:                                              ; preds = %147
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %148) #15
  br label %164

155:                                              ; preds = %146, %140
  %156 = load ptr, ptr %16, align 8, !tbaa !207
  %157 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %156) #14
          to label %158 unwind label %123

158:                                              ; preds = %155
  %159 = load ptr, ptr %16, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %157, ptr noundef nonnull align 8 dereferenceable(81) %12, ptr noundef %159) #14
          to label %162 unwind label %160

160:                                              ; preds = %158
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %157, ptr noundef %156) #13
  br label %164

162:                                              ; preds = %158, %118
  %163 = phi ptr [ %113, %118 ], [ %157, %158 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %12) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #15
  br label %170

164:                                              ; preds = %160, %153, %138, %133, %123
  %165 = phi { ptr, i32 } [ %124, %123 ], [ %139, %138 ], [ %134, %133 ], [ %154, %153 ], [ %161, %160 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %12) #13
  br label %166

166:                                              ; preds = %164, %121
  %167 = phi { ptr, i32 } [ %165, %164 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #15
  br label %168

168:                                              ; preds = %166, %119
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #15
  br label %324

170:                                              ; preds = %162, %85
  %171 = phi ptr [ %77, %85 ], [ %163, %162 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %171) #14
  %172 = load ptr, ptr %171, align 8, !tbaa !177
  %173 = getelementptr inbounds ptr, ptr %172, i64 6
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef zeroext i1 %174(ptr noundef nonnull align 8 dereferenceable(41) %171) #14
          to label %176 unwind label %192

176:                                              ; preds = %170
  %177 = load ptr, ptr %171, align 8, !tbaa !177
  %178 = getelementptr inbounds ptr, ptr %177, i64 10
  %179 = load ptr, ptr %178, align 8
  invoke void %179(ptr noundef nonnull align 8 dereferenceable(41) %171, i1 noundef zeroext false) #14
          to label %180 unwind label %192

180:                                              ; preds = %176
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(41) %171) #14
          to label %181 unwind label %192

181:                                              ; preds = %180
  %182 = load ptr, ptr %171, align 8, !tbaa !177
  %183 = getelementptr inbounds ptr, ptr %182, i64 10
  %184 = load ptr, ptr %183, align 8
  invoke void %184(ptr noundef nonnull align 8 dereferenceable(41) %171, i1 noundef zeroext %175) #14
          to label %185 unwind label %192

185:                                              ; preds = %181
  %186 = call noundef zeroext i1 @_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv(ptr noundef nonnull align 8 dereferenceable(368) %5) #14
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %188 = load i8, ptr %187, align 1, !range !205
  %189 = icmp ne i8 %188, 0
  %190 = select i1 %186, i1 %189, i1 false
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297) #14
          to label %194 unwind label %192

192:                                              ; preds = %191, %181, %180, %176, %170
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %322

194:                                              ; preds = %191, %185
  %195 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %5) #14
          to label %196 unwind label %223

196:                                              ; preds = %194
  %197 = icmp eq ptr %195, null
  br i1 %197, label %320, label %198

198:                                              ; preds = %196
  %199 = load ptr, ptr %195, align 8, !tbaa !177
  %200 = getelementptr inbounds ptr, ptr %199, i64 13
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(32) %195) #14
          to label %203 unwind label %225

203:                                              ; preds = %198
  %204 = icmp eq ptr %202, null
  br i1 %204, label %320, label %205

205:                                              ; preds = %203
  %206 = load ptr, ptr %202, align 8, !tbaa !177
  %207 = getelementptr inbounds ptr, ptr %206, i64 41
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef ptr %208(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE) #14
          to label %210 unwind label %227

210:                                              ; preds = %205
  %211 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %209, ptr noundef %2) #14
  br i1 %211, label %232, label %212

212:                                              ; preds = %210
  %213 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %214 = load i8, ptr %213, align 8, !tbaa !204, !range !205, !noundef !206
  %215 = icmp ne i8 %214, 0
  %216 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %217 = load i32, ptr %216, align 8
  %218 = icmp eq i32 %217, 2
  %219 = select i1 %215, i1 true, i1 %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %212
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %222 = load ptr, ptr %221, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %222, i32 noundef 69, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #14
          to label %229 unwind label %227

223:                                              ; preds = %194
  %224 = landingpad { ptr, i32 }
          cleanup
  br label %322

225:                                              ; preds = %198
  %226 = landingpad { ptr, i32 }
          cleanup
  br label %322

227:                                              ; preds = %252, %235, %229, %220, %205
  %228 = landingpad { ptr, i32 }
          cleanup
  br label %322

229:                                              ; preds = %212, %220
  %230 = load ptr, ptr %19, align 8, !tbaa !214
  %231 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %230, ptr noundef %209) #14
          to label %232 unwind label %227

232:                                              ; preds = %229, %210
  %233 = phi ptr [ %21, %210 ], [ %231, %229 ]
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr %233, align 8, !tbaa !177
  %237 = getelementptr inbounds ptr, ptr %236, i64 5
  %238 = load ptr, ptr %237, align 8
  %239 = invoke noundef i32 %238(ptr noundef nonnull align 8 dereferenceable(8) %233) #14
          to label %240 unwind label %227

240:                                              ; preds = %235
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %242, label %320

242:                                              ; preds = %240, %232
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %244 = load i32, ptr %243, align 8, !tbaa !216
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %248 = load i8, ptr %247, align 8, !tbaa !204, !range !205, !noundef !206
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  store i8 1, ptr %247, align 8, !tbaa !204
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %251, i1 noundef zeroext true) #14
  br label %252

252:                                              ; preds = %250, %246, %242
  %253 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %254 = load ptr, ptr %253, align 8, !tbaa !235
  %255 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %254) #14
          to label %256 unwind label %227

256:                                              ; preds = %252
  %257 = load ptr, ptr %253, align 8, !tbaa !235
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %255, ptr noundef %257) #14
          to label %258 unwind label %299

258:                                              ; preds = %256
  %259 = load ptr, ptr %255, align 8, !tbaa !177
  %260 = getelementptr inbounds ptr, ptr %259, i64 22
  %261 = load ptr, ptr %260, align 8
  %262 = invoke noundef ptr %261(ptr noundef nonnull align 8 dereferenceable(8) %255) #14
          to label %263 unwind label %301

263:                                              ; preds = %258
  %264 = load ptr, ptr %262, align 8, !tbaa !177
  %265 = getelementptr inbounds ptr, ptr %264, i64 13
  %266 = load ptr, ptr %265, align 8
  invoke void %266(ptr noundef nonnull align 8 dereferenceable(16) %262, i32 noundef 3) #14
          to label %267 unwind label %301

267:                                              ; preds = %263
  %268 = load ptr, ptr %171, align 8, !tbaa !177
  %269 = getelementptr inbounds ptr, ptr %268, i64 5
  %270 = load ptr, ptr %269, align 8
  %271 = invoke noundef ptr %270(ptr noundef nonnull align 8 dereferenceable(41) %171) #14
          to label %272 unwind label %301

272:                                              ; preds = %267
  %273 = load ptr, ptr %262, align 8, !tbaa !177
  %274 = getelementptr inbounds ptr, ptr %273, i64 15
  %275 = load ptr, ptr %274, align 8
  invoke void %275(ptr noundef nonnull align 8 dereferenceable(16) %262, ptr noundef %271) #14
          to label %276 unwind label %301

276:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %15) #15
  %277 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %278 = load ptr, ptr %277, align 8, !tbaa !247
  %279 = load ptr, ptr %19, align 8, !tbaa !214
  %280 = load ptr, ptr %171, align 8, !tbaa !177
  %281 = getelementptr inbounds ptr, ptr %280, i64 5
  %282 = load ptr, ptr %281, align 8
  %283 = invoke noundef ptr %282(ptr noundef nonnull align 8 dereferenceable(41) %171) #14
          to label %284 unwind label %303

284:                                              ; preds = %276
  %285 = load ptr, ptr %34, align 8, !tbaa !240
  %286 = load ptr, ptr %37, align 8, !tbaa !238
  %287 = load ptr, ptr %16, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %15, ptr noundef nonnull %202, ptr noundef %278, ptr noundef nonnull %255, ptr noundef %279, ptr noundef nonnull %0, ptr noundef %283, ptr noundef %285, ptr noundef %286, ptr noundef %287) #14
          to label %288 unwind label %303

288:                                              ; preds = %284
  %289 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %290 = load i32, ptr %289, align 4, !tbaa !180
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %288
  %293 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %255, ptr %293, align 8, !tbaa !236
  store i32 1, ptr %289, align 4, !tbaa !180
  %294 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %295 = load ptr, ptr %294, align 8, !tbaa !221
  %296 = load ptr, ptr %295, align 8, !tbaa !177
  %297 = getelementptr inbounds ptr, ptr %296, i64 11
  %298 = load ptr, ptr %297, align 8
  invoke void %298(ptr noundef nonnull align 8 dereferenceable(40) %295, ptr noundef nonnull %255) #14
          to label %307 unwind label %305

299:                                              ; preds = %256
  %300 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %255, ptr noundef %254) #13
  br label %322

301:                                              ; preds = %272, %267, %263, %258
  %302 = landingpad { ptr, i32 }
          cleanup
  br label %322

303:                                              ; preds = %284, %276
  %304 = landingpad { ptr, i32 }
          cleanup
  br label %318

305:                                              ; preds = %311, %292
  %306 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %15) #13
  br label %318

307:                                              ; preds = %292, %288
  %308 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %309 = load i8, ptr %308, align 8, !tbaa !204, !range !205, !noundef !206
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %313 = load ptr, ptr %312, align 8, !tbaa !221
  %314 = load ptr, ptr %313, align 8, !tbaa !177
  %315 = getelementptr inbounds ptr, ptr %314, i64 4
  %316 = load ptr, ptr %315, align 8
  invoke void %316(ptr noundef nonnull align 8 dereferenceable(40) %313, i1 noundef zeroext false, i1 noundef zeroext false) #14
          to label %317 unwind label %305

317:                                              ; preds = %311, %307
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %15) #13
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %15) #15
  br label %320

318:                                              ; preds = %305, %303
  %319 = phi { ptr, i32 } [ %306, %305 ], [ %304, %303 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %15) #15
  br label %322

320:                                              ; preds = %203, %317, %240, %196
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #13
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #15
  br label %355

321:                                              ; preds = %87
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #13
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #15
  br label %362

322:                                              ; preds = %223, %227, %299, %318, %301, %225, %192
  %323 = phi { ptr, i32 } [ %193, %192 ], [ %224, %223 ], [ %226, %225 ], [ %300, %299 ], [ %228, %227 ], [ %319, %318 ], [ %302, %301 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  br label %324

324:                                              ; preds = %322, %168, %82, %66
  %325 = phi { ptr, i32 } [ %323, %322 ], [ %169, %168 ], [ %83, %82 ], [ %67, %66 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  br label %326

326:                                              ; preds = %324, %64
  %327 = phi { ptr, i32 } [ %325, %324 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %328

328:                                              ; preds = %326, %62
  %329 = phi { ptr, i32 } [ %327, %326 ], [ %63, %62 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br label %330

330:                                              ; preds = %328, %60
  %331 = phi { ptr, i32 } [ %329, %328 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %332

332:                                              ; preds = %330, %58
  %333 = phi { ptr, i32 } [ %331, %330 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #13
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #15
  br label %363

334:                                              ; preds = %24
  %335 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %336 = load i32, ptr %335, align 8, !tbaa !216
  %337 = icmp eq i32 %336, 2
  br i1 %337, label %338, label %344

338:                                              ; preds = %334
  %339 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %340 = load i8, ptr %339, align 8, !tbaa !204, !range !205, !noundef !206
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  store i8 1, ptr %339, align 8, !tbaa !204
  %343 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %343, i1 noundef zeroext true) #14
  br label %344

344:                                              ; preds = %342, %338, %334
  %345 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %346 = load i32, ptr %345, align 4, !tbaa !180
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %344
  %349 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %21, ptr %349, align 8, !tbaa !236
  store i32 1, ptr %345, align 4, !tbaa !180
  %350 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %351 = load ptr, ptr %350, align 8, !tbaa !221
  %352 = load ptr, ptr %351, align 8, !tbaa !177
  %353 = getelementptr inbounds ptr, ptr %352, i64 11
  %354 = load ptr, ptr %353, align 8
  call void %354(ptr noundef nonnull align 8 dereferenceable(40) %351, ptr noundef nonnull %21) #14
  br label %355

355:                                              ; preds = %320, %344, %348
  %356 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %357 = icmp eq ptr %356, null
  br i1 %357, label %362, label %358

358:                                              ; preds = %355
  %359 = load ptr, ptr %19, align 8, !tbaa !214
  %360 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %359) #14
  %361 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  store ptr %360, ptr %361, align 8, !tbaa !233
  br label %362

362:                                              ; preds = %355, %358, %321
  ret void

363:                                              ; preds = %332, %56
  %364 = phi { ptr, i32 } [ %333, %332 ], [ %57, %56 ]
  resume { ptr, i32 } %364
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca %"class.xercesc_2_7::QName", align 8
  %5 = alloca i32, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %10 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %7, %29
  %13 = phi i64 [ 0, %7 ], [ %30, %29 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !262
  %15 = trunc i64 %13 to i32
  %16 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %15) #14
  %17 = tail call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %16) #14
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %17, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %17, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %21, label %22, label %29

22:                                               ; preds = %20, %12
  %23 = tail call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %16) #14
  %24 = load ptr, ptr %9, align 8, !tbaa !292
  %25 = getelementptr inbounds i32, ptr %24, i64 %13
  %26 = load i32, ptr %25, align 4, !tbaa !200
  tail call void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %17, ptr noundef %23, i32 noundef %26) #14
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %23, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #14
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8 1, ptr %10, align 8, !tbaa !220
  br label %29

29:                                               ; preds = %22, %28, %20
  %30 = add nuw nsw i64 %13, 1
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %32, label %12, !llvm.loop !462

32:                                               ; preds = %29, %2
  %33 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  %34 = load i8, ptr %33, align 8, !tbaa !220, !range !205, !noundef !206
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %136, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %37) #14
  %38 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %40 = load ptr, ptr %39, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %40) #14
          to label %41 unwind label %65

41:                                               ; preds = %36
  br i1 %6, label %42, label %99

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %47

47:                                               ; preds = %42, %96
  %48 = phi i32 [ 0, %42 ], [ %97, %96 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !262
  %50 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %49, i32 noundef %48) #14
          to label %51 unwind label %67

51:                                               ; preds = %47
  %52 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %50) #14
  %53 = load i32, ptr %44, align 4, !tbaa !242
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %52, i32 noundef %53) #14
          to label %54 unwind label %69

54:                                               ; preds = %51
  %55 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #14
  %56 = invoke noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %55, i32 noundef 0) #14
          to label %57 unwind label %71

57:                                               ; preds = %54
  %58 = load i32, ptr %45, align 4, !tbaa !246
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %57
  %61 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %50) #14
  %62 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #14
  %63 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE) #14
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_712SGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %61) #14
          to label %78 unwind label %73

65:                                               ; preds = %36
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %134

67:                                               ; preds = %47
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %132

69:                                               ; preds = %51
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %132

71:                                               ; preds = %54
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %132

73:                                               ; preds = %86, %80, %77, %64
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %132

75:                                               ; preds = %60
  %76 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE) #14
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %61, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
          to label %78 unwind label %73

78:                                               ; preds = %75, %77, %64
  %79 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE) #14
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef %61) #14
          to label %96 unwind label %73

81:                                               ; preds = %78
  %82 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE) #14
  br i1 %82, label %83, label %96

83:                                               ; preds = %81
  %84 = load ptr, ptr %46, align 8, !tbaa !221
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %84, align 8, !tbaa !177
  %88 = getelementptr inbounds ptr, ptr %87, i64 13
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef zeroext i1 %89(ptr noundef nonnull align 8 dereferenceable(40) %84) #14
          to label %91 unwind label %73

91:                                               ; preds = %86
  br i1 %90, label %92, label %96

92:                                               ; preds = %91
  %93 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %61, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE) #14
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = load ptr, ptr %46, align 8, !tbaa !221
  call void @_ZN11xercesc_2_715SchemaValidator11setNillableEb(ptr noundef nonnull align 8 dereferenceable(186) %95, i1 noundef zeroext true) #14
  br label %96

96:                                               ; preds = %80, %94, %92, %91, %83, %81, %57
  %97 = add nuw nsw i32 %48, 1
  %98 = icmp eq i32 %97, %1
  br i1 %98, label %99, label %47, !llvm.loop !463

99:                                               ; preds = %96, %41
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %101 = load ptr, ptr %100, align 8, !tbaa !221
  %102 = icmp eq ptr %101, null
  br i1 %102, label %131, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %101, align 8, !tbaa !177
  %105 = getelementptr inbounds ptr, ptr %104, i64 13
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef zeroext i1 %106(ptr noundef nonnull align 8 dereferenceable(40) %101) #14
          to label %108 unwind label %127

108:                                              ; preds = %103
  br i1 %107, label %109, label %131

109:                                              ; preds = %108
  %110 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %38) #14
  br i1 %110, label %131, label %111

111:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 -1, ptr %5, align 4, !tbaa !200
  %112 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %38) #14
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %114 = load ptr, ptr %0, align 8, !tbaa !177
  %115 = getelementptr inbounds ptr, ptr %114, i64 7
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef i32 %116(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %112, ptr noundef nonnull align 8 dereferenceable(40) %113, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
          to label %118 unwind label %129

118:                                              ; preds = %111
  %119 = load ptr, ptr %100, align 8, !tbaa !221
  %120 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %113) #14
  %121 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %38) #14
  %122 = load i32, ptr %5, align 4, !tbaa !200
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, ptr %121, i64 %123
  %125 = getelementptr inbounds i16, ptr %124, i64 1
  invoke void @_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(186) %119, ptr noundef %120, ptr noundef nonnull %125, i32 noundef %117) #14
          to label %126 unwind label %129

126:                                              ; preds = %118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %131

127:                                              ; preds = %103
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %132

129:                                              ; preds = %118, %111
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %132

131:                                              ; preds = %109, %126, %108, %99
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %136

132:                                              ; preds = %67, %71, %73, %69, %129, %127
  %133 = phi { ptr, i32 } [ %130, %129 ], [ %128, %127 ], [ %68, %67 ], [ %70, %69 ], [ %74, %73 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #13
  br label %134

134:                                              ; preds = %132, %65
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %135

136:                                              ; preds = %131, %32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %4) local_unnamed_addr #1 align 2 !prof !176 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = icmp eq i32 %4, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 0, ptr %6, align 1, !tbaa !212
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %11 = sext i16 %3 to i32
  %12 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %35

13:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i32 noundef %4) #14
  %14 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = icmp eq i16 %3, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %21 = load i32, ptr %20, align 8, !tbaa !245
  br label %35

22:                                               ; preds = %13
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %26 = load i32, ptr %25, align 4, !tbaa !244
  br label %35

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 0, ptr %7, align 1, !tbaa !212
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %29 = sext i16 %3 to i32
  %30 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef %14, i32 noundef %29, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  %31 = load i8, ptr %7, align 1, !tbaa !212, !range !205, !noundef !206
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %34

34:                                               ; preds = %33, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %35

35:                                               ; preds = %19, %24, %34, %9
  %36 = phi i32 [ %12, %9 ], [ %21, %19 ], [ %26, %24 ], [ %30, %34 ]
  ret i32 %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %6 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %7 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = zext i32 %4 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !200
  %13 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !200
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %101, label %15

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %17 = load ptr, ptr %16, align 8, !tbaa !214
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !247
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %17, ptr noundef %19) #14
  %20 = icmp eq ptr %2, null
  br i1 %20, label %98, label %21

21:                                               ; preds = %15
  %22 = invoke noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr noundef nonnull align 8 dereferenceable(28) %2) #14
          to label %23 unwind label %52

23:                                               ; preds = %21
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %83, label %25

25:                                               ; preds = %23, %80
  %26 = phi i32 [ %81, %80 ], [ 0, %23 ]
  %27 = invoke noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %26) #14
          to label %28 unwind label %54

28:                                               ; preds = %25
  %29 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #14
  %30 = invoke noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %26) #14
          to label %31 unwind label %56

31:                                               ; preds = %28
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %31
  %34 = icmp eq i32 %29, %7
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #14
  %37 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %38 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %36, ptr noundef %37) #14
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %33
  %40 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %1, ptr noundef nonnull %27) #14
          to label %41 unwind label %56

41:                                               ; preds = %39
  br i1 %40, label %42, label %80

42:                                               ; preds = %41, %35
  %43 = load ptr, ptr %3, align 8, !tbaa !177
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %12, i32 noundef %26) #14
          to label %47 unwind label %56

47:                                               ; preds = %42
  %48 = icmp eq i32 %46, %13
  br i1 %48, label %80, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %8, align 8, !tbaa !272
  %51 = getelementptr inbounds i32, ptr %50, i64 %10
  store i32 %46, ptr %51, align 4, !tbaa !200
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
  %65 = load ptr, ptr %3, align 8, !tbaa !177
  %66 = getelementptr inbounds ptr, ptr %65, i64 6
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %12, i32 noundef %26) #14
          to label %69 unwind label %56

69:                                               ; preds = %64
  %70 = icmp eq i32 %68, %13
  br i1 %70, label %80, label %71

71:                                               ; preds = %69
  %72 = load ptr, ptr %8, align 8, !tbaa !272
  %73 = getelementptr inbounds i32, ptr %72, i64 %10
  store i32 %68, ptr %73, align 4, !tbaa !200
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
  br i1 %82, label %89, label %25, !llvm.loop !464

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
  %91 = load ptr, ptr %8, align 8, !tbaa !272
  %92 = getelementptr inbounds i32, ptr %91, i64 %10
  store i32 %13, ptr %92, align 4, !tbaa !200
  br label %98

93:                                               ; preds = %54, %56, %52
  %94 = phi { ptr, i32 } [ %53, %52 ], [ %57, %56 ], [ %55, %54 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %94

95:                                               ; preds = %87
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 0, ptr %96, align 8, !tbaa !204
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %97, i1 noundef zeroext false) #14
  br label %98

98:                                               ; preds = %95, %15, %83, %89
  %99 = phi i8 [ %90, %89 ], [ 0, %95 ], [ 0, %15 ], [ %85, %83 ]
  %100 = icmp ne i8 %99, 0
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %101

101:                                              ; preds = %5, %98
  %102 = phi i1 [ %100, %98 ], [ false, %5 ]
  ret i1 %102
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 !prof !465 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !466

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !467
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #14
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr %8, ptr %5
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %9, ptr %12, align 8, !tbaa !236
  %13 = load ptr, ptr %9, align 8, !tbaa !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  %17 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !180
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %22 = load ptr, ptr %21, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 4510, i32 noundef 44, ptr noundef %22) #14
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #15
  resume { ptr, i32 } %25

26:                                               ; preds = %11
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = load ptr, ptr %12, align 8, !tbaa !236
  %30 = load ptr, ptr %28, align 8, !tbaa !177
  %31 = getelementptr inbounds ptr, ptr %30, i64 11
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %29) #14
  br label %33

33:                                               ; preds = %2, %26
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !469 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !372
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !470 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !471
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 !prof !472 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !473

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !474, !range !205, !noundef !206
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !467
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #13
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !467
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !476
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !477
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !478
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !479
  %26 = load ptr, ptr %25, align 8, !tbaa !177
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32) #14
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !480
  %32 = load i32, ptr %6, align 4, !tbaa !200
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !230
  call void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %35) #14
  %36 = load ptr, ptr %30, align 8, !tbaa !480
  %37 = load i32, ptr %6, align 4, !tbaa !200
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr %29, ptr %39, align 8, !tbaa !230
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !481
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !482
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %50, label %47, !prof !483

47:                                               ; preds = %40
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !484
  br label %73

50:                                               ; preds = %40
  %51 = uitofp i32 %43 to double
  %52 = fmul double %51, 1.500000e+00
  %53 = fptoui double %52 to i32
  %54 = load ptr, ptr %0, align 8, !tbaa !479
  %55 = zext i32 %53 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = load ptr, ptr %54, align 8, !tbaa !177
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %56) #14
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !484
  %63 = load i32, ptr %44, align 8, !tbaa !482
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr align 8 %62, i64 %65, i1 false)
  %66 = load ptr, ptr %0, align 8, !tbaa !479
  %67 = load ptr, ptr %61, align 8, !tbaa !484
  %68 = load ptr, ptr %66, align 8, !tbaa !177
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %67) #14
  store ptr %60, ptr %61, align 8, !tbaa !484
  store i32 %53, ptr %44, align 8, !tbaa !482
  %71 = load i32, ptr %41, align 4, !tbaa !481
  %72 = add i32 %71, 1
  br label %73

73:                                               ; preds = %47, %50
  %74 = phi i32 [ %43, %47 ], [ %72, %50 ]
  %75 = phi ptr [ %49, %47 ], [ %60, %50 ]
  store i32 %74, ptr %41, align 4, !tbaa !481
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  store ptr %4, ptr %77, align 8, !tbaa !230
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %4, i32 noundef %74) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret i32 %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !485 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !472 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !372
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !329 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !311
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !230
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 13
  store i32 %1, ptr %11, align 8, !tbaa !365
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !486 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !487

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #14
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !177
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
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !452 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !311
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !364
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !230
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !488
  %14 = icmp ugt i32 %13, %3
  br i1 %14, label %38, label %15, !prof !489

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !367
  %18 = shl i32 %3, 1
  store i32 %18, ptr %12, align 8, !tbaa !488
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !490
  %21 = zext i32 %18 to i64
  %22 = shl nuw nsw i64 %21, 1
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %22) #14
  %27 = load ptr, ptr %7, align 8, !tbaa !364
  %28 = getelementptr inbounds ptr, ptr %27, i64 %9
  %29 = load ptr, ptr %28, align 8, !tbaa !230
  %30 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 14
  store ptr %26, ptr %30, align 8, !tbaa !367
  %31 = load ptr, ptr %19, align 8, !tbaa !490
  %32 = load ptr, ptr %31, align 8, !tbaa !177
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %17) #14
  %35 = load ptr, ptr %7, align 8, !tbaa !364
  %36 = getelementptr inbounds ptr, ptr %35, i64 %9
  %37 = load ptr, ptr %36, align 8, !tbaa !230
  br label %38

38:                                               ; preds = %15, %2
  %39 = phi ptr [ %37, %15 ], [ %11, %2 ]
  %40 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %39, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !367
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %41, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 !prof !491 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !492
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 !prof !493 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !494
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !495 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #14
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %0, ptr noundef %1, i32 noundef %3) #14
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack15setCurrentScopeEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !452 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !311
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !230
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 11
  store i32 %1, ptr %11, align 4, !tbaa !459
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #1 align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !271
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !177
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  %13 = load i32, ptr %2, align 8, !tbaa !271
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !272
  br label %32

18:                                               ; preds = %32
  %19 = trunc i64 %37 to i32
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %22 = icmp ult i32 %21, %4
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = zext i32 %21 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = getelementptr i8, ptr %12, i64 %25
  %27 = xor i32 %21, -1
  %28 = add i32 %4, %27
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = add nuw nsw i64 %30, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %26, i8 0, i64 %31, i1 false), !tbaa !200
  br label %41

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 0, %15 ], [ %37, %32 ]
  %34 = getelementptr inbounds i32, ptr %17, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !200
  %36 = getelementptr inbounds i32, ptr %12, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !200
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %2, align 8, !tbaa !271
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %18, !llvm.loop !496

41:                                               ; preds = %23, %20
  %42 = load ptr, ptr %5, align 8, !tbaa !207
  %43 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !272
  %45 = load ptr, ptr %42, align 8, !tbaa !177
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %44) #14
  store ptr %12, ptr %43, align 8, !tbaa !272
  store i32 %4, ptr %2, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !329 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !311
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !230
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 12
  store ptr %1, ptr %11, align 8, !tbaa !413
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712XMLValidator16checkRootElementEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !176 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !471
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !497 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %3 = load ptr, ptr %2, align 8, !tbaa !267
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717PSVIAttributeList5resetEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !498
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca [100 x i16], align 16
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %12 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %14 = load i8, ptr %13, align 8, !tbaa !204, !range !205, !noundef !206
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %18) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !221
  %23 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %22) #14
  br label %29

24:                                               ; preds = %16
  %25 = load i8, ptr %13, align 8, !range !205
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %19) #14
  br label %37

29:                                               ; preds = %5, %21, %24
  %30 = phi i1 [ false, %24 ], [ true, %21 ], [ true, %5 ]
  %31 = phi ptr [ null, %24 ], [ %23, %21 ], [ null, %5 ]
  %32 = phi ptr [ %19, %24 ], [ null, %21 ], [ null, %5 ]
  %33 = load ptr, ptr %3, align 8, !tbaa !177
  %34 = getelementptr inbounds ptr, ptr %33, i64 8
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(33) %3) #14
  br label %37

37:                                               ; preds = %29, %27
  %38 = phi i1 [ false, %27 ], [ %30, %29 ]
  %39 = phi ptr [ null, %27 ], [ %31, %29 ]
  %40 = phi ptr [ %19, %27 ], [ %32, %29 ]
  %41 = phi i1 [ %28, %27 ], [ %36, %29 ]
  %42 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 14
  %43 = load i32, ptr %42, align 8, !tbaa !254
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !254
  %45 = icmp ne i32 %2, 0
  %46 = or i1 %45, %41
  br i1 %46, label %47, label %802

47:                                               ; preds = %37
  %48 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %49) #14
  %50 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %589, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %56 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %59 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %61 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %62 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %63 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %65 = zext i32 %2 to i64
  br label %66

66:                                               ; preds = %52, %584
  %67 = phi i64 [ 0, %52 ], [ %585, %584 ]
  %68 = trunc i64 %67 to i32
  %69 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %68) #14
          to label %70 unwind label %83

70:                                               ; preds = %66
  %71 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %69) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #15
  %72 = load ptr, ptr %53, align 8, !tbaa !292
  %73 = getelementptr inbounds i32, ptr %72, i64 %67
  %74 = load i32, ptr %73, align 4, !tbaa !200
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %101, label %76

76:                                               ; preds = %70
  %77 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %71) #14
  %78 = icmp ult i32 %77, 100
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %8, ptr noundef %71) #14
          to label %80 unwind label %85

80:                                               ; preds = %79
  %81 = sext i32 %74 to i64
  %82 = getelementptr inbounds [100 x i16], ptr %8, i64 0, i64 %81
  store i16 0, ptr %82, align 2, !tbaa !223
  br label %96

83:                                               ; preds = %66
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %800

85:                                               ; preds = %90, %87, %79
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %587

87:                                               ; preds = %76
  %88 = load ptr, ptr %54, align 8, !tbaa !207
  %89 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %71, ptr noundef %88) #14
          to label %90 unwind label %85

90:                                               ; preds = %87
  %91 = load ptr, ptr %54, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %89, ptr noundef %91) #14
          to label %92 unwind label %85

92:                                               ; preds = %90
  %93 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xercesc_2_712ArrayJanitorItEixEi(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %74) #14
  store i16 0, ptr %93, align 2, !tbaa !223
  %94 = call noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  %95 = sext i32 %74 to i64
  br label %96

96:                                               ; preds = %92, %80
  %97 = phi i64 [ %95, %92 ], [ %81, %80 ]
  %98 = phi ptr [ %94, %92 ], [ %8, %80 ]
  %99 = getelementptr inbounds i16, ptr %71, i64 %97
  %100 = getelementptr inbounds i16, ptr %99, i64 1
  br label %101

101:                                              ; preds = %70, %96
  %102 = phi ptr [ %100, %96 ], [ %71, %70 ]
  %103 = phi ptr [ %98, %96 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %70 ]
  %104 = invoke noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %103, i32 noundef 0) #14
          to label %105 unwind label %120

105:                                              ; preds = %101
  %106 = load i32, ptr %55, align 8, !tbaa !245
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %519, label %108

108:                                              ; preds = %105
  %109 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %102, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %109, label %519, label %110

110:                                              ; preds = %108
  %111 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %104) #14
          to label %112 unwind label %122

112:                                              ; preds = %110
  %113 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %111, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #14
  br i1 %113, label %519, label %114

114:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  store i8 0, ptr %9, align 1, !tbaa !212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  store i8 0, ptr %10, align 1, !tbaa !212
  %115 = load i32, ptr %56, align 4, !tbaa !180
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %260

117:                                              ; preds = %114
  br i1 %38, label %126, label %118

118:                                              ; preds = %117
  %119 = invoke noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %40, ptr noundef %102, i32 noundef %104) #14
          to label %128 unwind label %124

120:                                              ; preds = %101
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %587

122:                                              ; preds = %110
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %587

124:                                              ; preds = %220, %214, %204, %203, %197, %187, %182, %174, %139, %118
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %517

126:                                              ; preds = %117
  %127 = icmp eq ptr %39, null
  br i1 %127, label %136, label %260

128:                                              ; preds = %118
  %129 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %40) #14
  %130 = icmp eq ptr %119, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %119) #14
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %230

134:                                              ; preds = %131, %128
  %135 = icmp eq ptr %129, null
  br i1 %135, label %171, label %139

136:                                              ; preds = %126
  %137 = call noundef ptr @_ZN11xercesc_2_717SchemaElementDecl14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(147) %3) #14
  %138 = icmp eq ptr %137, null
  br i1 %138, label %260, label %139

139:                                              ; preds = %136, %134
  %140 = phi ptr [ %137, %136 ], [ %129, %134 ]
  %141 = phi ptr [ null, %136 ], [ %119, %134 ]
  %142 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %140, i32 noundef %104, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %9) #14
          to label %143 unwind label %124

143:                                              ; preds = %139
  %144 = load i8, ptr %10, align 1, !range !205
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %142, i1 %145, i1 false
  br i1 %146, label %147, label %221

147:                                              ; preds = %143
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %149 = load ptr, ptr %148, align 8, !tbaa !214
  %150 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %104) #14
          to label %151 unwind label %167

151:                                              ; preds = %147
  %152 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %149, ptr noundef %150) #14
          to label %153 unwind label %167

153:                                              ; preds = %151
  %154 = icmp eq ptr %152, null
  br i1 %154, label %221, label %155

155:                                              ; preds = %153
  %156 = load ptr, ptr %152, align 8, !tbaa !177
  %157 = getelementptr inbounds ptr, ptr %156, i64 5
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef i32 %158(ptr noundef nonnull align 8 dereferenceable(160) %152) #14
          to label %160 unwind label %167

160:                                              ; preds = %155
  %161 = icmp eq i32 %159, 1
  br i1 %161, label %162, label %221

162:                                              ; preds = %160
  %163 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %152) #14
  %164 = icmp eq ptr %163, null
  br i1 %164, label %221, label %165

165:                                              ; preds = %162
  %166 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %163, ptr noundef %102) #14
          to label %221 unwind label %169

167:                                              ; preds = %155, %151, %147
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %517

169:                                              ; preds = %165
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %517

171:                                              ; preds = %134
  %172 = load i32, ptr %57, align 4, !tbaa !242
  %173 = icmp eq i32 %104, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %171
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %176 = load ptr, ptr %60, align 8, !tbaa !247
  %177 = load ptr, ptr %175, align 8, !tbaa !236
  %178 = load ptr, ptr %177, align 8, !tbaa !177
  %179 = getelementptr inbounds ptr, ptr %178, i64 6
  %180 = load ptr, ptr %179, align 8
  %181 = invoke noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(8) %177) #14
          to label %182 unwind label %124

182:                                              ; preds = %174
  %183 = load ptr, ptr %176, align 8, !tbaa !177
  %184 = getelementptr inbounds ptr, ptr %183, i64 9
  %185 = load ptr, ptr %184, align 8
  %186 = invoke noundef i32 %185(ptr noundef nonnull align 8 dereferenceable(40) %176, ptr noundef %181) #14
          to label %187 unwind label %124

187:                                              ; preds = %182
  %188 = invoke noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %40, ptr noundef %102, i32 noundef %186) #14
          to label %189 unwind label %124

189:                                              ; preds = %187
  %190 = load i8, ptr %13, align 8, !tbaa !204, !range !205, !noundef !206
  %191 = icmp ne i8 %190, 0
  %192 = icmp ne ptr %188, null
  %193 = and i1 %192, %191
  br i1 %193, label %194, label %221

194:                                              ; preds = %189
  %195 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %188) #14
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %230, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %58, align 8, !tbaa !221
  %199 = load ptr, ptr %188, align 8, !tbaa !177
  %200 = getelementptr inbounds ptr, ptr %199, i64 5
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(56) %188) #14
          to label %203 unwind label %124

203:                                              ; preds = %197
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %198, i32 noundef 95, ptr noundef %202, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %225 unwind label %124

204:                                              ; preds = %171
  %205 = invoke noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %40, ptr noundef %102, i32 noundef %172) #14
          to label %206 unwind label %124

206:                                              ; preds = %204
  %207 = load i8, ptr %13, align 8, !tbaa !204, !range !205, !noundef !206
  %208 = icmp ne i8 %207, 0
  %209 = icmp ne ptr %205, null
  %210 = and i1 %209, %208
  br i1 %210, label %211, label %221

211:                                              ; preds = %206
  %212 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %205) #14
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %230, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %58, align 8, !tbaa !221
  %216 = load ptr, ptr %205, align 8, !tbaa !177
  %217 = getelementptr inbounds ptr, ptr %216, i64 5
  %218 = load ptr, ptr %217, align 8
  %219 = invoke noundef ptr %218(ptr noundef nonnull align 8 dereferenceable(56) %205) #14
          to label %220 unwind label %124

220:                                              ; preds = %214
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %215, i32 noundef 96, ptr noundef %219, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %225 unwind label %124

221:                                              ; preds = %206, %189, %143, %162, %165, %160, %153
  %222 = phi ptr [ %141, %143 ], [ %188, %189 ], [ %205, %206 ], [ %141, %162 ], [ %141, %165 ], [ %141, %160 ], [ %141, %153 ]
  %223 = phi ptr [ null, %143 ], [ null, %189 ], [ null, %206 ], [ null, %162 ], [ %166, %165 ], [ null, %160 ], [ null, %153 ]
  %224 = icmp eq ptr %222, null
  br i1 %224, label %260, label %230

225:                                              ; preds = %220, %203
  %226 = phi ptr [ %188, %203 ], [ %205, %220 ]
  store i8 1, ptr %59, align 1, !tbaa !266
  %227 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %228 = icmp eq ptr %227, null
  %229 = select i1 %228, i32 2, i32 1
  br label %230

230:                                              ; preds = %225, %131, %211, %194, %221
  %231 = phi i32 [ 2, %221 ], [ 2, %131 ], [ 2, %211 ], [ 2, %194 ], [ %229, %225 ]
  %232 = phi ptr [ %223, %221 ], [ null, %131 ], [ null, %211 ], [ null, %194 ], [ null, %225 ]
  %233 = phi ptr [ %222, %221 ], [ %119, %131 ], [ %205, %211 ], [ %188, %194 ], [ %226, %225 ]
  %234 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %235 = load ptr, ptr %234, align 8, !tbaa !256
  %236 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %235, ptr noundef nonnull %233) #14
          to label %237 unwind label %244

237:                                              ; preds = %230
  %238 = icmp eq ptr %236, null
  br i1 %238, label %239, label %246

239:                                              ; preds = %237
  %240 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %241 unwind label %244

241:                                              ; preds = %239
  %242 = load i32, ptr %42, align 8, !tbaa !254
  store i32 %242, ptr %240, align 4, !tbaa !200
  %243 = load ptr, ptr %234, align 8, !tbaa !256
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %243, ptr noundef nonnull %233, ptr noundef nonnull %240) #14
          to label %273 unwind label %244

244:                                              ; preds = %258, %256, %251, %241, %239, %230
  %245 = landingpad { ptr, i32 }
          cleanup
  br label %517

246:                                              ; preds = %237
  %247 = load i32, ptr %236, align 4, !tbaa !200
  %248 = load i32, ptr %42, align 8, !tbaa !254
  %249 = icmp ult i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i32 %248, ptr %236, align 4, !tbaa !200
  br label %273

251:                                              ; preds = %246
  %252 = load ptr, ptr %233, align 8, !tbaa !177
  %253 = getelementptr inbounds ptr, ptr %252, i64 5
  %254 = load ptr, ptr %253, align 8
  %255 = invoke noundef ptr %254(ptr noundef nonnull align 8 dereferenceable(56) %233) #14
          to label %256 unwind label %244

256:                                              ; preds = %251
  %257 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #14
          to label %258 unwind label %244

258:                                              ; preds = %256
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %255, ptr noundef %257, ptr noundef null, ptr noundef null) #14
          to label %259 unwind label %244

259:                                              ; preds = %258
  store i8 1, ptr %59, align 1, !tbaa !266
  br label %273

260:                                              ; preds = %126, %136, %114, %221
  %261 = phi ptr [ %223, %221 ], [ null, %114 ], [ null, %136 ], [ null, %126 ]
  %262 = load ptr, ptr %61, align 8, !tbaa !257
  %263 = invoke noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %262, ptr noundef %102, i32 noundef %104) #14
          to label %264 unwind label %267

264:                                              ; preds = %260
  br i1 %263, label %269, label %265

265:                                              ; preds = %264
  %266 = load ptr, ptr %61, align 8, !tbaa !257
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %266, ptr noundef %102, i32 noundef %104, ptr noundef null) #14
          to label %277 unwind label %267

267:                                              ; preds = %271, %269, %265, %260
  %268 = landingpad { ptr, i32 }
          cleanup
  br label %517

269:                                              ; preds = %264
  %270 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #14
          to label %271 unwind label %267

271:                                              ; preds = %269
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %71, ptr noundef %270, ptr noundef null, ptr noundef null) #14
          to label %272 unwind label %267

272:                                              ; preds = %271
  store i8 1, ptr %59, align 1, !tbaa !266
  br label %277

273:                                              ; preds = %241, %259, %250
  %274 = icmp ne ptr %232, null
  %275 = load i8, ptr %10, align 1, !range !205
  %276 = load i8, ptr %9, align 1, !range !205
  br label %296

277:                                              ; preds = %272, %265
  %278 = icmp ne ptr %261, null
  %279 = load i8, ptr %10, align 1, !range !205
  %280 = load i8, ptr %9, align 1, !range !205
  br i1 %278, label %296, label %281

281:                                              ; preds = %277
  %282 = icmp eq i8 %280, 0
  %283 = icmp eq i8 %279, 0
  %284 = select i1 %282, i1 %283, i1 false
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  store i8 1, ptr %59, align 1, !tbaa !266
  %286 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %287 = icmp eq ptr %286, null
  %288 = select i1 %287, i32 2, i32 1
  br label %296

289:                                              ; preds = %281
  %290 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %291 = icmp eq ptr %290, null
  %292 = xor i1 %282, true
  %293 = zext i1 %292 to i32
  %294 = select i1 %291, i32 2, i32 %293
  %295 = select i1 %291, i32 2, i32 0
  br label %296

296:                                              ; preds = %273, %289, %285, %277
  %297 = phi i8 [ %280, %277 ], [ 0, %285 ], [ %280, %289 ], [ %276, %273 ]
  %298 = phi i8 [ %279, %277 ], [ 0, %285 ], [ %279, %289 ], [ %275, %273 ]
  %299 = phi i1 [ %278, %277 ], [ %278, %285 ], [ %278, %289 ], [ %274, %273 ]
  %300 = phi ptr [ null, %277 ], [ null, %285 ], [ null, %289 ], [ %233, %273 ]
  %301 = phi ptr [ %261, %277 ], [ null, %285 ], [ null, %289 ], [ %232, %273 ]
  %302 = phi i1 [ false, %277 ], [ false, %285 ], [ false, %289 ], [ true, %273 ]
  %303 = phi i32 [ 2, %277 ], [ 2, %285 ], [ %294, %289 ], [ 2, %273 ]
  %304 = phi i32 [ 2, %277 ], [ %288, %285 ], [ %295, %289 ], [ %231, %273 ]
  %305 = load i8, ptr %13, align 8, !tbaa !204, !range !205, !noundef !206
  %306 = icmp eq i8 %305, 0
  %307 = or i1 %299, %306
  %308 = or i1 %302, %307
  %309 = xor i1 %308, true
  %310 = icmp eq i8 %298, 0
  %311 = select i1 %309, i1 %310, i1 false
  %312 = icmp eq i8 %297, 0
  %313 = select i1 %311, i1 %312, i1 false
  br i1 %313, label %314, label %349

314:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %49) #14
          to label %315 unwind label %328

315:                                              ; preds = %314
  %316 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #14
  %317 = load i32, ptr %57, align 4, !tbaa !242
  %318 = icmp eq i32 %104, %317
  br i1 %318, label %338, label %319

319:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %49) #14
          to label %320 unwind label %332

320:                                              ; preds = %319
  %321 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #14
  %322 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %104, ptr noundef nonnull align 8 dereferenceable(40) %321) #14
          to label %323 unwind label %334

323:                                              ; preds = %320
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %316, i16 noundef zeroext 123) #14
          to label %324 unwind label %334

324:                                              ; preds = %323
  %325 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %321) #14
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %316, ptr noundef %325) #14
          to label %326 unwind label %334

326:                                              ; preds = %324
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %316, i16 noundef zeroext 125) #14
          to label %327 unwind label %334

327:                                              ; preds = %326
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  br label %338

328:                                              ; preds = %314
  %329 = landingpad { ptr, i32 }
          cleanup
  br label %347

330:                                              ; preds = %343, %339, %338
  %331 = landingpad { ptr, i32 }
          cleanup
  br label %345

332:                                              ; preds = %319
  %333 = landingpad { ptr, i32 }
          cleanup
  br label %336

334:                                              ; preds = %326, %324, %323, %320
  %335 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #13
  br label %336

336:                                              ; preds = %334, %332
  %337 = phi { ptr, i32 } [ %335, %334 ], [ %333, %332 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  br label %345

338:                                              ; preds = %327, %315
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %316, ptr noundef %102) #14
          to label %339 unwind label %330

339:                                              ; preds = %338
  %340 = load ptr, ptr %58, align 8, !tbaa !221
  %341 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %316) #14
  %342 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #14
          to label %343 unwind label %330

343:                                              ; preds = %339
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %340, i32 noundef 17, ptr noundef %341, ptr noundef %342, ptr noundef null, ptr noundef null) #14
          to label %344 unwind label %330

344:                                              ; preds = %343
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %396

345:                                              ; preds = %336, %330
  %346 = phi { ptr, i32 } [ %331, %330 ], [ %337, %336 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  br label %347

347:                                              ; preds = %345, %328
  %348 = phi { ptr, i32 } [ %346, %345 ], [ %329, %328 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %517

349:                                              ; preds = %296
  br i1 %299, label %350, label %396

350:                                              ; preds = %349
  %351 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %69) #14
  %352 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %301, ptr noundef %71, ptr noundef %351, ptr noundef nonnull align 8 dereferenceable(40) %50) #14
          to label %353 unwind label %372

353:                                              ; preds = %350
  %354 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %50) #14
  %355 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %301) #14
  %356 = icmp eq ptr %355, null
  br i1 %356, label %376, label %357

357:                                              ; preds = %353
  %358 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %355) #14
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %376, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %362 = load ptr, ptr %58, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %362, ptr noundef nonnull %355, ptr noundef %354, ptr noundef nonnull align 8 dereferenceable(40) %361) #14
          to label %363 unwind label %374

363:                                              ; preds = %360
  %364 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %365 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %361) #14
  %366 = load i8, ptr %364, align 8, !tbaa !222, !range !205, !noundef !206
  %367 = icmp eq i8 %366, 0
  %368 = load i8, ptr %13, align 8, !range !205
  %369 = icmp eq i8 %368, 0
  %370 = select i1 %367, i1 true, i1 %369
  br i1 %370, label %379, label %371

371:                                              ; preds = %363
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %50, ptr noundef %365) #14
          to label %376 unwind label %374

372:                                              ; preds = %476, %469, %449, %396, %350
  %373 = landingpad { ptr, i32 }
          cleanup
  br label %517

374:                                              ; preds = %393, %383, %371, %360
  %375 = landingpad { ptr, i32 }
          cleanup
  br label %517

376:                                              ; preds = %353, %357, %371
  %377 = phi ptr [ %354, %353 ], [ %354, %357 ], [ %365, %371 ]
  %378 = load i8, ptr %13, align 8, !tbaa !204
  br label %379

379:                                              ; preds = %376, %363
  %380 = phi i8 [ %378, %376 ], [ %368, %363 ]
  %381 = phi ptr [ %377, %376 ], [ %365, %363 ]
  %382 = icmp eq i8 %380, 0
  br i1 %382, label %393, label %383

383:                                              ; preds = %379
  %384 = load ptr, ptr %58, align 8, !tbaa !221
  %385 = load ptr, ptr %384, align 8, !tbaa !177
  %386 = getelementptr inbounds ptr, ptr %385, i64 8
  %387 = load ptr, ptr %386, align 8
  invoke void %387(ptr noundef nonnull align 8 dereferenceable(40) %384, ptr noundef nonnull %301, ptr noundef %381, i1 noundef zeroext false, ptr noundef %3) #14
          to label %388 unwind label %374

388:                                              ; preds = %383
  %389 = load ptr, ptr %58, align 8, !tbaa !221
  %390 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %389) #14
  %391 = load ptr, ptr %58, align 8, !tbaa !221
  %392 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %391) #14
  br i1 %392, label %452, label %458

393:                                              ; preds = %379
  %394 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #14
  %395 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %394, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #14
          to label %458 unwind label %374

396:                                              ; preds = %344, %349
  %397 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %69) #14
  %398 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %300, ptr noundef %71, ptr noundef %397, ptr noundef nonnull align 8 dereferenceable(40) %50) #14
          to label %399 unwind label %372

399:                                              ; preds = %396
  br i1 %302, label %400, label %449

400:                                              ; preds = %399
  %401 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %50) #14
  %402 = load i32, ptr %56, align 4, !tbaa !180
  %403 = icmp eq i32 %402, 1
  br i1 %403, label %404, label %427

404:                                              ; preds = %400
  %405 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %300) #14
  %406 = icmp eq ptr %405, null
  br i1 %406, label %427, label %407

407:                                              ; preds = %404
  %408 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %405) #14
  %409 = icmp eq i16 %408, 0
  br i1 %409, label %427, label %410

410:                                              ; preds = %407
  %411 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %412 = load ptr, ptr %58, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %412, ptr noundef nonnull %405, ptr noundef %401, ptr noundef nonnull align 8 dereferenceable(40) %411) #14
          to label %413 unwind label %425

413:                                              ; preds = %410
  %414 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %415 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %411) #14
  %416 = load i8, ptr %414, align 8, !tbaa !222, !range !205, !noundef !206
  %417 = icmp ne i8 %416, 0
  %418 = load i8, ptr %13, align 8, !range !205
  %419 = icmp ne i8 %418, 0
  %420 = select i1 %417, i1 %419, i1 false
  %421 = load i8, ptr %10, align 1, !range !205
  %422 = icmp eq i8 %421, 0
  %423 = select i1 %420, i1 %422, i1 false
  br i1 %423, label %424, label %427

424:                                              ; preds = %413
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %50, ptr noundef %415) #14
          to label %427 unwind label %425

425:                                              ; preds = %424, %410
  %426 = landingpad { ptr, i32 }
          cleanup
  br label %517

427:                                              ; preds = %404, %407, %424, %413, %400
  %428 = phi ptr [ %401, %400 ], [ %415, %424 ], [ %415, %413 ], [ %401, %407 ], [ %401, %404 ]
  %429 = load i8, ptr %13, align 8, !tbaa !204, !range !205, !noundef !206
  %430 = icmp ne i8 %429, 0
  %431 = load i8, ptr %10, align 1, !range !205
  %432 = icmp eq i8 %431, 0
  %433 = select i1 %430, i1 %432, i1 false
  br i1 %433, label %434, label %446

434:                                              ; preds = %427
  %435 = load ptr, ptr %58, align 8, !tbaa !221
  %436 = load ptr, ptr %435, align 8, !tbaa !177
  %437 = getelementptr inbounds ptr, ptr %436, i64 8
  %438 = load ptr, ptr %437, align 8
  invoke void %438(ptr noundef nonnull align 8 dereferenceable(40) %435, ptr noundef nonnull %300, ptr noundef %428, i1 noundef zeroext false, ptr noundef %3) #14
          to label %439 unwind label %444

439:                                              ; preds = %434
  %440 = load ptr, ptr %58, align 8, !tbaa !221
  %441 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %440) #14
  %442 = load ptr, ptr %58, align 8, !tbaa !221
  %443 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %442) #14
  br i1 %443, label %452, label %458

444:                                              ; preds = %446, %434
  %445 = landingpad { ptr, i32 }
          cleanup
  br label %517

446:                                              ; preds = %427
  %447 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #14
  %448 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %447, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #14
          to label %458 unwind label %444

449:                                              ; preds = %399
  %450 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #14
  %451 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %450, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #14
          to label %463 unwind label %372

452:                                              ; preds = %439, %388
  %453 = phi ptr [ %301, %388 ], [ %300, %439 ]
  %454 = phi ptr [ %390, %388 ], [ %441, %439 ]
  store i8 1, ptr %59, align 1, !tbaa !266
  %455 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %456 = icmp eq ptr %455, null
  %457 = select i1 %456, i32 %304, i32 1
  br label %458

458:                                              ; preds = %452, %446, %439, %388, %393
  %459 = phi ptr [ %301, %393 ], [ %301, %388 ], [ %300, %439 ], [ %300, %446 ], [ %453, %452 ]
  %460 = phi ptr [ %395, %393 ], [ %390, %388 ], [ %441, %439 ], [ %448, %446 ], [ %454, %452 ]
  %461 = phi i32 [ %304, %393 ], [ %304, %388 ], [ %304, %439 ], [ %304, %446 ], [ %457, %452 ]
  %462 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %459) #14
  br label %463

463:                                              ; preds = %458, %449
  %464 = phi ptr [ %451, %449 ], [ %460, %458 ]
  %465 = phi i32 [ 0, %449 ], [ %462, %458 ]
  %466 = phi i32 [ %304, %449 ], [ %461, %458 ]
  %467 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %468 = icmp eq ptr %467, null
  br i1 %468, label %515, label %469

469:                                              ; preds = %463
  %470 = load ptr, ptr %62, align 8, !tbaa !273
  %471 = load ptr, ptr %60, align 8, !tbaa !247
  %472 = load ptr, ptr %471, align 8, !tbaa !177
  %473 = getelementptr inbounds ptr, ptr %472, i64 10
  %474 = load ptr, ptr %473, align 8
  %475 = invoke noundef ptr %474(ptr noundef nonnull align 8 dereferenceable(40) %471, i32 noundef %104) #14
          to label %476 unwind label %372

476:                                              ; preds = %469
  %477 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %470, ptr noundef %102, ptr noundef %475) #14
          to label %478 unwind label %372

478:                                              ; preds = %476
  %479 = select i1 %302, ptr %300, ptr %301
  %480 = icmp eq ptr %479, null
  br i1 %480, label %511, label %481

481:                                              ; preds = %478
  %482 = load ptr, ptr %63, align 8, !tbaa !233
  %483 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %482, ptr noundef nonnull %479) #14
          to label %484 unwind label %493

484:                                              ; preds = %481
  %485 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %479) #14
  %486 = load ptr, ptr %63, align 8, !tbaa !233
  %487 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %486, ptr noundef %485) #14
          to label %488 unwind label %495

488:                                              ; preds = %484
  %489 = icmp eq i32 %466, 2
  br i1 %489, label %497, label %490

490:                                              ; preds = %488
  %491 = load ptr, ptr %64, align 8, !tbaa !241
  %492 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %479) #14
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %477, ptr noundef %491, i32 noundef %466, i32 noundef %303, ptr noundef %487, ptr noundef null, ptr noundef %492, i1 noundef zeroext false, ptr noundef %483, ptr noundef null) #14
          to label %515 unwind label %495

493:                                              ; preds = %481
  %494 = landingpad { ptr, i32 }
          cleanup
  br label %517

495:                                              ; preds = %490, %484
  %496 = landingpad { ptr, i32 }
          cleanup
  br label %517

497:                                              ; preds = %488
  %498 = call noundef i32 @_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv(ptr noundef nonnull align 8 dereferenceable(128) %487) #14
  %499 = icmp eq i32 %498, 3
  br i1 %499, label %500, label %505

500:                                              ; preds = %497
  %501 = load ptr, ptr %63, align 8, !tbaa !233
  %502 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %501, ptr noundef %464) #14
          to label %505 unwind label %503

503:                                              ; preds = %505, %500
  %504 = landingpad { ptr, i32 }
          cleanup
  br label %517

505:                                              ; preds = %500, %497
  %506 = phi ptr [ null, %497 ], [ %502, %500 ]
  %507 = load ptr, ptr %64, align 8, !tbaa !241
  %508 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %479) #14
  %509 = icmp eq ptr %506, null
  %510 = select i1 %509, ptr %485, ptr %464
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %477, ptr noundef %507, i32 noundef 2, i32 noundef %303, ptr noundef nonnull %487, ptr noundef %506, ptr noundef %508, i1 noundef zeroext false, ptr noundef %483, ptr noundef %510) #14
          to label %515 unwind label %503

511:                                              ; preds = %478
  %512 = load ptr, ptr %64, align 8, !tbaa !241
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %477, ptr noundef %512, i32 noundef %466, i32 noundef %303, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #14
          to label %515 unwind label %513

513:                                              ; preds = %511
  %514 = landingpad { ptr, i32 }
          cleanup
  br label %517

515:                                              ; preds = %511, %505, %490, %463
  %516 = phi ptr [ null, %463 ], [ %477, %490 ], [ %477, %505 ], [ %477, %511 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  br label %559

517:                                              ; preds = %347, %372, %374, %444, %425, %493, %503, %495, %513, %124, %169, %167, %267, %244
  %518 = phi { ptr, i32 } [ %245, %244 ], [ %268, %267 ], [ %125, %124 ], [ %170, %169 ], [ %168, %167 ], [ %373, %372 ], [ %375, %374 ], [ %348, %347 ], [ %445, %444 ], [ %426, %425 ], [ %514, %513 ], [ %494, %493 ], [ %496, %495 ], [ %504, %503 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  br label %587

519:                                              ; preds = %108, %105, %112
  %520 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %69) #14
  %521 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %71, ptr noundef %520, ptr noundef nonnull align 8 dereferenceable(40) %50) #14
          to label %522 unwind label %532

522:                                              ; preds = %519
  %523 = load i32, ptr %55, align 8, !tbaa !245
  %524 = icmp eq i32 %104, %523
  br i1 %524, label %529, label %525

525:                                              ; preds = %522
  %526 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %104) #14
          to label %527 unwind label %532

527:                                              ; preds = %525
  %528 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %526, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #14
  br i1 %528, label %529, label %534

529:                                              ; preds = %527, %522
  %530 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #14
  %531 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %530, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE) #14
          to label %534 unwind label %532

532:                                              ; preds = %545, %538, %529, %525, %519
  %533 = landingpad { ptr, i32 }
          cleanup
  br label %587

534:                                              ; preds = %529, %527
  %535 = phi ptr [ null, %527 ], [ %531, %529 ]
  %536 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %537 = icmp eq ptr %536, null
  br i1 %537, label %559, label %538

538:                                              ; preds = %534
  %539 = load ptr, ptr %62, align 8, !tbaa !273
  %540 = load ptr, ptr %60, align 8, !tbaa !247
  %541 = load ptr, ptr %540, align 8, !tbaa !177
  %542 = getelementptr inbounds ptr, ptr %541, i64 10
  %543 = load ptr, ptr %542, align 8
  %544 = invoke noundef ptr %543(ptr noundef nonnull align 8 dereferenceable(40) %540, i32 noundef %104) #14
          to label %545 unwind label %532

545:                                              ; preds = %538
  %546 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %539, ptr noundef %102, ptr noundef %544) #14
          to label %547 unwind label %532

547:                                              ; preds = %545
  %548 = icmp eq ptr %535, null
  br i1 %548, label %556, label %549

549:                                              ; preds = %547
  %550 = load ptr, ptr %63, align 8, !tbaa !233
  %551 = icmp eq ptr %550, null
  br i1 %551, label %556, label %552

552:                                              ; preds = %549
  %553 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %550, ptr noundef nonnull %535) #14
          to label %556 unwind label %554

554:                                              ; preds = %556, %552
  %555 = landingpad { ptr, i32 }
          cleanup
  br label %587

556:                                              ; preds = %552, %549, %547
  %557 = phi ptr [ null, %549 ], [ null, %547 ], [ %553, %552 ]
  %558 = load ptr, ptr %64, align 8, !tbaa !241
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %546, ptr noundef %558, i32 noundef 0, i32 noundef 0, ptr noundef %557, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef %535) #14
          to label %559 unwind label %554

559:                                              ; preds = %556, %534, %515
  %560 = phi ptr [ null, %534 ], [ %516, %515 ], [ %546, %556 ]
  %561 = phi i32 [ 0, %534 ], [ %465, %515 ], [ 0, %556 ]
  %562 = icmp ugt i32 %48, %68
  br i1 %562, label %574, label %563

563:                                              ; preds = %559
  %564 = load ptr, ptr %54, align 8, !tbaa !207
  %565 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %564) #14
          to label %566 unwind label %570

566:                                              ; preds = %563
  %567 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %50) #14
  %568 = load ptr, ptr %54, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %565, i32 noundef %104, ptr noundef %102, ptr noundef %103, ptr noundef %567, i32 noundef %561, i1 noundef zeroext true, ptr noundef %568, ptr noundef null, i1 noundef zeroext false) #14
          to label %569 unwind label %572

569:                                              ; preds = %566
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %565) #14
          to label %579 unwind label %570

570:                                              ; preds = %582, %576, %574, %569, %563
  %571 = landingpad { ptr, i32 }
          cleanup
  br label %587

572:                                              ; preds = %566
  %573 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %565, ptr noundef %564) #13
  br label %587

574:                                              ; preds = %559
  %575 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %68) #14
          to label %576 unwind label %570

576:                                              ; preds = %574
  %577 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %50) #14
  invoke void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %575, i32 noundef %104, ptr noundef %102, ptr noundef %103, ptr noundef %577, i32 noundef %561, ptr noundef null, i1 noundef zeroext false) #14
          to label %578 unwind label %570

578:                                              ; preds = %576
  call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %575, i1 noundef zeroext true) #14
  br label %579

579:                                              ; preds = %569, %578
  %580 = phi ptr [ %565, %569 ], [ %575, %578 ]
  %581 = icmp eq ptr %560, null
  br i1 %581, label %584, label %582

582:                                              ; preds = %579
  %583 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %580) #14
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %560, ptr noundef %583) #14
          to label %584 unwind label %570

584:                                              ; preds = %582, %579
  %585 = add nuw nsw i64 %67, 1
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  %586 = icmp eq i64 %585, %65
  br i1 %586, label %589, label %66, !llvm.loop !500

587:                                              ; preds = %120, %517, %532, %554, %572, %570, %122, %85
  %588 = phi { ptr, i32 } [ %86, %85 ], [ %121, %120 ], [ %123, %122 ], [ %555, %554 ], [ %533, %532 ], [ %518, %517 ], [ %571, %570 ], [ %573, %572 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %800

589:                                              ; preds = %584, %47
  br i1 %41, label %590, label %798

590:                                              ; preds = %589
  %591 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xercesc_2_713getAttDefListEPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE(ptr noundef %40, ptr noundef %3) #14
          to label %592 unwind label %612

592:                                              ; preds = %590
  %593 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %594 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %595 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %596 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %597 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %598 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %599 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %600 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %601 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %602 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  br label %603

603:                                              ; preds = %592, %795
  %604 = phi i32 [ %797, %795 ], [ 0, %592 ]
  %605 = phi i32 [ %796, %795 ], [ %2, %592 ]
  %606 = load ptr, ptr %591, align 8, !tbaa !177
  %607 = getelementptr inbounds ptr, ptr %606, i64 13
  %608 = load ptr, ptr %607, align 8
  %609 = invoke noundef i32 %608(ptr noundef nonnull align 8 dereferenceable(16) %591) #14
          to label %610 unwind label %614

610:                                              ; preds = %603
  %611 = icmp ult i32 %604, %609
  br i1 %611, label %616, label %798

612:                                              ; preds = %590
  %613 = landingpad { ptr, i32 }
          cleanup
  br label %800

614:                                              ; preds = %603
  %615 = landingpad { ptr, i32 }
          cleanup
  br label %800

616:                                              ; preds = %610
  %617 = load ptr, ptr %591, align 8, !tbaa !177
  %618 = getelementptr inbounds ptr, ptr %617, i64 14
  %619 = load ptr, ptr %618, align 8
  %620 = invoke noundef nonnull align 8 dereferenceable(56) ptr %619(ptr noundef nonnull align 8 dereferenceable(16) %591, i32 noundef %604) #14
          to label %621 unwind label %645

621:                                              ; preds = %616
  %622 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
  %623 = load ptr, ptr %593, align 8, !tbaa !256
  %624 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %623, ptr noundef nonnull %620) #14
          to label %625 unwind label %647

625:                                              ; preds = %621
  %626 = icmp eq ptr %624, null
  br i1 %626, label %631, label %627

627:                                              ; preds = %625
  %628 = load i32, ptr %624, align 4, !tbaa !200
  %629 = load i32, ptr %42, align 8, !tbaa !254
  %630 = icmp ult i32 %628, %629
  br i1 %630, label %631, label %765

631:                                              ; preds = %627, %625
  %632 = load i8, ptr %13, align 8, !tbaa !204, !range !205, !noundef !206
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %665, label %634

634:                                              ; preds = %631
  %635 = and i32 %622, -2
  %636 = icmp eq i32 %635, 2
  br i1 %636, label %637, label %649

637:                                              ; preds = %634
  %638 = load ptr, ptr %594, align 8, !tbaa !221
  %639 = load ptr, ptr %620, align 8, !tbaa !177
  %640 = getelementptr inbounds ptr, ptr %639, i64 5
  %641 = load ptr, ptr %640, align 8
  %642 = invoke noundef ptr %641(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
          to label %643 unwind label %647

643:                                              ; preds = %637
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %638, i32 noundef 6, ptr noundef %642, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %644 unwind label %647

644:                                              ; preds = %643
  store i8 1, ptr %595, align 1, !tbaa !266
  br label %795

645:                                              ; preds = %616
  %646 = landingpad { ptr, i32 }
          cleanup
  br label %800

647:                                              ; preds = %776, %770, %670, %664, %662, %656, %643, %637, %621
  %648 = landingpad { ptr, i32 }
          cleanup
  br label %800

649:                                              ; preds = %634
  %650 = icmp ugt i32 %622, 1
  %651 = load i8, ptr %598, align 2, !range !205
  %652 = icmp eq i8 %651, 0
  %653 = select i1 %650, i1 true, i1 %652
  br i1 %653, label %665, label %654

654:                                              ; preds = %649
  %655 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
  br i1 %655, label %656, label %667

656:                                              ; preds = %654
  %657 = load ptr, ptr %594, align 8, !tbaa !221
  %658 = load ptr, ptr %620, align 8, !tbaa !177
  %659 = getelementptr inbounds ptr, ptr %658, i64 5
  %660 = load ptr, ptr %659, align 8
  %661 = invoke noundef ptr %660(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
          to label %662 unwind label %647

662:                                              ; preds = %656
  %663 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #14
          to label %664 unwind label %647

664:                                              ; preds = %662
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %657, i32 noundef 82, ptr noundef %661, ptr noundef %663, ptr noundef null, ptr noundef null) #14
          to label %667 unwind label %647

665:                                              ; preds = %649, %631
  %666 = icmp ult i32 %622, 2
  br i1 %666, label %667, label %795

667:                                              ; preds = %664, %654, %665
  %668 = load i8, ptr %13, align 8, !tbaa !204, !range !205, !noundef !206
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %676, label %670

670:                                              ; preds = %667
  %671 = load ptr, ptr %594, align 8, !tbaa !221
  %672 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
  %673 = load ptr, ptr %671, align 8, !tbaa !177
  %674 = getelementptr inbounds ptr, ptr %673, i64 8
  %675 = load ptr, ptr %674, align 8
  invoke void %675(ptr noundef nonnull align 8 dereferenceable(40) %671, ptr noundef nonnull %620, ptr noundef %672, i1 noundef zeroext false, ptr noundef %3) #14
          to label %676 unwind label %647

676:                                              ; preds = %670, %667
  %677 = icmp ult i32 %605, %48
  br i1 %677, label %694, label %678

678:                                              ; preds = %676
  %679 = load ptr, ptr %599, align 8, !tbaa !207
  %680 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %679) #14
          to label %681 unwind label %690

681:                                              ; preds = %678
  %682 = load ptr, ptr %599, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49) %680, ptr noundef %682) #14
          to label %683 unwind label %692

683:                                              ; preds = %681
  %684 = load ptr, ptr %594, align 8, !tbaa !221
  %685 = load ptr, ptr %684, align 8, !tbaa !177
  %686 = getelementptr inbounds ptr, ptr %685, i64 3
  %687 = load ptr, ptr %686, align 8
  invoke void %687(ptr noundef nonnull align 8 dereferenceable(40) %684, ptr noundef nonnull align 8 dereferenceable(49) %680, ptr noundef nonnull align 8 dereferenceable(56) %620) #14
          to label %688 unwind label %690

688:                                              ; preds = %683
  %689 = load ptr, ptr %600, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %689, ptr noundef nonnull %680) #14
          to label %702 unwind label %690

690:                                              ; preds = %697, %694, %688, %683, %678
  %691 = landingpad { ptr, i32 }
          cleanup
  br label %800

692:                                              ; preds = %681
  %693 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %680, ptr noundef %679) #13
  br label %800

694:                                              ; preds = %676
  %695 = load ptr, ptr %600, align 8, !tbaa !274
  %696 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %695, i32 noundef %605) #14
          to label %697 unwind label %690

697:                                              ; preds = %694
  %698 = load ptr, ptr %594, align 8, !tbaa !221
  %699 = load ptr, ptr %698, align 8, !tbaa !177
  %700 = getelementptr inbounds ptr, ptr %699, i64 3
  %701 = load ptr, ptr %700, align 8
  invoke void %701(ptr noundef nonnull align 8 dereferenceable(40) %698, ptr noundef nonnull align 8 dereferenceable(49) %696, ptr noundef nonnull align 8 dereferenceable(56) %620) #14
          to label %702 unwind label %690

702:                                              ; preds = %697, %688
  %703 = phi ptr [ %680, %688 ], [ %696, %697 ]
  call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %703, i1 noundef zeroext false) #14
  %704 = add i32 %605, 1
  %705 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %706 = icmp eq ptr %705, null
  br i1 %706, label %795, label %707

707:                                              ; preds = %702
  %708 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %620) #14
  %709 = load ptr, ptr %596, align 8, !tbaa !273
  %710 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %708) #14
  %711 = load ptr, ptr %597, align 8, !tbaa !247
  %712 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %708) #14
  %713 = load ptr, ptr %711, align 8, !tbaa !177
  %714 = getelementptr inbounds ptr, ptr %713, i64 10
  %715 = load ptr, ptr %714, align 8
  %716 = invoke noundef ptr %715(ptr noundef nonnull align 8 dereferenceable(40) %711, i32 noundef %712) #14
          to label %717 unwind label %732

717:                                              ; preds = %707
  %718 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %709, ptr noundef %710, ptr noundef %716) #14
          to label %719 unwind label %732

719:                                              ; preds = %717
  %720 = load ptr, ptr %601, align 8, !tbaa !233
  %721 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %720, ptr noundef nonnull %620) #14
          to label %722 unwind label %734

722:                                              ; preds = %719
  %723 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %620) #14
  %724 = load ptr, ptr %601, align 8, !tbaa !233
  %725 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %724, ptr noundef %723) #14
          to label %726 unwind label %736

726:                                              ; preds = %722
  %727 = load ptr, ptr %594, align 8, !tbaa !221
  %728 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %727) #14
  br i1 %728, label %729, label %738

729:                                              ; preds = %726
  %730 = load ptr, ptr %602, align 8, !tbaa !241
  %731 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %718, ptr noundef %730, i32 noundef 1, i32 noundef 2, ptr noundef %725, ptr noundef null, ptr noundef %731, i1 noundef zeroext true, ptr noundef %721, ptr noundef null) #14
          to label %763 unwind label %736

732:                                              ; preds = %717, %707
  %733 = landingpad { ptr, i32 }
          cleanup
  br label %800

734:                                              ; preds = %719
  %735 = landingpad { ptr, i32 }
          cleanup
  br label %800

736:                                              ; preds = %763, %729, %722
  %737 = landingpad { ptr, i32 }
          cleanup
  br label %800

738:                                              ; preds = %726
  %739 = call noundef i32 @_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv(ptr noundef nonnull align 8 dereferenceable(128) %725) #14
  %740 = icmp eq i32 %739, 3
  br i1 %740, label %744, label %741

741:                                              ; preds = %738
  %742 = load ptr, ptr %602, align 8, !tbaa !241
  %743 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
  br label %758

744:                                              ; preds = %738
  %745 = load ptr, ptr %601, align 8, !tbaa !233
  %746 = load ptr, ptr %594, align 8, !tbaa !221
  %747 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %746) #14
  %748 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %745, ptr noundef %747) #14
          to label %751 unwind label %749

749:                                              ; preds = %758, %744
  %750 = landingpad { ptr, i32 }
          cleanup
  br label %800

751:                                              ; preds = %744
  %752 = load ptr, ptr %602, align 8, !tbaa !241
  %753 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
  %754 = icmp eq ptr %748, null
  br i1 %754, label %758, label %755

755:                                              ; preds = %751
  %756 = load ptr, ptr %594, align 8, !tbaa !221
  %757 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %756) #14
  br label %758

758:                                              ; preds = %741, %751, %755
  %759 = phi ptr [ %753, %755 ], [ %753, %751 ], [ %743, %741 ]
  %760 = phi ptr [ %752, %755 ], [ %752, %751 ], [ %742, %741 ]
  %761 = phi ptr [ %748, %755 ], [ null, %751 ], [ null, %741 ]
  %762 = phi ptr [ %757, %755 ], [ %723, %751 ], [ %723, %741 ]
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %718, ptr noundef %760, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %725, ptr noundef %761, ptr noundef %759, i1 noundef zeroext true, ptr noundef %721, ptr noundef %762) #14
          to label %763 unwind label %749

763:                                              ; preds = %758, %729
  %764 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %718, ptr noundef %764) #14
          to label %795 unwind label %736

765:                                              ; preds = %627
  %766 = icmp ne i32 %622, 8
  %767 = load i8, ptr %13, align 8, !range !205
  %768 = icmp eq i8 %767, 0
  %769 = select i1 %766, i1 true, i1 %768
  br i1 %769, label %795, label %770

770:                                              ; preds = %765
  %771 = load ptr, ptr %594, align 8, !tbaa !221
  %772 = load ptr, ptr %620, align 8, !tbaa !177
  %773 = getelementptr inbounds ptr, ptr %772, i64 5
  %774 = load ptr, ptr %773, align 8
  %775 = invoke noundef ptr %774(ptr noundef nonnull align 8 dereferenceable(56) %620) #14
          to label %776 unwind label %647

776:                                              ; preds = %770
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %771, i32 noundef 49, ptr noundef %775, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %777 unwind label %647

777:                                              ; preds = %776
  store i8 1, ptr %595, align 1, !tbaa !266
  %778 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %779 = icmp eq ptr %778, null
  br i1 %779, label %795, label %780

780:                                              ; preds = %777
  %781 = call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %620) #14
  %782 = load ptr, ptr %596, align 8, !tbaa !273
  %783 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %781) #14
  %784 = load ptr, ptr %597, align 8, !tbaa !247
  %785 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %781) #14
  %786 = load ptr, ptr %784, align 8, !tbaa !177
  %787 = getelementptr inbounds ptr, ptr %786, i64 10
  %788 = load ptr, ptr %787, align 8
  %789 = invoke noundef ptr %788(ptr noundef nonnull align 8 dereferenceable(40) %784, i32 noundef %785) #14
          to label %790 unwind label %793

790:                                              ; preds = %780
  %791 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %782, ptr noundef %783, ptr noundef %789) #14
          to label %792 unwind label %793

792:                                              ; preds = %790
  call void @_ZN11xercesc_2_713PSVIAttribute14updateValidityENS_8PSVIItem14VALIDITY_STATEE(ptr noundef nonnull align 8 dereferenceable(96) %791, i32 noundef 1) #14
  br label %795

793:                                              ; preds = %790, %780
  %794 = landingpad { ptr, i32 }
          cleanup
  br label %800

795:                                              ; preds = %644, %702, %763, %765, %777, %792, %665
  %796 = phi i32 [ %605, %665 ], [ %605, %792 ], [ %605, %777 ], [ %605, %765 ], [ %704, %763 ], [ %704, %702 ], [ %605, %644 ]
  %797 = add nuw i32 %604, 1
  br label %603, !llvm.loop !501

798:                                              ; preds = %610, %589
  %799 = phi i32 [ %2, %589 ], [ %605, %610 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %802

800:                                              ; preds = %612, %645, %690, %692, %734, %749, %736, %732, %793, %647, %614, %83, %587
  %801 = phi { ptr, i32 } [ %588, %587 ], [ %84, %83 ], [ %613, %612 ], [ %615, %614 ], [ %646, %645 ], [ %648, %647 ], [ %794, %793 ], [ %691, %690 ], [ %693, %692 ], [ %733, %732 ], [ %735, %734 ], [ %737, %736 ], [ %750, %749 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %801

802:                                              ; preds = %37, %798
  %803 = phi i32 [ %799, %798 ], [ 0, %37 ]
  ret i32 %803
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !502 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br i1 %2, label %45, label %3, !prof !503

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !504
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !506
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !507
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !230
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !508
  %23 = load i8, ptr %9, align 8, !tbaa !510, !range !205, !noundef !206
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !511
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #18
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !512
  %31 = load ptr, ptr %30, align 8, !tbaa !177
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !513

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !507
  %37 = load i32, ptr %4, align 8, !tbaa !504
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !230
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !514

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !515 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !516
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !517 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !518
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !472 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret i32 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 !prof !519 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !520
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !521
  %10 = load ptr, ptr %0, align 8, !tbaa !479
  %11 = load ptr, ptr %7, align 8, !tbaa !177
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10) #14
  store i32 %13, ptr %4, align 4, !tbaa !200
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !480
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !230
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !522

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !477
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !523

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !478
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !524

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !520
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !476
  %33 = load ptr, ptr %30, align 8, !tbaa !177
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32) #14
  br i1 %36, label %41, label %37, !prof !525

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !230
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !526, !llvm.loop !527

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ null, %37 ], [ %21, %29 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 !prof !472 {
  store ptr %4, ptr %0, align 8, !tbaa !467
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !528
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !476
  %9 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %9, align 8, !tbaa !477
  %10 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 4
  store i32 %3, ptr %10, align 4, !tbaa !478
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !529 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !530

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !223
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !531

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !223
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !532, !llvm.loop !533

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

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !502 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !506
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 1, !tbaa !534
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %4 = alloca %"class.xercesc_2_7::XSDDOMParser", align 8
  %5 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !252
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(186) %7) #14
  %11 = load ptr, ptr %6, align 8, !tbaa !252
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !238
  tail call void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %11, ptr noundef %13) #14
  %14 = load ptr, ptr %6, align 8, !tbaa !252
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %16 = load i8, ptr %15, align 1, !tbaa !239, !range !205, !noundef !206
  %17 = icmp ne i8 %16, 0
  tail call void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %14, i1 noundef zeroext %17) #14
  %18 = load ptr, ptr %6, align 8, !tbaa !252
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !214
  tail call void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %18, ptr noundef %20) #14
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %22 = load i8, ptr %21, align 1, !tbaa !237, !range !205, !noundef !206
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %26 = load ptr, ptr %25, align 8, !tbaa !221
  %27 = load ptr, ptr %26, align 8, !tbaa !177
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(40) %26) #14
  br label %30

30:                                               ; preds = %24, %3
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #15
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %32 = load ptr, ptr %31, align 8, !tbaa !207
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef null, ptr noundef %32, ptr noundef null) #14
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef 0) #14
          to label %33 unwind label %59

33:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %4, i1 noundef zeroext true) #14
          to label %34 unwind label %59

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %36 = load ptr, ptr %35, align 8, !tbaa !240
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %36) #14
          to label %37 unwind label %59

37:                                               ; preds = %34
  %38 = load ptr, ptr %12, align 8, !tbaa !238
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %38) #14
          to label %39 unwind label %59

39:                                               ; preds = %37
  %40 = load ptr, ptr %1, align 8, !tbaa !177
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %44 unwind label %61

44:                                               ; preds = %39
  %45 = load ptr, ptr %1, align 8, !tbaa !177
  %46 = getelementptr inbounds ptr, ptr %45, i64 10
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false) #14
          to label %48 unwind label %61

48:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %49 unwind label %61

49:                                               ; preds = %48
  %50 = load ptr, ptr %1, align 8, !tbaa !177
  %51 = getelementptr inbounds ptr, ptr %50, i64 10
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %43) #14
          to label %53 unwind label %61

53:                                               ; preds = %49
  %54 = call noundef zeroext i1 @_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv(ptr noundef nonnull align 8 dereferenceable(368) %4) #14
  %55 = load i8, ptr %15, align 1, !range !205
  %56 = icmp ne i8 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297) #14
          to label %63 unwind label %61

59:                                               ; preds = %37, %34, %33, %30
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %155

61:                                               ; preds = %58, %49, %48, %44, %39
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %155

63:                                               ; preds = %58, %53
  %64 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %4) #14
          to label %65 unwind label %125

65:                                               ; preds = %63
  %66 = icmp eq ptr %64, null
  br i1 %66, label %153, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %64, align 8, !tbaa !177
  %69 = getelementptr inbounds ptr, ptr %68, i64 13
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(32) %64) #14
          to label %72 unwind label %127

72:                                               ; preds = %67
  %73 = icmp eq ptr %71, null
  br i1 %73, label %153, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %76 = load ptr, ptr %75, align 8, !tbaa !235
  %77 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %76) #14
          to label %78 unwind label %129

78:                                               ; preds = %74
  %79 = load ptr, ptr %75, align 8, !tbaa !235
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %77, ptr noundef %79) #14
          to label %80 unwind label %131

80:                                               ; preds = %78
  %81 = load ptr, ptr %77, align 8, !tbaa !177
  %82 = getelementptr inbounds ptr, ptr %81, i64 22
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(160) %77) #14
          to label %85 unwind label %133

85:                                               ; preds = %80
  %86 = load ptr, ptr %84, align 8, !tbaa !177
  %87 = getelementptr inbounds ptr, ptr %86, i64 13
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(16) %84, i32 noundef 3) #14
          to label %89 unwind label %133

89:                                               ; preds = %85
  %90 = load ptr, ptr %1, align 8, !tbaa !177
  %91 = getelementptr inbounds ptr, ptr %90, i64 5
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %94 unwind label %133

94:                                               ; preds = %89
  %95 = load ptr, ptr %84, align 8, !tbaa !177
  %96 = getelementptr inbounds ptr, ptr %95, i64 15
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef %93) #14
          to label %98 unwind label %133

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %5) #15
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %100 = load ptr, ptr %99, align 8, !tbaa !247
  %101 = load ptr, ptr %19, align 8, !tbaa !214
  %102 = load ptr, ptr %1, align 8, !tbaa !177
  %103 = getelementptr inbounds ptr, ptr %102, i64 5
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %106 unwind label %135

106:                                              ; preds = %98
  %107 = load ptr, ptr %35, align 8, !tbaa !240
  %108 = load ptr, ptr %12, align 8, !tbaa !238
  %109 = load ptr, ptr %31, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef nonnull %71, ptr noundef %100, ptr noundef nonnull %77, ptr noundef %101, ptr noundef nonnull %0, ptr noundef %105, ptr noundef %107, ptr noundef %108, ptr noundef %109) #14
          to label %110 unwind label %135

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %112 = load i8, ptr %111, align 8, !tbaa !204, !range !205, !noundef !206
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %139, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %116 = load ptr, ptr %115, align 8, !tbaa !221
  %117 = load ptr, ptr %116, align 8, !tbaa !177
  %118 = getelementptr inbounds ptr, ptr %117, i64 11
  %119 = load ptr, ptr %118, align 8
  invoke void %119(ptr noundef nonnull align 8 dereferenceable(40) %116, ptr noundef nonnull %77) #14
          to label %120 unwind label %137

120:                                              ; preds = %114
  %121 = load ptr, ptr %115, align 8, !tbaa !221
  %122 = load ptr, ptr %121, align 8, !tbaa !177
  %123 = getelementptr inbounds ptr, ptr %122, i64 4
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(40) %121, i1 noundef zeroext false, i1 noundef zeroext true) #14
          to label %139 unwind label %137

125:                                              ; preds = %63
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %155

127:                                              ; preds = %67
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %155

129:                                              ; preds = %74
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %155

131:                                              ; preds = %78
  %132 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %77, ptr noundef %76) #13
  br label %155

133:                                              ; preds = %94, %89, %85, %80
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %155

135:                                              ; preds = %106, %98
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %150

137:                                              ; preds = %145, %140, %120, %114
  %138 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #13
  br label %150

139:                                              ; preds = %120, %110
  br i1 %2, label %140, label %142

140:                                              ; preds = %139
  %141 = load ptr, ptr %19, align 8, !tbaa !214
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %141) #14
          to label %142 unwind label %137

142:                                              ; preds = %140, %139
  %143 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %19, align 8, !tbaa !214
  %147 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %146) #14
          to label %148 unwind label %137

148:                                              ; preds = %145
  %149 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  store ptr %147, ptr %149, align 8, !tbaa !233
  br label %152

150:                                              ; preds = %137, %135
  %151 = phi { ptr, i32 } [ %138, %137 ], [ %136, %135 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #15
  br label %155

152:                                              ; preds = %142, %148
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #13
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #15
  br label %153

153:                                              ; preds = %72, %65, %152
  %154 = phi ptr [ %77, %152 ], [ null, %65 ], [ null, %72 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #13
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  ret ptr %154

155:                                              ; preds = %61, %127, %133, %150, %131, %129, %125, %59
  %156 = phi { ptr, i32 } [ %60, %59 ], [ %62, %61 ], [ %126, %125 ], [ %128, %127 ], [ %132, %131 ], [ %130, %129 ], [ %151, %150 ], [ %134, %133 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #13
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  resume { ptr, i32 } %156
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !297 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !536 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %2, ptr %0, align 8, !tbaa !537
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !539
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !540
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !541
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !537
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7) #14
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !541
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #13
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 !prof !542 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !543

7:                                                ; preds = %3
  %8 = load i16, ptr %2, align 2, !tbaa !223
  store i16 %8, ptr %5, align 8, !tbaa !544
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %5, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !546
  br label %26

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !537
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !539
  %18 = load i32, ptr %4, align 4, !tbaa !200
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !230
  call void @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef %21) #14
  %22 = load ptr, ptr %16, align 8, !tbaa !539
  %23 = load i32, ptr %4, align 4, !tbaa !200
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %15, ptr %25, align 8, !tbaa !230
  br label %26

26:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !547 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !479
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !474
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !480
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !521
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 %3, ptr %11, align 8, !tbaa !482
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !481
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !479
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13) #14
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #14
          to label %15 unwind label %19

15:                                               ; preds = %5
  store ptr %14, ptr %10, align 8, !tbaa !520
  %16 = load i32, ptr %11, align 8, !tbaa !482
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !548

18:                                               ; preds = %15
  store i32 256, ptr %11, align 8, !tbaa !482
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #13
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 256, %18 ], [ %16, %15 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %0, align 8, !tbaa !479
  %25 = zext i32 %22 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %24, align 8, !tbaa !177
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %26) #14
  store ptr %30, ptr %23, align 8, !tbaa !484
  store ptr null, ptr %30, align 8, !tbaa !230
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !549 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !550
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !552
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !553
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !554
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !555
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !556
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !557
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  store ptr %3, ptr %12, align 8, !tbaa !557
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !297 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !512
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !510
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !507
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !504
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !506
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !558
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #14
  store ptr %3, ptr %11, align 8, !tbaa !558
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !297 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !559
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !330
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !351
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !344
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !347
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !344
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !560

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !344
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !230
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !561, !llvm.loop !562
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !559, !range !205, !noundef !206
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5, !prof !307

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !330
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !560

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !344
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !230
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !177
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(48) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !330
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !prof !563, !llvm.loop !564

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !347
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !344
  %33 = load ptr, ptr %30, align 8, !tbaa !177
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !330
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !347
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !559, !range !205, !noundef !206
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !344
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !230
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !177
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(48) %25) #13
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !344
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !330
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !330
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !559, !range !205, !noundef !206
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !344
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !230
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !177
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(48) %17) #13
  %23 = load ptr, ptr %7, align 8, !tbaa !344
  %24 = load i32, ptr %2, align 4, !tbaa !330
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !230
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !565
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !330
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !347
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !559, !range !205, !noundef !206
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !344
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !230
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !177
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(48) %22) #13
  %28 = load i32, ptr %3, align 4, !tbaa !330
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
  %43 = load ptr, ptr %42, align 8, !tbaa !344
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !344
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !344
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !230
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !230
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !566

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !230
  store i32 %31, ptr %3, align 4, !tbaa !330
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !330
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !330
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !559, !range !205, !noundef !206
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !344
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !230
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !177
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !559, !range !205, !noundef !206
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !330
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !344
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !230
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !177
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(48) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !330
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !567

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !347
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !344
  %33 = load ptr, ptr %30, align 8, !tbaa !177
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !297 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !536 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !568

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !537
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.4, i32 noundef 69, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !537
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !540
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !177
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !539
  %21 = load i32, ptr %12, align 8, !tbaa !540
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !442

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !539
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !230
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !569, !llvm.loop !570
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !571 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !541
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !540
  %8 = load ptr, ptr %0, align 8, !tbaa !537
  %9 = load ptr, ptr %5, align 8, !tbaa !177
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !200
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !539
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !230
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !572

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !541
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !546
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !573

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !230
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !574, !llvm.loop !575

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !542 {
  %5 = load i16, ptr %2, align 2, !tbaa !223
  store i16 %5, ptr %0, align 8, !tbaa !544
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !576
  %7 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !546
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !547 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !548

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !479
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.5, i32 noundef 138, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !479
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !521
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !177
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !480
  %21 = load i32, ptr %12, align 8, !tbaa !521
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !442

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !480
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !230
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !577, !llvm.loop !578
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !549 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !579

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !550
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.6, i32 noundef 99, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !550
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !554
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !177
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !553
  %21 = load i32, ptr %12, align 8, !tbaa !554
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !580

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !553
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !230
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !581, !llvm.loop !582
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !307

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !512
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.7, i32 noundef 93, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !512
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !504
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !177
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !507
  %21 = load i32, ptr %12, align 8, !tbaa !504
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !560

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !507
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !230
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !583, !llvm.loop !584
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !536 {
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !537
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !539
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !541
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !177
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !547 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #14
          to label %2 unwind label %25

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !479
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !484
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %25

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !479
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !480
  %13 = load ptr, ptr %10, align 8, !tbaa !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #14
          to label %16 unwind label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !520
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !177
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !549 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !512
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !507
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !558
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !177
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717PSVIAttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !297 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !585
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !586
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !177
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !587
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !177
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #13
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !297 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !536 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !540
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !442

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %8

7:                                                ; preds = %27, %1
  ret void

8:                                                ; preds = %5, %27
  %9 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %10 = phi i64 [ 0, %5 ], [ %31, %27 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !539
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !230
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15, !prof !588

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %8 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !576
  %19 = load ptr, ptr %0, align 8, !tbaa !537
  %20 = load ptr, ptr %19, align 8, !tbaa !177
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %16) #14
  %23 = icmp eq ptr %18, null
  br i1 %23, label %24, label %15, !prof !589, !llvm.loop !590

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 8, !tbaa !539
  %26 = load i32, ptr %2, align 8, !tbaa !540
  br label %27

27:                                               ; preds = %24, %8
  %28 = phi i32 [ %26, %24 ], [ %9, %8 ]
  %29 = phi ptr [ %25, %24 ], [ %11, %8 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 %10
  store ptr null, ptr %30, align 8, !tbaa !230
  %31 = add nuw nsw i64 %10, 1
  %32 = zext i32 %28 to i64
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %8, label %7, !prof !591, !llvm.loop !592
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !343 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !521
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !560

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %39, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !481
  ret void

10:                                               ; preds = %5, %39
  %11 = phi i32 [ %3, %5 ], [ %40, %39 ]
  %12 = phi i64 [ 0, %5 ], [ %43, %39 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !480
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !230
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17, !prof !593

17:                                               ; preds = %10, %30
  %18 = phi ptr [ %20, %30 ], [ %15, %10 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !528
  %21 = load i8, ptr %7, align 8, !tbaa !474, !range !205, !noundef !206
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23, !prof !483

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !467
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !177
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(147) %24) #13
  br label %30

30:                                               ; preds = %23, %26, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !479
  %32 = load ptr, ptr %31, align 8, !tbaa !177
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %18) #14
  %35 = icmp eq ptr %20, null
  br i1 %35, label %36, label %17, !prof !594, !llvm.loop !595

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !tbaa !480
  %38 = load i32, ptr %2, align 8, !tbaa !521
  br label %39

39:                                               ; preds = %36, %10
  %40 = phi i32 [ %38, %36 ], [ %11, %10 ]
  %41 = phi ptr [ %37, %36 ], [ %13, %10 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %12
  store ptr null, ptr %42, align 8, !tbaa !230
  %43 = add nuw nsw i64 %12, 1
  %44 = zext i32 %40 to i64
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %10, label %8, !prof !596, !llvm.loop !597
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !549 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !550
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !553
  %5 = load ptr, ptr %2, align 8, !tbaa !177
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !553
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !557
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !177
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !598 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %45, label %3, !prof !599

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !554
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !600

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !556
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !553
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !230
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !601

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !602
  %23 = load i8, ptr %9, align 8, !tbaa !552, !range !205, !noundef !206
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !604

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !605
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #18
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !550
  %31 = load ptr, ptr %30, align 8, !tbaa !177
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !606, !llvm.loop !607

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !553
  %37 = load i32, ptr %4, align 8, !tbaa !554
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !230
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !608, !llvm.loop !609

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !598 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !556
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !610 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !422
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 comdat align 2 !prof !611 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !612
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !613 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !614
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !616 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !230
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !617
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !619 {
  %2 = load ptr, ptr %0, align 8, !tbaa !620
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !621 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !330
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !622

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !347
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !344
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !230
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !623 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !358
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !621 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !624
  %3 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !626
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %4 = load ptr, ptr %0, align 8, !tbaa !624
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !626
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !177
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #14
  br label %15

14:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #18
  br label %15

15:                                               ; preds = %10, %14, %3
  store ptr %1, ptr %0, align 8, !tbaa !624
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !626
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xercesc_2_712ArrayJanitorItEixEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !624
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !610 {
  %2 = load ptr, ptr %0, align 8, !tbaa !624
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !176 {
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !245
  br label %21

9:                                                ; preds = %3
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 4, !tbaa !244
  br label %21

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %16 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %17 = load i8, ptr %4, align 1, !tbaa !212, !range !205, !noundef !206
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %21

21:                                               ; preds = %20, %11, %6
  %22 = phi i32 [ %8, %6 ], [ %13, %11 ], [ %16, %20 ]
  ret i32 %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !627 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !612
  %6 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, i32 noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !629
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !630
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !631
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #1 align 2 !prof !176 {
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  store i8 0, ptr %3, align 1, !tbaa !212
  store i8 0, ptr %4, align 1, !tbaa !212
  switch i32 %6, label %38 [
    i32 11, label %33
    i32 12, label %25
    i32 13, label %7
  ]

7:                                                ; preds = %5
  %8 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef16getNamespaceListEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %16

13:                                               ; preds = %16
  %14 = and i8 %22, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %33

16:                                               ; preds = %10, %16
  %17 = phi i8 [ %22, %16 ], [ 0, %10 ]
  %18 = phi i32 [ %23, %16 ], [ 0, %10 ]
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %18) #14
  %20 = load i32, ptr %19, align 4, !tbaa !200
  %21 = icmp eq i32 %20, %2
  %22 = select i1 %21, i8 1, i8 %17
  %23 = add nuw i32 %18, 1
  %24 = icmp eq i32 %23, %11
  br i1 %24, label %13, label %16, !llvm.loop !636

25:                                               ; preds = %5
  %26 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #14
  %27 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %26) #14
  %28 = icmp ne i32 %27, %2
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, %2
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %38

33:                                               ; preds = %5, %13, %25
  %34 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  switch i32 %34, label %38 [
    i32 5, label %35
    i32 6, label %37
  ]

35:                                               ; preds = %33
  store i8 1, ptr %3, align 1, !tbaa !212
  %36 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %38

37:                                               ; preds = %33
  store i8 1, ptr %4, align 1, !tbaa !212
  br label %38

38:                                               ; preds = %5, %7, %10, %13, %35, %37, %33, %25
  %39 = phi i1 [ true, %35 ], [ true, %37 ], [ true, %33 ], [ false, %25 ], [ false, %13 ], [ false, %10 ], [ false, %7 ], [ false, %5 ]
  ret i1 %39
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 !prof !637 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !638
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !642
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !644 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !645

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !605
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !646 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !554
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !556
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !604

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !604

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !552, !range !205, !noundef !206
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !605
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #18
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !605
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !647
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !550
  %28 = load ptr, ptr %27, align 8, !tbaa !177
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !553
  %34 = load i32, ptr %4, align 4, !tbaa !200
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !230
  call void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #14
  %38 = load ptr, ptr %32, align 8, !tbaa !553
  %39 = load i32, ptr %4, align 4, !tbaa !200
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !230
  %42 = load i32, ptr %9, align 8, !tbaa !556
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !556
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = call noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp ne ptr %5, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !504
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !506
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !510, !range !205, !noundef !206
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !511
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #18
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !511
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !648
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !649
  br label %45

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !512
  %29 = load ptr, ptr %28, align 8, !tbaa !177
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32) #14
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !507
  %35 = load i32, ptr %5, align 4, !tbaa !200
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !230
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemIjEC2EPviPjPS1_(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38) #14
  %39 = load ptr, ptr %33, align 8, !tbaa !507
  %40 = load i32, ptr %5, align 4, !tbaa !200
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %32, ptr %42, align 8, !tbaa !230
  %43 = load i32, ptr %9, align 4, !tbaa !506
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4, !tbaa !506
  br label %45

45:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !650 {
  %3 = load i32, ptr %0, align 8, !tbaa !286
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !287
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !651

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %8 = load i32, ptr %0, align 8, !tbaa !286
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !291
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !286
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !223
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !616 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !617
  %4 = load ptr, ptr %0, align 8, !tbaa !620
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 align 2 !prof !176 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  br label %20

8:                                                ; preds = %5
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %11 = xor i1 %10, true
  %12 = icmp eq i32 %9, 0
  %13 = icmp sgt i32 %9, 8
  %14 = or i1 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %97

20:                                               ; preds = %7, %8
  %21 = phi i1 [ true, %7 ], [ %11, %8 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %25

25:                                               ; preds = %20, %47
  %26 = phi i8 [ %48, %47 ], [ 1, %20 ]
  %27 = phi ptr [ %51, %47 ], [ %3, %20 ]
  %28 = load i16, ptr %27, align 2, !tbaa !223
  switch i16 %28, label %32 [
    i16 0, label %101
    i16 -1, label %29
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds i16, ptr %27, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !223
  br label %47

32:                                               ; preds = %25
  %33 = icmp ult i16 %28, 14
  br i1 %33, label %34, label %44

34:                                               ; preds = %32
  switch i16 %28, label %47 [
    i16 13, label %35
    i16 10, label %35
    i16 9, label %35
  ]

35:                                               ; preds = %34, %34, %34
  %36 = load i8, ptr %22, align 2, !tbaa !217, !range !205, !noundef !206
  %37 = icmp eq i8 %36, 0
  %38 = load i8, ptr %23, align 8, !range !205
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  %41 = or i1 %21, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %24, align 8, !tbaa !221
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %43, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %47

44:                                               ; preds = %32
  %45 = icmp eq i16 %28, 60
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %47

47:                                               ; preds = %34, %42, %35, %46, %44, %29
  %48 = phi i8 [ %26, %29 ], [ 0, %46 ], [ %26, %44 ], [ %26, %35 ], [ %26, %42 ], [ %26, %34 ]
  %49 = phi i16 [ %31, %29 ], [ 60, %46 ], [ %28, %44 ], [ 32, %35 ], [ 32, %42 ], [ %28, %34 ]
  %50 = phi ptr [ %30, %29 ], [ %27, %46 ], [ %27, %44 ], [ %27, %35 ], [ %27, %42 ], [ %27, %34 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext %49) #14
  %51 = getelementptr inbounds i16, ptr %50, i64 1
  br label %25, !llvm.loop !652

52:                                               ; preds = %93, %97
  %53 = phi i8 [ %98, %97 ], [ %62, %93 ]
  %54 = phi i1 [ false, %97 ], [ true, %93 ]
  %55 = phi ptr [ %100, %97 ], [ %94, %93 ]
  %56 = load i16, ptr %55, align 2, !tbaa !223
  switch i16 %56, label %61 [
    i16 0, label %101
    i16 -1, label %57
    i16 60, label %60
  ]

57:                                               ; preds = %52
  %58 = getelementptr inbounds i16, ptr %55, i64 1
  %59 = load i16, ptr %58, align 2, !tbaa !223
  br label %61

60:                                               ; preds = %52
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %61

61:                                               ; preds = %52, %60, %57
  %62 = phi i8 [ %53, %57 ], [ 0, %60 ], [ %53, %52 ]
  %63 = phi i16 [ %59, %57 ], [ 60, %60 ], [ %56, %52 ]
  %64 = phi ptr [ %58, %57 ], [ %55, %60 ], [ %55, %52 ]
  %65 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  %66 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %65, i16 noundef zeroext %63) #14
  br i1 %54, label %67, label %72

67:                                               ; preds = %61
  br i1 %66, label %70, label %68

68:                                               ; preds = %67
  br i1 %99, label %95, label %69

69:                                               ; preds = %68
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 32) #14
  br label %95

70:                                               ; preds = %67
  %71 = getelementptr inbounds i16, ptr %64, i64 1
  br label %93

72:                                               ; preds = %61
  br i1 %66, label %73, label %95

73:                                               ; preds = %72
  %74 = getelementptr inbounds i16, ptr %64, i64 1
  %75 = load i8, ptr %17, align 2, !tbaa !217, !range !205, !noundef !206
  %76 = icmp eq i8 %75, 0
  %77 = load i8, ptr %18, align 8, !range !205
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  %80 = or i1 %79, %11
  br i1 %80, label %93, label %81

81:                                               ; preds = %73
  %82 = icmp ne i16 %63, 32
  %83 = select i1 %99, i1 true, i1 %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load i16, ptr %74, align 2, !tbaa !223
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  %89 = load i16, ptr %74, align 2, !tbaa !223
  %90 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %88, i16 noundef zeroext %89) #14
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %84, %81
  %92 = load ptr, ptr %19, align 8, !tbaa !221
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %92, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %93

93:                                               ; preds = %91, %87, %73, %70
  %94 = phi ptr [ %74, %91 ], [ %74, %87 ], [ %74, %73 ], [ %71, %70 ]
  br label %52, !llvm.loop !653

95:                                               ; preds = %72, %68, %69
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext %63) #14
  %96 = getelementptr inbounds i16, ptr %64, i64 1
  br label %97, !llvm.loop !653

97:                                               ; preds = %15, %95
  %98 = phi i8 [ 1, %15 ], [ %62, %95 ]
  %99 = phi i1 [ true, %15 ], [ false, %95 ]
  %100 = phi ptr [ %3, %15 ], [ %96, %95 ]
  br label %52

101:                                              ; preds = %52, %25
  %102 = phi i8 [ %26, %25 ], [ %53, %52 ]
  %103 = and i8 %102, 1
  %104 = icmp ne i8 %103, 0
  ret i1 %104
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !654 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !362
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !655 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !656
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !658 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 4, !tbaa !659
  ret i16 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator26getMostRecentAttrValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !660
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() local_unnamed_addr #0 comdat align 2 !prof !536 {
  %1 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !230
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !661 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !662

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !663
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !665 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !666
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !498
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !585
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !667
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %11) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !667
  invoke void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef %13) #14
          to label %14 unwind label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8, !tbaa !585
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull %12) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !586
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %1) #14
  %18 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !587
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef %2) #14
  br label %38

20:                                               ; preds = %10
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #13
  resume { ptr, i32 } %21

22:                                               ; preds = %3
  %23 = load ptr, ptr %6, align 8, !tbaa !585
  %24 = load i32, ptr %4, align 8, !tbaa !498
  %25 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %24) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !586
  %28 = load i32, ptr %4, align 8, !tbaa !498
  %29 = load ptr, ptr %27, align 8, !tbaa !177
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef %1, i32 noundef %28) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !587
  %34 = load i32, ptr %4, align 8, !tbaa !498
  %35 = load ptr, ptr %33, align 8, !tbaa !177
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef %2, i32 noundef %34) #14
  br label %38

38:                                               ; preds = %22, %14
  %39 = phi ptr [ %12, %14 ], [ %25, %22 ]
  %40 = load i32, ptr %4, align 8, !tbaa !498
  %41 = add i32 %40, 1
  store i32 %41, ptr %4, align 8, !tbaa !498
  ret ptr %39
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !668 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !669
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_722XSSimpleTypeDefinition10getVarietyEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !670
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %6

6:                                                ; preds = %19, %4
  %7 = phi i8 [ 1, %4 ], [ %20, %19 ]
  %8 = phi ptr [ %2, %4 ], [ %23, %19 ]
  %9 = load i16, ptr %8, align 2, !tbaa !223
  switch i16 %9, label %14 [
    i16 0, label %24
    i16 -1, label %11
    i16 60, label %10
  ]

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds i16, ptr %8, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !223
  br label %19

14:                                               ; preds = %6, %10
  %15 = phi i8 [ 0, %10 ], [ %7, %6 ]
  %16 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #14
  %17 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %16, i16 noundef zeroext %9) #14
  %18 = select i1 %17, i16 32, i16 %9
  br label %19

19:                                               ; preds = %11, %14
  %20 = phi i8 [ %7, %11 ], [ %15, %14 ]
  %21 = phi ptr [ %12, %11 ], [ %8, %14 ]
  %22 = phi i16 [ %13, %11 ], [ %18, %14 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %22) #14
  %23 = getelementptr inbounds i16, ptr %21, i64 1
  br label %6, !llvm.loop !677

24:                                               ; preds = %6
  %25 = and i8 %7, 1
  %26 = icmp ne i8 %25, 0
  ret i1 %26
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !678 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !679
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !614
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !230
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !614
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !680 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !614
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !681

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !682
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !679
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !230
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #1 comdat align 2 !prof !683 {
  %9 = zext i1 %7 to i8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !684
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %3, ptr noundef %2, i32 noundef %1) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %12, align 4, !tbaa !686
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %9, ptr %13, align 8, !tbaa !687
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %6, ptr %14, align 8, !tbaa !688
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !683 {
  %3 = zext i1 %1 to i8
  store i8 %3, ptr %0, align 8, !tbaa !689
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !690 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !691
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !692 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xercesc_2_713getAttDefListEPNS_15ComplexTypeInfoEPNS_14XMLElementDeclE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !176 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #14
  br label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !177
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr %9(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %5, %4 ], [ %10, %6 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !693 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !694
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !695 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !696, !range !205, !noundef !206
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !697 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !698
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713PSVIAttribute14updateValidityENS_8PSVIItem14VALIDITY_STATEE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !699
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !703 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.10", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !704
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !627 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !706

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !707
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !709 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.10", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !710
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.10", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !711
  %9 = load ptr, ptr %0, align 8, !tbaa !712
  %10 = load ptr, ptr %6, align 8, !tbaa !177
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !200
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.10", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !713
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !230
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !714

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.11", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !715
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !716

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !710
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.11", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !717
  %28 = load ptr, ptr %25, align 8, !tbaa !177
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #14
  br i1 %31, label %36, label %32, !prof !716

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.11", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !230
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !718, !llvm.loop !719

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !720
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !722
  %8 = load ptr, ptr %0, align 8, !tbaa !723
  %9 = load ptr, ptr %5, align 8, !tbaa !177
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !200
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !724
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !230
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !720
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !725
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !230
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !726

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !727 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !557
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !554
  %8 = load ptr, ptr %0, align 8, !tbaa !550
  %9 = load ptr, ptr %5, align 8, !tbaa !177
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !200
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !553
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !230
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !728

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !557
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !647
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !729

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !230
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !730, !llvm.loop !731

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.14", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !554
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !550
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !177
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !550
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !554
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !553
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !553
  store i32 %5, ptr %3, align 8, !tbaa !554
  %23 = load ptr, ptr %0, align 8, !tbaa !550
  %24 = load ptr, ptr %23, align 8, !tbaa !177
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !553
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !230
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !602
  %38 = load ptr, ptr %18, align 8, !tbaa !557
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !647
  %41 = load ptr, ptr %0, align 8, !tbaa !550
  %42 = load ptr, ptr %38, align 8, !tbaa !177
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !230
  store ptr %48, ptr %36, align 8, !tbaa !602
  store ptr %35, ptr %47, align 8, !tbaa !230
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !732

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !554
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !733

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !646 {
  store ptr %2, ptr %0, align 8, !tbaa !605
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !602
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !647
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !734
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.14", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !736
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = load ptr, ptr %0, align 8, !tbaa !734
  store ptr null, ptr %0, align 8, !tbaa !734
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !734
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.14", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !736
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !177
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !734
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.14", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !736
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !558
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !504
  %9 = load ptr, ptr %0, align 8, !tbaa !512
  %10 = load ptr, ptr %6, align 8, !tbaa !177
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !200
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !507
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !230
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !558
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !648
  %24 = load ptr, ptr %21, align 8, !tbaa !177
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23) #14
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !649
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !230
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !737

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %28 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.15", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !504
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !512
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !177
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %14 = load ptr, ptr %0, align 8, !tbaa !512
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !504
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !507
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %23, ptr %21, align 8, !tbaa !507
  store i32 %6, ptr %3, align 8, !tbaa !504
  %24 = load ptr, ptr %0, align 8, !tbaa !512
  %25 = load ptr, ptr %24, align 8, !tbaa !177
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #14
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !507
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !230
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !508
  %39 = load ptr, ptr %19, align 8, !tbaa !558
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !648
  %42 = load ptr, ptr %0, align 8, !tbaa !512
  %43 = load ptr, ptr %39, align 8, !tbaa !177
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #14
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !230
  store ptr %49, ptr %37, align 8, !tbaa !508
  store ptr %36, ptr %48, align 8, !tbaa !230
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !738

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !504
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !739

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !558
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !504
  %9 = load ptr, ptr %0, align 8, !tbaa !512
  %10 = load ptr, ptr %6, align 8, !tbaa !177
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !200
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !507
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !230
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !649
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !558
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !648
  %28 = load ptr, ptr %25, align 8, !tbaa !177
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #14
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !230
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !740

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemIjEC2EPviPjPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 !prof !176 {
  store ptr %3, ptr %0, align 8, !tbaa !511
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !508
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !648
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !649
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !741
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.15", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !743
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = load ptr, ptr %0, align 8, !tbaa !741
  store ptr null, ptr %0, align 8, !tbaa !741
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !741
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.15", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !743
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !177
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !741
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.15", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !743
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !744 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.9", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !745
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.9", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !747
  %8 = load ptr, ptr %0, align 8, !tbaa !748
  %9 = load ptr, ptr %5, align 8, !tbaa !177
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !200
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.9", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !749
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !230
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !750

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !745
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !751
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !752

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !230
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !753, !llvm.loop !754

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !755
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !757
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !755
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !230
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !755
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !758 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !759
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !761
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !230
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !761
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !755
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !762
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !757
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !230
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !755
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !763
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !762
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !755
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !230
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !757
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !230
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !230
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !764

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !762
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !757
  %49 = load ptr, ptr %46, align 8, !tbaa !177
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !757
  store i32 %12, ptr %6, align 8, !tbaa !763
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !758 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !761
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !765
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !766

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !767
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !761
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !768

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !769

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !230
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !759
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !230
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !230
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !770, !llvm.loop !771

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !767
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !759
  %49 = load ptr, ptr %46, align 8, !tbaa !177
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !759
  store i32 %12, ptr %6, align 8, !tbaa !765
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !678 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !614
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !772
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !773

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !682
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !614
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !230
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !679
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !230
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !230
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !774

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !682
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !679
  %49 = load ptr, ptr %46, align 8, !tbaa !177
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !679
  store i32 %12, ptr %6, align 8, !tbaa !772
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !692 {
  %3 = load ptr, ptr %0, align 8, !tbaa !624
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !775

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !626
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !776

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !177
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !624
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !626
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtRNS_9XMLBufferENS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !176 {
  %5 = alloca i8, align 1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %9 = load i32, ptr %8, align 8, !tbaa !245
  br label %23

10:                                               ; preds = %4
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !244
  br label %23

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %17 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef %1, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  %18 = load i8, ptr %5, align 1, !tbaa !212, !range !205, !noundef !206
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %21

21:                                               ; preds = %20, %15
  %22 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %23

23:                                               ; preds = %21, %12, %7
  %24 = phi i32 [ %9, %7 ], [ %14, %12 ], [ %17, %21 ]
  ret i32 %24
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !297 {
  tail call void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !777
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !297 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !297 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  %4 = load ptr, ptr %3, align 8, !tbaa !177
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  %7 = load ptr, ptr %2, align 8, !tbaa !279
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = getelementptr inbounds ptr, ptr %8, i64 9
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %12, align 8, !tbaa !778
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 !prof !297 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner20resetPSVIElemContextEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1000) %0) local_unnamed_addr #11 align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  store i8 0, ptr %2, align 8, !tbaa !277
  %3 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  store i8 0, ptr %3, align 1, !tbaa !266
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 2
  store i32 -1, ptr %4, align 4, !tbaa !268
  %5 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !270
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 4
  store i32 -1, ptr %6, align 4, !tbaa !269
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !779 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !780
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !547 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !781
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !610 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !782
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 !prof !610 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i8 %5, ptr %0, align 8, !tbaa !783
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !417
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !440
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !422
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !419
  %10 = zext i32 %1 to i64
  %11 = load ptr, ptr %2, align 8, !tbaa !177
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %10) #14
  store ptr %14, ptr %8, align 8, !tbaa !422
  %15 = load i32, ptr %7, align 8, !tbaa !440
  %16 = zext i32 %15 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !417
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !784 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !784 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !785
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !786 {
  %2 = load i32, ptr %0, align 8, !tbaa !787
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 align 2 !prof !176 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #14
  tail call void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %5 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %6) #14
  %7 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  %8 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %7) #14
          to label %9 unwind label %17

9:                                                ; preds = %4
  %10 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  %11 = icmp eq i32 %3, -1
  br i1 %11, label %37, label %12

12:                                               ; preds = %9
  %13 = sext i32 %3 to i64
  %14 = getelementptr i16, ptr %1, i64 %13
  %15 = getelementptr i16, ptr %14, i64 1
  %16 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %16, label %25, label %21

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %56

19:                                               ; preds = %25, %36, %44, %53, %46
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %56

21:                                               ; preds = %12
  %22 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #14
  br i1 %24, label %27, label %25

25:                                               ; preds = %12, %23
  %26 = phi i32 [ 303, %23 ], [ 301, %12 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %26) #14
          to label %27 unwind label %19

27:                                               ; preds = %25, %21, %23
  %28 = icmp eq ptr %10, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = load i16, ptr %10, align 2, !tbaa !223
  %31 = icmp eq i16 %30, 0
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %27
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %37 unwind label %19

37:                                               ; preds = %36, %29, %9
  %38 = phi ptr [ %15, %29 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %9 ], [ %15, %36 ]
  %39 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #14
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #14
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %38, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %43, label %46, label %44

44:                                               ; preds = %42, %37
  %45 = phi i32 [ 302, %37 ], [ 304, %42 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %45) #14
          to label %46 unwind label %19

46:                                               ; preds = %44, %40, %42
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %48 = load ptr, ptr %47, align 8, !tbaa !247
  %49 = load ptr, ptr %48, align 8, !tbaa !177
  %50 = getelementptr inbounds ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(40) %48, ptr noundef %10) #14
          to label %53 unwind label %19

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %54, ptr noundef %38, i32 noundef %52) #14
          to label %55 unwind label %19

55:                                               ; preds = %53
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void

56:                                               ; preds = %19, %17
  %57 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  resume { ptr, i32 } %57
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator11setNillableEb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !789
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !790
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !177
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(56) %6) #13
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !791
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %14) #14
  %16 = load ptr, ptr %13, align 8, !tbaa !791
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %16) #14
          to label %17 unwind label %18

17:                                               ; preds = %12
  store ptr %15, ptr %5, align 8, !tbaa !790
  ret void

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #13
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !792
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !794 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !761
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !795 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !761
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !796

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !767
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !759
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !230
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !792
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !792
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

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
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 comdat align 2 !prof !176 {
  store i32 %1, ptr %0, align 8, !tbaa !797
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !800
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !801
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 3
  store ptr %5, ptr %10, align 8, !tbaa !802
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !803
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 5
  store ptr %6, ptr %12, align 8, !tbaa !804
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
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
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !637 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !805
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712XSDDOMParser11getSawFatalEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #0 comdat align 2 !prof !637 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !807, !range !205, !noundef !206
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !637 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !637 {
  %3 = load ptr, ptr %0, align 8, !tbaa !805
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !817

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(41) %3) #13
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !805
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !818 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !335
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !819 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !820, !range !205, !noundef !206
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !610 {
  %2 = load ptr, ptr %0, align 8, !tbaa !620
  %3 = load i32, ptr %2, align 8, !tbaa !286
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !678 {
  %2 = load ptr, ptr %0, align 8, !tbaa !620
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !291
  %5 = load i32, ptr %2, align 8, !tbaa !286
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !223
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !620
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 comdat align 2 !prof !821 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %0, align 8, !tbaa !822
  %6 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !824
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 !prof !825 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  tail call void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 !prof !825 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !318
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) #14
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !821 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !824
  %4 = load i8, ptr %0, align 8, !tbaa !822, !range !205, !noundef !206
  %5 = icmp ne i8 %4, 0
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %5) #14
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !821 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !826, !range !205, !noundef !206
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !827 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 %3, ptr %4, align 8, !tbaa !826
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 !prof !825 {
  %3 = load i32, ptr %0, align 8, !tbaa !828
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !829
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %29, !prof !830

7:                                                ; preds = %2, %14
  %8 = phi i32 [ %15, %14 ], [ %3, %2 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !223
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %11) #14
  %13 = load i32, ptr %0, align 8, !tbaa !828
  br i1 %12, label %14, label %18, !prof !831

14:                                               ; preds = %7
  %15 = add i32 %13, 1
  store i32 %15, ptr %0, align 8, !tbaa !828
  %16 = load i32, ptr %4, align 4, !tbaa !829
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %7, label %18, !prof !832, !llvm.loop !833

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %13, %7 ], [ %15, %14 ]
  %20 = icmp eq i32 %3, %19
  br i1 %20, label %29, label %21, !prof !834

21:                                               ; preds = %18
  %22 = sub i32 %19, %3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !835
  %26 = add nsw i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !835
  %27 = zext i32 %3 to i64
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %27
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %28, i32 noundef %22) #14
  br label %29

29:                                               ; preds = %2, %21, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !836 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !335
  %8 = and i8 %7, 8
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 !prof !825 {
  %4 = load i32, ptr %0, align 8, !tbaa !828
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !829
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %16, label %8, !prof !837

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !838, !range !205, !noundef !206
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %31, !prof !839

12:                                               ; preds = %8
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #14
  br i1 %13, label %14, label %31, !prof !839

14:                                               ; preds = %12
  %15 = load i32, ptr %0, align 8, !tbaa !828
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ %4, %3 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !223
  %21 = icmp eq i16 %20, %1
  br i1 %21, label %31, label %22, !prof !840

22:                                               ; preds = %16
  %23 = add i32 %17, 1
  store i32 %23, ptr %0, align 8, !tbaa !828
  store i16 %20, ptr %2, align 2, !tbaa !223
  %24 = and i16 %20, -8368
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26, !prof !841

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !835
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !835
  br label %31

30:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false) #14
  br label %31

31:                                               ; preds = %26, %30, %16, %12, %8
  %32 = phi i1 [ false, %8 ], [ false, %12 ], [ false, %16 ], [ true, %30 ], [ true, %26 ]
  ret i1 %32
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = load ptr, ptr %0, align 8, !tbaa !620
  %3 = load i32, ptr %2, align 8, !tbaa !286
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call noundef ptr @_ZNK11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !842 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !843

7:                                                ; preds = %3
  %8 = call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.4, i32 noundef 153, i32 noundef 50, ptr noundef %2) #14
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !541
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !540
  %8 = load ptr, ptr %0, align 8, !tbaa !537
  %9 = load ptr, ptr %5, align 8, !tbaa !177
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !200
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !539
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !230
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !541
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !546
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !230
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !844

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !845
  %4 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !847
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
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !176 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef16getNamespaceListEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !848
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !849 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.18", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !850
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !852 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.18", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !850
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !853

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.18", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !854
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.18", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !855
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!175}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!36 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!37 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!38 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!39 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1025276}
!40 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 1025276}
!41 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj, i64 7}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j, ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj, i64 191808}
!45 = !{ptr @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j, ptr @_ZN11xercesc_2_712KVStringPair8setValueEPKtj, i64 191808}
!46 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!47 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv, i64 1359931}
!48 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIbE16getMemoryManagerEv, i64 1}
!50 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, i64 1359930}
!52 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, i64 1359930}
!53 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, i64 4843157}
!54 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 4843156}
!55 = !{ptr @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 679966}
!56 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!57 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!58 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb, ptr @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb, i64 1359931}
!59 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE4sizeEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv, i64 679965}
!60 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!61 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!62 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!63 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!64 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!65 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!66 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @__cxa_allocate_exception, i64 1}
!67 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv, i64 1}
!68 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!69 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, i64 4843156}
!70 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!71 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!72 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!73 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!74 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!75 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb, ptr @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj, i64 1359937}
!76 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 832910}
!77 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, i64 24}
!78 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 1992715}
!79 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!80 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_, i64 78}
!81 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 79}
!82 = !{ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 95}
!83 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!84 = !{ptr @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 832911}
!85 = !{ptr @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 832911}
!86 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 503282}
!87 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 503282}
!88 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv, i64 190056}
!89 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 156}
!90 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 79}
!91 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE, i64 3}
!92 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!93 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, i64 2}
!94 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!95 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 2}
!96 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj, i64 46}
!97 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, ptr @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_, i64 45}
!98 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 5}
!99 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, i64 5}
!100 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!101 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!102 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!103 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, i64 6}
!104 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!105 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj, i64 3}
!106 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!107 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev, i64 3}
!108 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!109 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!110 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!111 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!112 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!113 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!114 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!115 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!116 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItED2Ev, ptr @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv, i64 2}
!117 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!118 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, i64 6}
!119 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, i64 3}
!120 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbED2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIbED2Ev, i64 3}
!121 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 6}
!122 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv, i64 190248}
!123 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 1}
!124 = !{ptr @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv, i64 496216}
!125 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!126 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!127 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!128 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!129 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPt, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 191815}
!130 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi, i64 349768}
!131 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 392072}
!132 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv, i64 1}
!133 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 885}
!134 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_, i64 884}
!135 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!136 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!137 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 108}
!138 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 10}
!139 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!140 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!141 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 201775}
!142 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 201775}
!143 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!144 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 349768}
!145 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 188992}
!146 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!147 = !{ptr @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!148 = !{ptr @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!149 = !{ptr @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb, ptr @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb, i64 3}
!150 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!151 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb, i64 3}
!152 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!153 = !{ptr @_ZN11xercesc_2_715SchemaValidator17setDatatypeBufferEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 598800}
!154 = !{ptr @_ZNK11xercesc_2_725IdentityConstraintHandler15getMatcherCountEv, ptr @_ZNK11xercesc_2_717XPathMatcherStack15getMatcherCountEv, i64 598800}
!155 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!156 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!157 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!158 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!159 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!160 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_, i64 1}
!161 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv, i64 4539474}
!162 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!163 = !{ptr @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, i64 2534293}
!164 = !{ptr @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, i64 2534293}
!165 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!166 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt, i64 41950389}
!167 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 596891}
!168 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2493}
!169 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1019518}
!170 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj, i64 917}
!171 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!172 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!173 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!174 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!175 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!176 = !{!"function_entry_count", i64 0}
!177 = !{!178, !178, i64 0}
!178 = !{!"vtable pointer", !179, i64 0}
!179 = !{!"Simple C++ TBAA"}
!180 = !{!181, !198, i64 780}
!181 = !{!"_ZTSN11xercesc_2_712SGXMLScannerE", !182, i64 0, !186, i64 776, !198, i64 780, !187, i64 784, !188, i64 792, !194, i64 800, !188, i64 840, !188, i64 848, !187, i64 856, !188, i64 864, !188, i64 872, !188, i64 880, !188, i64 888, !188, i64 896, !187, i64 904, !188, i64 912, !188, i64 920, !188, i64 928, !188, i64 936, !188, i64 944, !188, i64 952, !199, i64 960}
!182 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !183, i64 0, !184, i64 8, !186, i64 16, !186, i64 17, !186, i64 18, !186, i64 19, !186, i64 20, !186, i64 21, !186, i64 22, !186, i64 23, !186, i64 24, !186, i64 25, !186, i64 26, !186, i64 27, !186, i64 28, !186, i64 29, !186, i64 30, !186, i64 31, !186, i64 32, !186, i64 33, !186, i64 34, !186, i64 35, !186, i64 36, !186, i64 37, !186, i64 38, !187, i64 40, !187, i64 44, !187, i64 48, !187, i64 52, !187, i64 56, !187, i64 60, !187, i64 64, !187, i64 68, !188, i64 72, !187, i64 80, !187, i64 84, !187, i64 88, !187, i64 92, !187, i64 96, !188, i64 104, !188, i64 112, !188, i64 120, !188, i64 128, !188, i64 136, !188, i64 144, !188, i64 152, !188, i64 160, !188, i64 168, !186, i64 176, !189, i64 184, !188, i64 264, !192, i64 272, !188, i64 280, !188, i64 288, !188, i64 296, !188, i64 304, !188, i64 312, !188, i64 320, !188, i64 328, !188, i64 336, !188, i64 344, !191, i64 352, !188, i64 360, !193, i64 368, !194, i64 392, !194, i64 432, !194, i64 472, !194, i64 512, !194, i64 552, !194, i64 592, !194, i64 632, !195, i64 672}
!183 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!184 = !{!"long", !185, i64 0}
!185 = !{!"omnipotent char", !179, i64 0}
!186 = !{!"bool", !185, i64 0}
!187 = !{!"int", !185, i64 0}
!188 = !{!"any pointer", !185, i64 0}
!189 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !190, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !187, i64 40, !188, i64 48, !186, i64 56, !191, i64 60, !186, i64 64, !188, i64 72}
!190 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!191 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !185, i64 0}
!192 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !185, i64 0}
!193 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !187, i64 0, !188, i64 8, !188, i64 16}
!194 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !187, i64 0, !187, i64 4, !187, i64 8, !186, i64 12, !188, i64 16, !188, i64 24, !188, i64 32}
!195 = !{!"_ZTSN11xercesc_2_79ElemStackE", !187, i64 0, !187, i64 4, !196, i64 8, !188, i64 48, !187, i64 56, !187, i64 60, !187, i64 64, !187, i64 68, !187, i64 72, !187, i64 76, !187, i64 80, !188, i64 88, !188, i64 96}
!196 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !197, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !187, i64 32, !187, i64 36}
!197 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!198 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !185, i64 0}
!199 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !186, i64 0, !186, i64 1, !187, i64 4, !187, i64 8, !187, i64 12, !188, i64 16, !188, i64 24, !188, i64 32}
!200 = !{!187, !187, i64 0}
!201 = !{!182, !187, i64 96}
!202 = !{!182, !188, i64 120}
!203 = !{!182, !186, i64 21}
!204 = !{!182, !186, i64 24}
!205 = !{i8 0, i8 2}
!206 = !{}
!207 = !{!182, !188, i64 360}
!208 = distinct !{!208, !209}
!209 = !{!"llvm.loop.mustprogress"}
!210 = !{!211, !188, i64 0}
!211 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !188, i64 0, !187, i64 8, !187, i64 12, !187, i64 16, !188, i64 24, !188, i64 32, !187, i64 40, !187, i64 44, !186, i64 48, !186, i64 49, !186, i64 50, !187, i64 52, !188, i64 56, !187, i64 64, !188, i64 72, !187, i64 80, !187, i64 84}
!212 = !{!186, !186, i64 0}
!213 = !{!181, !188, i64 888}
!214 = !{!182, !188, i64 280}
!215 = !{!182, !188, i64 304}
!216 = !{!182, !192, i64 272}
!217 = !{!182, !186, i64 22}
!218 = !{!182, !187, i64 40}
!219 = !{!182, !186, i64 23}
!220 = !{!181, !186, i64 776}
!221 = !{!182, !188, i64 264}
!222 = !{!182, !186, i64 32}
!223 = !{!224, !224, i64 0}
!224 = !{!"short", !185, i64 0}
!225 = distinct !{!225, !209}
!226 = !{!181, !188, i64 840}
!227 = !{!182, !188, i64 344}
!228 = !{!182, !187, i64 48}
!229 = !{!182, !187, i64 44}
!230 = !{!188, !188, i64 0}
!231 = !{!182, !186, i64 29}
!232 = !{!182, !186, i64 30}
!233 = !{!181, !188, i64 936}
!234 = !{!181, !188, i64 872}
!235 = !{!182, !188, i64 288}
!236 = !{!182, !188, i64 296}
!237 = !{!182, !186, i64 25}
!238 = !{!182, !188, i64 144}
!239 = !{!182, !186, i64 19}
!240 = !{!182, !188, i64 136}
!241 = !{!182, !188, i64 320}
!242 = !{!182, !187, i64 52}
!243 = !{!182, !187, i64 56}
!244 = !{!182, !187, i64 60}
!245 = !{!182, !187, i64 64}
!246 = !{!182, !187, i64 68}
!247 = !{!182, !188, i64 312}
!248 = !{!182, !186, i64 18}
!249 = !{!182, !186, i64 26}
!250 = !{!181, !188, i64 944}
!251 = !{!181, !188, i64 952}
!252 = !{!181, !188, i64 880}
!253 = !{!182, !186, i64 17}
!254 = !{!181, !187, i64 904}
!255 = !{!182, !187, i64 88}
!256 = !{!181, !188, i64 912}
!257 = !{!181, !188, i64 920}
!258 = !{!259, !188, i64 0}
!259 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !188, i64 0, !188, i64 8, !184, i64 16, !184, i64 24}
!260 = !{!182, !186, i64 37}
!261 = !{!182, !186, i64 16}
!262 = !{!181, !188, i64 848}
!263 = !{!182, !188, i64 328}
!264 = !{!182, !188, i64 336}
!265 = !{!181, !188, i64 896}
!266 = !{!181, !186, i64 961}
!267 = !{!182, !188, i64 160}
!268 = !{!181, !187, i64 964}
!269 = !{!181, !187, i64 972}
!270 = !{!181, !187, i64 968}
!271 = !{!181, !187, i64 784}
!272 = !{!181, !188, i64 792}
!273 = !{!181, !188, i64 928}
!274 = !{!182, !188, i64 104}
!275 = !{!181, !188, i64 984}
!276 = !{!181, !188, i64 992}
!277 = !{!181, !186, i64 960}
!278 = !{!181, !188, i64 976}
!279 = !{!182, !188, i64 168}
!280 = !{!211, !187, i64 8}
!281 = !{!211, !188, i64 24}
!282 = !{!211, !187, i64 16}
!283 = !{!211, !187, i64 84}
!284 = !{!181, !187, i64 856}
!285 = !{!"function_entry_count", i64 496321}
!286 = !{!194, !187, i64 0}
!287 = !{!194, !187, i64 4}
!288 = !{!194, !187, i64 8}
!289 = !{!194, !186, i64 12}
!290 = !{!194, !188, i64 16}
!291 = !{!194, !188, i64 32}
!292 = !{!181, !188, i64 864}
!293 = !{!294, !188, i64 0}
!294 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_12SGXMLScannerEEE", !188, i64 0, !185, i64 8}
!295 = !{!294, !185, i64 8}
!296 = !{!"function_entry_count", i64 5836268}
!297 = !{!"function_entry_count", i64 3}
!298 = !{!299, !188, i64 0}
!299 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEE", !188, i64 0, !185, i64 8}
!300 = !{!299, !185, i64 8}
!301 = distinct !{!301, !209}
!302 = distinct !{!302, !209}
!303 = !{!304, !305, i64 8}
!304 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !305, i64 8, !188, i64 16, !187, i64 24, !188, i64 32, !188, i64 40}
!305 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !185, i64 0}
!306 = !{!304, !188, i64 32}
!307 = !{!"branch_weights", i32 1, i32 4}
!308 = !{!309, !188, i64 0}
!309 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !188, i64 0, !187, i64 8}
!310 = !{!"function_entry_count", i64 2194501}
!311 = !{!195, !187, i64 60}
!312 = !{!"function_entry_count", i64 1668291}
!313 = !{!314, !188, i64 16}
!314 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !197, i64 0, !188, i64 8, !188, i64 16, !315, i64 24, !187, i64 28, !186, i64 32}
!315 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !185, i64 0}
!316 = distinct !{!316, !209}
!317 = !{!"function_entry_count", i64 4926602}
!318 = !{!189, !188, i64 16}
!319 = !{!320, !188, i64 32}
!320 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40}
!321 = !{!304, !188, i64 40}
!322 = !{!323, !187, i64 163904}
!323 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !187, i64 0, !185, i64 4, !187, i64 32772, !185, i64 32776, !185, i64 49160, !184, i64 114696, !184, i64 114704, !324, i64 114712, !188, i64 114720, !186, i64 114728, !186, i64 114729, !188, i64 114736, !187, i64 114744, !185, i64 114748, !187, i64 163900, !187, i64 163904, !325, i64 163908, !186, i64 163912, !326, i64 163916, !187, i64 163920, !186, i64 163924, !186, i64 163925, !188, i64 163928, !188, i64 163936, !186, i64 163944, !186, i64 163945, !188, i64 163952, !327, i64 163960, !188, i64 163968, !186, i64 163976, !191, i64 163980, !188, i64 163984}
!324 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !185, i64 0}
!325 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !185, i64 0}
!326 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !185, i64 0}
!327 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !185, i64 0}
!328 = distinct !{!328, !209}
!329 = !{!"function_entry_count", i64 833461}
!330 = !{!331, !187, i64 12}
!331 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !186, i64 8, !187, i64 12, !187, i64 16, !188, i64 24, !188, i64 32}
!332 = !{!"function_entry_count", i64 7478295}
!333 = !{!"function_entry_count", i64 5190970}
!334 = !{!323, !188, i64 163968}
!335 = !{!185, !185, i64 0}
!336 = !{!"function_entry_count", i64 1025888}
!337 = !{!"function_entry_count", i64 1025276}
!338 = !{!"function_entry_count", i64 2728090}
!339 = !{!"function_entry_count", i64 10769804}
!340 = distinct !{!340, !209}
!341 = distinct !{!341, !209}
!342 = !{!"function_entry_count", i64 3529098}
!343 = !{!"function_entry_count", i64 7}
!344 = !{!331, !188, i64 24}
!345 = !{!"function_entry_count", i64 574788}
!346 = !{!"branch_weights", i32 574789, i32 1}
!347 = !{!331, !188, i64 32}
!348 = !{!"function_entry_count", i64 191808}
!349 = distinct !{!349, !209}
!350 = !{!"function_entry_count", i64 8985736}
!351 = !{!331, !187, i64 16}
!352 = !{!"branch_weights", i32 1, i32 8}
!353 = distinct !{!353, !209}
!354 = !{!"function_entry_count", i64 191885}
!355 = !{!356, !184, i64 8}
!356 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !197, i64 0, !184, i64 8, !184, i64 16, !188, i64 24, !188, i64 32, !188, i64 40}
!357 = !{!"branch_weights", i32 191806, i32 81}
!358 = !{!356, !188, i64 24}
!359 = !{!356, !188, i64 40}
!360 = !{!356, !184, i64 16}
!361 = !{!"branch_weights", i32 191803, i32 84}
!362 = !{!356, !188, i64 32}
!363 = !{!"function_entry_count", i64 680084}
!364 = !{!195, !188, i64 48}
!365 = !{!211, !187, i64 64}
!366 = !{!"function_entry_count", i64 679966}
!367 = !{!211, !188, i64 72}
!368 = !{!"function_entry_count", i64 680336}
!369 = !{!"function_entry_count", i64 1359931}
!370 = !{!"branch_weights", i32 1, i32 1359932}
!371 = !{!"function_entry_count", i64 1666355}
!372 = !{!314, !315, i64 24}
!373 = !{!"function_entry_count", i64 4843157}
!374 = !{!375, !188, i64 168}
!375 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !376, i64 0, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !186, i64 72, !188, i64 80, !188, i64 88, !194, i64 96, !186, i64 136, !186, i64 137, !377, i64 144, !188, i64 168, !188, i64 176, !186, i64 184, !186, i64 185}
!376 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32}
!377 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !186, i64 8, !188, i64 16}
!378 = !{!"branch_weights", i32 1, i32 4843158}
!379 = !{!"function_entry_count", i64 1272296}
!380 = !{!375, !188, i64 80}
!381 = !{!"function_entry_count", i64 1231717351}
!382 = !{!"branch_weights", i32 621, i32 -1469098093}
!383 = !{!"branch_weights", i32 408901017, i32 1}
!384 = !{!"branch_weights", i32 267, i32 4}
!385 = !{!"branch_weights", i32 156, i32 112}
!386 = !{!"branch_weights", i32 1, i32 112}
!387 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!388 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!389 = distinct !{!389, !209}
!390 = !{!"function_entry_count", i64 1856984}
!391 = !{!375, !186, i64 184}
!392 = !{!"function_entry_count", i64 874884}
!393 = !{!394, !395, i64 28}
!394 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !197, i64 0, !186, i64 8, !186, i64 9, !186, i64 10, !186, i64 11, !224, i64 12, !187, i64 16, !187, i64 20, !187, i64 24, !395, i64 28, !396, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96}
!395 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !185, i64 0}
!396 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !185, i64 0}
!397 = !{!375, !186, i64 185}
!398 = !{!"function_entry_count", i64 336748}
!399 = !{!400, !188, i64 72}
!400 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !314, i64 0, !401, i64 36, !402, i64 40, !403, i64 44, !404, i64 48, !187, i64 52, !187, i64 56, !187, i64 60, !187, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112, !188, i64 120, !188, i64 128, !188, i64 136, !186, i64 144, !186, i64 145, !186, i64 146}
!401 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !185, i64 0}
!402 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !185, i64 0}
!403 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !185, i64 0}
!404 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !185, i64 0}
!405 = !{!"function_entry_count", i64 695}
!406 = !{!"function_entry_count", i64 190774}
!407 = !{!"function_entry_count", i64 833744}
!408 = !{!"function_entry_count", i64 211020}
!409 = !{!410, !188, i64 24}
!410 = !{!"_ZTSN11xercesc_2_75QNameE", !197, i64 0, !187, i64 8, !187, i64 12, !187, i64 16, !187, i64 20, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48}
!411 = !{!"function_entry_count", i64 679965}
!412 = !{!"function_entry_count", i64 833459}
!413 = !{!211, !188, i64 56}
!414 = !{!"function_entry_count", i64 833848}
!415 = !{!211, !186, i64 48}
!416 = !{!"function_entry_count", i64 2039896}
!417 = !{!418, !187, i64 4}
!418 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !186, i64 0, !187, i64 4, !187, i64 8, !188, i64 16, !188, i64 24}
!419 = !{!418, !188, i64 24}
!420 = !{!"function_entry_count", i64 1359937}
!421 = !{!"branch_weights", i32 1359938, i32 1}
!422 = !{!418, !188, i64 16}
!423 = !{!"branch_weights", i32 1359932, i32 1}
!424 = distinct !{!424, !209}
!425 = !{!"function_entry_count", i64 10519225}
!426 = !{!427, !187, i64 4}
!427 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !186, i64 0, !187, i64 4, !187, i64 8, !188, i64 16, !188, i64 24}
!428 = !{!427, !188, i64 24}
!429 = !{!"branch_weights", i32 4843158, i32 1}
!430 = !{!427, !188, i64 16}
!431 = !{!"function_entry_count", i64 2718768}
!432 = !{!"branch_weights", i32 1, i32 2718769}
!433 = !{!"branch_weights", i32 2718765, i32 5}
!434 = !{!"function_entry_count", i64 789922}
!435 = !{!"branch_weights", i32 1, i32 789923}
!436 = !{!"branch_weights", i32 285, i32 789639}
!437 = !{!"branch_weights", i32 789639, i32 41628304}
!438 = distinct !{!438, !209}
!439 = !{!"branch_weights", i32 789637, i32 3}
!440 = !{!418, !187, i64 8}
!441 = !{!"branch_weights", i32 3, i32 1359936}
!442 = !{!"branch_weights", i32 1, i32 191}
!443 = !{!"branch_weights", i32 191, i32 1025}
!444 = distinct !{!444, !209}
!445 = !{!"function_entry_count", i64 1169658}
!446 = !{!400, !188, i64 80}
!447 = !{!"branch_weights", i32 336749, i32 832911}
!448 = !{!400, !401, i64 36}
!449 = !{!"function_entry_count", i64 3338153}
!450 = !{!451, !187, i64 32}
!451 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !197, i64 0, !186, i64 8, !186, i64 9, !186, i64 10, !186, i64 11, !186, i64 12, !187, i64 16, !187, i64 20, !187, i64 24, !187, i64 28, !187, i64 32, !187, i64 36, !187, i64 40, !187, i64 44, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112, !188, i64 120, !188, i64 128, !188, i64 136, !188, i64 144, !188, i64 152, !188, i64 160, !188, i64 168}
!452 = !{!"function_entry_count", i64 832911}
!453 = !{!"function_entry_count", i64 1176128}
!454 = !{!451, !188, i64 136}
!455 = !{!"branch_weights", i32 25, i32 1176105}
!456 = !{!451, !188, i64 96}
!457 = !{!"branch_weights", i32 1, i32 25}
!458 = !{!"function_entry_count", i64 832910}
!459 = !{!211, !187, i64 52}
!460 = !{!"function_entry_count", i64 833852}
!461 = distinct !{!461, !209}
!462 = distinct !{!462, !209}
!463 = distinct !{!463, !209}
!464 = distinct !{!464, !209}
!465 = !{!"function_entry_count", i64 1992715}
!466 = !{!"branch_weights", i32 1159753, i32 832964}
!467 = !{!468, !188, i64 0}
!468 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !188, i64 0, !188, i64 8, !188, i64 16, !187, i64 24, !187, i64 28}
!469 = !{!"function_entry_count", i64 612}
!470 = !{!"function_entry_count", i64 173}
!471 = !{!314, !187, i64 28}
!472 = !{!"function_entry_count", i64 79}
!473 = !{!"branch_weights", i32 80, i32 1}
!474 = !{!475, !186, i64 8}
!475 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !188, i64 0, !186, i64 8, !188, i64 16, !187, i64 24, !188, i64 32, !188, i64 40, !187, i64 48, !187, i64 52}
!476 = !{!468, !188, i64 16}
!477 = !{!468, !187, i64 24}
!478 = !{!468, !187, i64 28}
!479 = !{!475, !188, i64 0}
!480 = !{!475, !188, i64 16}
!481 = !{!475, !187, i64 52}
!482 = !{!475, !187, i64 48}
!483 = !{!"branch_weights", i32 1, i32 80}
!484 = !{!475, !188, i64 40}
!485 = !{!"function_entry_count", i64 95}
!486 = !{!"function_entry_count", i64 558789}
!487 = !{!"branch_weights", i32 158605, i32 400186}
!488 = !{!211, !187, i64 80}
!489 = !{!"branch_weights", i32 832896, i32 17}
!490 = !{!195, !188, i64 96}
!491 = !{!"function_entry_count", i64 496241}
!492 = !{!451, !187, i64 28}
!493 = !{!"function_entry_count", i64 496163}
!494 = !{!451, !188, i64 48}
!495 = !{!"function_entry_count", i64 503282}
!496 = distinct !{!496, !209}
!497 = !{!"function_entry_count", i64 1035025}
!498 = !{!499, !187, i64 32}
!499 = !{!"_ZTSN11xercesc_2_717PSVIAttributeListE", !188, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !187, i64 32}
!500 = distinct !{!500, !209}
!501 = distinct !{!501, !209}
!502 = !{!"function_entry_count", i64 190056}
!503 = !{!"branch_weights", i32 190057, i32 1}
!504 = !{!505, !187, i64 24}
!505 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !188, i64 0, !186, i64 8, !188, i64 16, !187, i64 24, !187, i64 28, !188, i64 32}
!506 = !{!505, !187, i64 28}
!507 = !{!505, !188, i64 16}
!508 = !{!509, !188, i64 8}
!509 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !188, i64 0, !188, i64 8, !188, i64 16, !187, i64 24}
!510 = !{!505, !186, i64 8}
!511 = !{!509, !188, i64 0}
!512 = !{!505, !188, i64 0}
!513 = distinct !{!513, !209}
!514 = distinct !{!514, !209}
!515 = !{!"function_entry_count", i64 2192223}
!516 = !{!410, !188, i64 32}
!517 = !{!"function_entry_count", i64 6553673}
!518 = !{!410, !187, i64 20}
!519 = !{!"function_entry_count", i64 1992794}
!520 = !{!475, !188, i64 32}
!521 = !{!475, !187, i64 24}
!522 = !{!"branch_weights", i32 1, i32 1159831}
!523 = !{!"branch_weights", i32 2435527, i32 1}
!524 = !{!"branch_weights", i32 1030785, i32 1404743}
!525 = !{!"branch_weights", i32 832964, i32 197822}
!526 = !{!"branch_weights", i32 1159831, i32 1275696}
!527 = distinct !{!527, !209}
!528 = !{!468, !188, i64 8}
!529 = !{!"function_entry_count", i64 2453164456}
!530 = !{!"branch_weights", i32 1, i32 -1841802839}
!531 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!532 = !{!"branch_weights", i32 408669070, i32 -279908792}
!533 = distinct !{!533, !209}
!534 = !{!535, !186, i64 1}
!535 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !186, i64 0, !186, i64 1, !186, i64 2, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72}
!536 = !{!"function_entry_count", i64 2}
!537 = !{!538, !188, i64 0}
!538 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfItEE", !188, i64 0, !188, i64 8, !187, i64 16, !188, i64 24}
!539 = !{!538, !188, i64 8}
!540 = !{!538, !187, i64 16}
!541 = !{!538, !188, i64 24}
!542 = !{!"function_entry_count", i64 46}
!543 = !{!"branch_weights", i32 47, i32 1}
!544 = !{!545, !224, i64 0}
!545 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemItEE", !224, i64 0, !188, i64 8, !188, i64 16}
!546 = !{!545, !188, i64 16}
!547 = !{!"function_entry_count", i64 5}
!548 = !{!"branch_weights", i32 1, i32 6}
!549 = !{!"function_entry_count", i64 6}
!550 = !{!551, !188, i64 0}
!551 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !188, i64 0, !186, i64 8, !188, i64 16, !187, i64 24, !187, i64 28, !187, i64 32, !188, i64 40}
!552 = !{!551, !186, i64 8}
!553 = !{!551, !188, i64 16}
!554 = !{!551, !187, i64 24}
!555 = !{!551, !187, i64 28}
!556 = !{!551, !187, i64 32}
!557 = !{!551, !188, i64 40}
!558 = !{!505, !188, i64 32}
!559 = !{!331, !186, i64 8}
!560 = !{!"branch_weights", i32 1, i32 127}
!561 = !{!"branch_weights", i32 127, i32 2977}
!562 = distinct !{!562, !209}
!563 = !{!"branch_weights", i32 129, i32 127}
!564 = distinct !{!564, !209}
!565 = distinct !{!565, !209}
!566 = distinct !{!566, !209}
!567 = distinct !{!567, !209}
!568 = !{!"branch_weights", i32 1, i32 3}
!569 = !{!"branch_weights", i32 191, i32 2881}
!570 = distinct !{!570, !209}
!571 = !{!"function_entry_count", i64 963}
!572 = !{!"branch_weights", i32 1, i32 187}
!573 = !{!"branch_weights", i32 918, i32 335}
!574 = !{!"branch_weights", i32 187, i32 4821}
!575 = distinct !{!575, !209}
!576 = !{!545, !188, i64 8}
!577 = !{!"branch_weights", i32 191, i32 9601}
!578 = distinct !{!578, !209}
!579 = !{!"branch_weights", i32 1, i32 7}
!580 = !{!"branch_weights", i32 1, i32 223}
!581 = !{!"branch_weights", i32 223, i32 13057}
!582 = distinct !{!582, !209}
!583 = !{!"branch_weights", i32 127, i32 577}
!584 = distinct !{!584, !209}
!585 = !{!499, !188, i64 8}
!586 = !{!499, !188, i64 16}
!587 = !{!499, !188, i64 24}
!588 = !{!"branch_weights", i32 1, i32 47}
!589 = !{!"branch_weights", i32 47, i32 0}
!590 = distinct !{!590, !209}
!591 = !{!"branch_weights", i32 2881, i32 191}
!592 = distinct !{!592, !209}
!593 = !{!"branch_weights", i32 444, i32 80}
!594 = !{!"branch_weights", i32 80, i32 0}
!595 = distinct !{!595, !209}
!596 = !{!"branch_weights", i32 8257, i32 127}
!597 = distinct !{!597, !209}
!598 = !{!"function_entry_count", i64 190248}
!599 = !{!"branch_weights", i32 189545, i32 705}
!600 = !{!"branch_weights", i32 1, i32 704}
!601 = !{!"branch_weights", i32 4167, i32 886}
!602 = !{!603, !188, i64 8}
!603 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !188, i64 0, !188, i64 8, !188, i64 16}
!604 = !{!"branch_weights", i32 886, i32 1}
!605 = !{!603, !188, i64 0}
!606 = !{!"branch_weights", i32 886, i32 0}
!607 = distinct !{!607, !209}
!608 = !{!"branch_weights", i32 4349, i32 704}
!609 = distinct !{!609, !209}
!610 = !{!"function_entry_count", i64 4}
!611 = !{!"function_entry_count", i64 496216}
!612 = !{!451, !188, i64 128}
!613 = !{!"function_entry_count", i64 190440}
!614 = !{!615, !187, i64 12}
!615 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !186, i64 8, !187, i64 12, !187, i64 16, !188, i64 24, !188, i64 32}
!616 = !{!"function_entry_count", i64 379609}
!617 = !{!618, !188, i64 8}
!618 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !188, i64 0, !188, i64 8}
!619 = !{!"function_entry_count", i64 379607}
!620 = !{!618, !188, i64 0}
!621 = !{!"function_entry_count", i64 191815}
!622 = !{!"branch_weights", i32 191816, i32 1}
!623 = !{!"function_entry_count", i64 574795}
!624 = !{!625, !188, i64 0}
!625 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !188, i64 0, !188, i64 8}
!626 = !{!625, !188, i64 8}
!627 = !{!"function_entry_count", i64 349768}
!628 = !{!"function_entry_count", i64 191162}
!629 = !{!451, !188, i64 104}
!630 = !{!400, !188, i64 120}
!631 = !{!632, !635, i64 16}
!632 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !197, i64 0, !633, i64 8, !634, i64 12, !635, i64 16, !186, i64 20, !186, i64 21, !187, i64 24, !188, i64 32, !188, i64 40, !188, i64 48}
!633 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !185, i64 0}
!634 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !185, i64 0}
!635 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !185, i64 0}
!636 = distinct !{!636, !209}
!637 = !{!"function_entry_count", i64 1}
!638 = !{!639, !188, i64 48}
!639 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !640, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112, !188, i64 120, !186, i64 128, !641, i64 136}
!640 = !{!"_ZTSN11xercesc_2_77GrammarE", !197, i64 0}
!641 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !197, i64 0, !188, i64 8, !188, i64 16}
!642 = !{!643, !188, i64 0}
!643 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !188, i64 0, !188, i64 8, !188, i64 16}
!644 = !{!"function_entry_count", i64 392072}
!645 = !{!"branch_weights", i32 25, i32 392049}
!646 = !{!"function_entry_count", i64 885}
!647 = !{!603, !188, i64 16}
!648 = !{!509, !188, i64 16}
!649 = !{!509, !187, i64 24}
!650 = !{!"function_entry_count", i64 7992849}
!651 = !{!"branch_weights", i32 1, i32 7992850}
!652 = distinct !{!652, !209}
!653 = distinct !{!653, !209}
!654 = !{!"function_entry_count", i64 191820}
!655 = !{!"function_entry_count", i64 550665}
!656 = !{!657, !188, i64 80}
!657 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !632, i64 0, !187, i64 56, !403, i64 60, !404, i64 64, !402, i64 68, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112}
!658 = !{!"function_entry_count", i64 1205039}
!659 = !{!394, !224, i64 12}
!660 = !{!375, !188, i64 176}
!661 = !{!"function_entry_count", i64 108}
!662 = !{!"branch_weights", i32 1, i32 109}
!663 = !{!664, !188, i64 0}
!664 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !188, i64 0, !188, i64 8, !188, i64 16}
!665 = !{!"function_entry_count", i64 593014}
!666 = !{!632, !634, i64 12}
!667 = !{!499, !188, i64 0}
!668 = !{!"function_entry_count", i64 19496}
!669 = !{!632, !188, i64 32}
!670 = !{!671, !676, i64 64}
!671 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !672, i64 0, !187, i64 56, !187, i64 60, !676, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112, !188, i64 120}
!672 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !673, i64 0, !675, i64 36, !224, i64 40, !188, i64 48}
!673 = !{!"_ZTSN11xercesc_2_78XSObjectE", !674, i64 8, !188, i64 16, !188, i64 24, !187, i64 32}
!674 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !185, i64 0}
!675 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !185, i64 0}
!676 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !185, i64 0}
!677 = distinct !{!677, !209}
!678 = !{!"function_entry_count", i64 10}
!679 = !{!615, !188, i64 24}
!680 = !{!"function_entry_count", i64 201935}
!681 = !{!"branch_weights", i32 201936, i32 1}
!682 = !{!615, !188, i64 32}
!683 = !{!"function_entry_count", i64 201775}
!684 = !{!685, !188, i64 24}
!685 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !186, i64 0, !634, i64 4, !187, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !186, i64 48}
!686 = !{!685, !634, i64 4}
!687 = !{!685, !186, i64 48}
!688 = !{!685, !188, i64 40}
!689 = !{!685, !186, i64 0}
!690 = !{!"function_entry_count", i64 360600}
!691 = !{!685, !188, i64 16}
!692 = !{!"function_entry_count", i64 243874}
!693 = !{!"function_entry_count", i64 401820}
!694 = !{!632, !633, i64 8}
!695 = !{!"function_entry_count", i64 200910}
!696 = !{!632, !186, i64 21}
!697 = !{!"function_entry_count", i64 9774}
!698 = !{!657, !188, i64 72}
!699 = !{!700, !701, i64 48}
!700 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !701, i64 48, !702, i64 52, !186, i64 56, !188, i64 64, !188, i64 72}
!701 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !185, i64 0}
!702 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !185, i64 0}
!703 = !{!"function_entry_count", i64 496246}
!704 = !{!705, !187, i64 28}
!705 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !188, i64 0, !186, i64 8, !188, i64 16, !187, i64 24, !187, i64 28, !188, i64 32}
!706 = !{!"branch_weights", i32 14, i32 349756}
!707 = !{!708, !188, i64 0}
!708 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !188, i64 0, !188, i64 8, !188, i64 16, !187, i64 24}
!709 = !{!"function_entry_count", i64 349781}
!710 = !{!705, !188, i64 32}
!711 = !{!705, !187, i64 24}
!712 = !{!705, !188, i64 0}
!713 = !{!705, !188, i64 16}
!714 = !{!"branch_weights", i32 1, i32 215}
!715 = !{!708, !187, i64 24}
!716 = !{!"branch_weights", i32 349756, i32 1}
!717 = !{!708, !188, i64 16}
!718 = !{!"branch_weights", i32 215, i32 2797833}
!719 = distinct !{!719, !209}
!720 = !{!721, !188, i64 40}
!721 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !188, i64 0, !186, i64 8, !188, i64 16, !187, i64 24, !187, i64 28, !187, i64 32, !188, i64 40}
!722 = !{!721, !187, i64 24}
!723 = !{!721, !188, i64 0}
!724 = !{!721, !188, i64 16}
!725 = !{!643, !188, i64 16}
!726 = distinct !{!726, !209}
!727 = !{!"function_entry_count", i64 392957}
!728 = !{!"branch_weights", i32 1, i32 909}
!729 = !{!"branch_weights", i32 392049, i32 30}
!730 = !{!"branch_weights", i32 909, i32 391169}
!731 = distinct !{!731, !209}
!732 = distinct !{!732, !209}
!733 = distinct !{!733, !209}
!734 = !{!735, !188, i64 0}
!735 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !188, i64 0, !188, i64 8}
!736 = !{!735, !188, i64 8}
!737 = distinct !{!737, !209}
!738 = distinct !{!738, !209}
!739 = distinct !{!739, !209}
!740 = distinct !{!740, !209}
!741 = !{!742, !188, i64 0}
!742 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEE", !188, i64 0, !188, i64 8}
!743 = !{!742, !188, i64 8}
!744 = !{!"function_entry_count", i64 170}
!745 = !{!746, !188, i64 40}
!746 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !188, i64 0, !186, i64 8, !188, i64 16, !187, i64 24, !187, i64 28, !187, i64 32, !188, i64 40}
!747 = !{!746, !187, i64 24}
!748 = !{!746, !188, i64 0}
!749 = !{!746, !188, i64 16}
!750 = !{!"branch_weights", i32 1, i32 251}
!751 = !{!664, !188, i64 16}
!752 = !{!"branch_weights", i32 109, i32 30}
!753 = !{!"branch_weights", i32 251, i32 301}
!754 = distinct !{!754, !209}
!755 = !{!756, !187, i64 12}
!756 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEEE", !186, i64 8, !187, i64 12, !187, i64 16, !188, i64 24, !188, i64 32}
!757 = !{!756, !188, i64 24}
!758 = !{!"function_entry_count", i64 188992}
!759 = !{!760, !188, i64 24}
!760 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !186, i64 8, !187, i64 12, !187, i64 16, !188, i64 24, !188, i64 32}
!761 = !{!760, !187, i64 12}
!762 = !{!756, !188, i64 32}
!763 = !{!756, !187, i64 16}
!764 = distinct !{!764, !209}
!765 = !{!760, !187, i64 16}
!766 = !{!"branch_weights", i32 10, i32 188984}
!767 = !{!760, !188, i64 32}
!768 = !{!"branch_weights", i32 1, i32 159}
!769 = !{!"branch_weights", i32 159, i32 1}
!770 = !{!"branch_weights", i32 159, i32 9329}
!771 = distinct !{!771, !209}
!772 = !{!615, !187, i64 16}
!773 = !{!"branch_weights", i32 1, i32 11}
!774 = distinct !{!774, !209}
!775 = !{!"branch_weights", i32 191816, i32 52060}
!776 = !{!"branch_weights", i32 1, i32 52060}
!777 = !{!375, !188, i64 56}
!778 = !{!182, !186, i64 176}
!779 = !{!"function_entry_count", i64 12}
!780 = !{!376, !188, i64 16}
!781 = !{!377, !188, i64 16}
!782 = !{!377, !186, i64 8}
!783 = !{!418, !186, i64 0}
!784 = !{!"function_entry_count", i64 598800}
!785 = !{!320, !188, i64 24}
!786 = !{!"function_entry_count", i64 3930443}
!787 = !{!788, !187, i64 0}
!788 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !187, i64 0, !188, i64 8, !188, i64 16}
!789 = !{!375, !186, i64 72}
!790 = !{!375, !188, i64 64}
!791 = !{!375, !188, i64 40}
!792 = !{!793, !188, i64 0}
!793 = !{!"_ZTSN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEE", !188, i64 0}
!794 = !{!"function_entry_count", i64 240751}
!795 = !{!"function_entry_count", i64 2444437052}
!796 = !{!"branch_weights", i32 -1850530243, i32 1}
!797 = !{!798, !799, i64 0}
!798 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !799, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40}
!799 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !185, i64 0}
!800 = !{!798, !188, i64 8}
!801 = !{!798, !188, i64 16}
!802 = !{!798, !188, i64 24}
!803 = !{!798, !188, i64 32}
!804 = !{!798, !188, i64 40}
!805 = !{!806, !188, i64 0}
!806 = !{!"_ZTSN11xercesc_2_77JanitorINS_11InputSourceEEE", !188, i64 0}
!807 = !{!808, !186, i64 224}
!808 = !{!"_ZTSN11xercesc_2_712XSDDOMParserE", !809, i64 0, !186, i64 224, !187, i64 228, !187, i64 232, !187, i64 236, !188, i64 240, !188, i64 248, !188, i64 256, !194, i64 264, !377, i64 304, !816, i64 328}
!809 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !810, i64 0, !188, i64 200, !188, i64 208, !188, i64 216}
!810 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !811, i64 0, !812, i64 8, !813, i64 16, !814, i64 24, !815, i64 32, !186, i64 40, !186, i64 41, !186, i64 42, !186, i64 43, !186, i64 44, !186, i64 45, !186, i64 46, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112, !188, i64 120, !188, i64 128, !188, i64 136, !188, i64 144, !188, i64 152, !193, i64 160, !188, i64 184, !188, i64 192}
!811 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!812 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!813 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!814 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!815 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!816 = !{!"_ZTSN11xercesc_2_710XSDLocatorE", !190, i64 0, !184, i64 8, !184, i64 16, !188, i64 24, !188, i64 32}
!817 = !{!"branch_weights", i32 1, i32 2}
!818 = !{!"function_entry_count", i64 3115354}
!819 = !{!"function_entry_count", i64 1275875}
!820 = !{!314, !186, i64 32}
!821 = !{!"function_entry_count", i64 4539474}
!822 = !{!823, !186, i64 0}
!823 = !{!"_ZTSN11xercesc_2_715ThrowEOEJanitorE", !186, i64 0, !188, i64 8}
!824 = !{!823, !188, i64 8}
!825 = !{!"function_entry_count", i64 2534293}
!826 = !{!189, !186, i64 56}
!827 = !{!"function_entry_count", i64 9078948}
!828 = !{!323, !187, i64 0}
!829 = !{!323, !187, i64 32772}
!830 = !{!"branch_weights", i32 2493, i32 1}
!831 = !{!"branch_weights", i32 39432941, i32 2531801}
!832 = !{!"branch_weights", i32 41962248, i32 2493}
!833 = distinct !{!833, !209}
!834 = !{!"branch_weights", i32 1641493687, i32 505989961}
!835 = !{!323, !184, i64 114696}
!836 = !{!"function_entry_count", i64 41964740}
!837 = !{!"branch_weights", i32 2531801, i32 2494}
!838 = !{!323, !186, i64 114729}
!839 = !{!"branch_weights", i32 2494, i32 1}
!840 = !{!"branch_weights", i32 1512650, i32 1021645}
!841 = !{!"branch_weights", i32 1019521, i32 2125}
!842 = !{!"function_entry_count", i64 917}
!843 = !{!"branch_weights", i32 1, i32 918}
!844 = distinct !{!844, !209}
!845 = !{!846, !188, i64 0}
!846 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !188, i64 0, !188, i64 8}
!847 = !{!846, !188, i64 8}
!848 = !{!657, !188, i64 104}
!849 = !{!"function_entry_count", i64 832990}
!850 = !{!851, !187, i64 4}
!851 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !186, i64 0, !187, i64 4, !187, i64 8, !188, i64 16, !188, i64 24}
!852 = !{!"function_entry_count", i64 832914}
!853 = !{!"branch_weights", i32 832915, i32 1}
!854 = !{!851, !188, i64 24}
!855 = !{!851, !188, i64 16}
