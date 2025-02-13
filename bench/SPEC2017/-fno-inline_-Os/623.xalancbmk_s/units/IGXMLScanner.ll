; ModuleID = 'IGXMLScanner.cpp'
source_filename = "IGXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::IGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"struct.xercesc_2_7::PSVIElemContext" = type { i8, i8, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall.0" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::DTDScanner" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::Janitor.7" = type { ptr }
%"class.xercesc_2_7::Janitor.8" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraintHandler" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::PSVIAttributeList" = type <{ ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.1" }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::ValueStackOf.5" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.6" }
%"class.xercesc_2_7::ValueVectorOf.6" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.10" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::ArrayJanitor.11" = type { ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712IGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712IGXMLScanner7getNameEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEED2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv = comdat any

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

$_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv = comdat any

$_ZN11xercesc_2_725IdentityConstraintHandler11endDocumentEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_715ValueStoreCache11endDocumentEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev = comdat any

$_ZN11xercesc_2_717PSVIAttributeListD2Ev = comdat any

$_ZN11xercesc_2_712ValueStackOfIbED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbED2Ev = comdat any

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

$_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv = comdat any

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

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_79XMLBufBid7isEmptyEv = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZN11xercesc_2_710XMLScanner15setRootElemNameEPt = comdat any

$_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEEC2EPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE = comdat any

$_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb = comdat any

$_ZN11xercesc_2_710DTDGrammar13setRootElemIdEj = comdat any

$_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE7releaseEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_714XMLElementDecl5setIdEj = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt = comdat any

$_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEEC2EPS1_ = comdat any

$_ZN11xercesc_2_79XMLReader13setThrowAtEndEb = comdat any

$_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_714DTDElementDecl6getKeyEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_79ElemStack17setValidationFlagEb = comdat any

$_ZN11xercesc_2_712XMLValidator16checkRootElementEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZN11xercesc_2_77XMLAttr12setSpecifiedEb = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef10isExternalEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_ = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb = comdat any

$_ZN11xercesc_2_79ElemStack15getCurrentScopeEv = comdat any

$_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi = comdat any

$_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZN11xercesc_2_79ElemStack13setCurrentURIEj = comdat any

$_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv = comdat any

$_ZN11xercesc_2_79XMLString10startsWithEPKtS2_ = comdat any

$_ZN11xercesc_2_79ElemStack15setCurrentScopeEi = comdat any

$_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE = comdat any

$_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv = comdat any

$_ZN11xercesc_2_717PSVIAttributeList5resetEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl6getURIEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_ = comdat any

$_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner22resetValidationContextEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

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

$_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTVN11xercesc_2_712IGXMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712IGXMLScannerE, ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712IGXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712IGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712IGXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712IGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712IGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712IGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712IGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712IGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712IGXMLScanner15resolveSystemIdEPKtS2_] }, align 8
@_ZTSN11xercesc_2_712IGXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712IGXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712IGXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712IGXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [17 x i8] c"IGXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_711RefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@.str.6 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.7 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712IGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712IGXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !419, !range !428, !noundef !429
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !430, !range !428, !noundef !429
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !431, !range !428, !noundef !429
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_712IGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1024) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 comdat align 2 !prof !418 {
  %3 = load ptr, ptr %0, align 8, !tbaa !432
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712IGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !434
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712IGXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0) unnamed_addr #1 align 2 !prof !449 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !450
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !451

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(61) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0) unnamed_addr #1 align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !450
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(61) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #3 align 2 !prof !418 {
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #13
  store i32 %6, ptr %4, align 4, !tbaa !452
  %7 = tail call noundef i32 @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %6) #13
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !454
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #13
  %8 = load ptr, ptr %0, align 8, !tbaa !432
  %9 = getelementptr inbounds ptr, ptr %8, i64 15
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %11 unwind label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %13 = load ptr, ptr %12, align 8, !tbaa !455
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15, !prof !456

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !432
  %17 = getelementptr inbounds ptr, ptr %16, i64 10
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
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
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #14
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %28
  %26 = call ptr @__cxa_begin_catch(ptr %21) #14
  call void @__cxa_end_catch() #14
  br label %27

27:                                               ; preds = %25, %104, %65, %68
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void

28:                                               ; preds = %19
  %29 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #14
  %30 = icmp eq i32 %22, %29
  br i1 %30, label %25, label %31

31:                                               ; preds = %28
  %32 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %33 = icmp eq i32 %22, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call ptr @__cxa_begin_catch(ptr %21) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %36, align 1, !tbaa !457
  %37 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !432
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(48) %35) #13
          to label %95 unwind label %77

44:                                               ; preds = %31
  %45 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %46 = icmp eq i32 %22, %45
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = call ptr @__cxa_begin_catch(ptr %21) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  invoke void @__cxa_rethrow() #15
          to label %120 unwind label %72

49:                                               ; preds = %15, %11
  invoke void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %50 unwind label %19

50:                                               ; preds = %49
  %51 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
          to label %52 unwind label %19

52:                                               ; preds = %50
  br i1 %51, label %53, label %54, !prof !456

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 279) #13
          to label %65 unwind label %19

54:                                               ; preds = %52
  %55 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
          to label %56 unwind label %19

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %58 = load i8, ptr %57, align 8, !tbaa !458, !range !428, !noundef !429
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60, !prof !459

60:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %61 unwind label %19

61:                                               ; preds = %60, %56
  %62 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
          to label %63 unwind label %19

63:                                               ; preds = %61
  br i1 %62, label %65, label %64, !prof !456

64:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %65 unwind label %19

65:                                               ; preds = %64, %63, %53
  %66 = load ptr, ptr %12, align 8, !tbaa !455
  %67 = icmp eq ptr %66, null
  br i1 %67, label %27, label %68, !prof !456

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !432
  %70 = getelementptr inbounds ptr, ptr %69, i64 5
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %66) #13
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
  %81 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %77
  %84 = call ptr @__cxa_begin_catch(ptr %79) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  invoke void @__cxa_rethrow() #15
          to label %120 unwind label %99

85:                                               ; preds = %34
  %86 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #13
  %87 = icmp sgt i32 %86, 1
  %88 = load ptr, ptr %35, align 8, !tbaa !432
  %89 = getelementptr inbounds ptr, ptr %88, i64 2
  %90 = load ptr, ptr %89, align 8
  br i1 %87, label %91, label %93

91:                                               ; preds = %85
  %92 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(48) %35) #13
          to label %95 unwind label %77

93:                                               ; preds = %85
  %94 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(48) %35) #13
          to label %95 unwind label %77

95:                                               ; preds = %93, %91, %39
  %96 = phi i32 [ 7, %39 ], [ 292, %91 ], [ 157, %93 ]
  %97 = phi ptr [ %43, %39 ], [ %92, %91 ], [ %94, %93 ]
  %98 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %96, ptr noundef %97, ptr noundef %98, ptr noundef null, ptr noundef null) #13
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  %115 = insertvalue { ptr, i32 } poison, ptr %114, 0
  %116 = insertvalue { ptr, i32 } %115, i32 %113, 1
  resume { ptr, i32 } %116

117:                                              ; preds = %109, %99, %72
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  call void @__clang_call_terminate(ptr %119) #16
  unreachable

120:                                              ; preds = %83, %47
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %5 = alloca i8, align 1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #13
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 307, i32 noundef 78, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #14
  br label %197

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %17, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  br label %19

19:                                               ; preds = %39, %16
  %20 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
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
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #14
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = call ptr @__cxa_begin_catch(ptr %24) #14
  %30 = load ptr, ptr %18, align 8, !tbaa !455
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %29) #13
  %34 = load ptr, ptr %30, align 8, !tbaa !432
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(72) %33) #13
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
          to label %19 unwind label %40, !llvm.loop !461

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
  %48 = load ptr, ptr %0, align 8, !tbaa !432
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %47) #13
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
  %57 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %56) #13
  br i1 %57, label %192, label %58

58:                                               ; preds = %55
  %59 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %56) #13
          to label %60 unwind label %64

60:                                               ; preds = %58
  %61 = load ptr, ptr %59, align 8, !tbaa !463
  %62 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %61) #13
          to label %63 unwind label %64

63:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %62, ptr noundef null, ptr noundef null, ptr noundef null) #13
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 1, ptr %5, align 1, !tbaa !465
  switch i32 %20, label %123 [
    i32 0, label %69
    i32 2, label %112
    i32 3, label %113
    i32 5, label %114
    i32 6, label %115
  ]

69:                                               ; preds = %68
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %71 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %70) #13
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280) #13
          to label %108 unwind label %73

73:                                               ; preds = %147, %141, %138, %137, %129, %124, %123, %121, %119, %114, %113, %112, %108, %72
  %74 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %75 = extractvalue { ptr, i32 } %74, 0
  %76 = extractvalue { ptr, i32 } %74, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  br label %77

77:                                               ; preds = %22, %73, %64, %51, %42
  %78 = phi i32 [ %54, %51 ], [ %67, %64 ], [ %76, %73 ], [ %45, %42 ], [ %25, %22 ]
  %79 = phi ptr [ %53, %51 ], [ %66, %64 ], [ %75, %73 ], [ %44, %42 ], [ %24, %22 ]
  %80 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #14
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = call ptr @__cxa_begin_catch(ptr %79) #14
  call void @__cxa_end_catch() #14
  br label %192

84:                                               ; preds = %151, %46
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  br label %192

85:                                               ; preds = %77
  %86 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #14
  %87 = icmp eq i32 %78, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call ptr @__cxa_begin_catch(ptr %79) #14
  call void @__cxa_end_catch() #14
  br label %192

90:                                               ; preds = %85
  %91 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %92 = icmp eq i32 %78, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = call ptr @__cxa_begin_catch(ptr %79) #14
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %95, align 1, !tbaa !457
  %96 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %165

98:                                               ; preds = %93
  %99 = load ptr, ptr %94, align 8, !tbaa !432
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(48) %94) #13
          to label %175 unwind label %157

103:                                              ; preds = %90
  %104 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %105 = icmp eq i32 %78, %104
  br i1 %105, label %106, label %194

106:                                              ; preds = %103
  %107 = call ptr @__cxa_begin_catch(ptr %79) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #15
          to label %205 unwind label %152

108:                                              ; preds = %72, %69
  %109 = load ptr, ptr %0, align 8, !tbaa !432
  %110 = getelementptr inbounds ptr, ptr %109, i64 11
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
          to label %124 unwind label %73

112:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %124 unwind label %73

113:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #13
          to label %124 unwind label %73

114:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %124 unwind label %73

115:                                              ; preds = %68
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %117 = load i8, ptr %116, align 2, !tbaa !466, !range !428, !noundef !429
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #13
          to label %124 unwind label %73

121:                                              ; preds = %115
  %122 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #13
          to label %124 unwind label %73

123:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 60) #13
          to label %124 unwind label %73

124:                                              ; preds = %123, %119, %121, %114, %113, %112, %108
  %125 = load i32, ptr %3, align 4, !tbaa !452
  %126 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %17) #13
          to label %127 unwind label %73

127:                                              ; preds = %124
  %128 = icmp eq i32 %125, %126
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #13
          to label %130 unwind label %73

130:                                              ; preds = %129, %127
  %131 = load i8, ptr %5, align 1, !tbaa !465, !range !428, !noundef !429
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %135 = load i8, ptr %134, align 8, !tbaa !458, !range !428, !noundef !429
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %138 unwind label %73

138:                                              ; preds = %137, %133
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %139 unwind label %73

139:                                              ; preds = %138
  %140 = call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %143 = load ptr, ptr %142, align 8, !tbaa !467
  invoke void @_ZN11xercesc_2_725IdentityConstraintHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %143) #13
          to label %144 unwind label %73

144:                                              ; preds = %141, %139
  %145 = load ptr, ptr %18, align 8, !tbaa !455
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %145, align 8, !tbaa !432
  %149 = getelementptr inbounds ptr, ptr %148, i64 5
  %150 = load ptr, ptr %149, align 8
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(8) %145) #13
          to label %151 unwind label %73

151:                                              ; preds = %144, %147, %130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
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
  %161 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %157
  %164 = call ptr @__cxa_begin_catch(ptr %159) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #15
          to label %205 unwind label %179

165:                                              ; preds = %93
  %166 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #13
  %167 = icmp sgt i32 %166, 1
  %168 = load ptr, ptr %94, align 8, !tbaa !432
  %169 = getelementptr inbounds ptr, ptr %168, i64 2
  %170 = load ptr, ptr %169, align 8
  br i1 %167, label %171, label %173

171:                                              ; preds = %165
  %172 = invoke noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(48) %94) #13
          to label %175 unwind label %157

173:                                              ; preds = %165
  %174 = invoke noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(48) %94) #13
          to label %175 unwind label %157

175:                                              ; preds = %173, %171, %98
  %176 = phi i32 [ 7, %98 ], [ 292, %171 ], [ 157, %173 ]
  %177 = phi ptr [ %102, %98 ], [ %172, %171 ], [ %174, %173 ]
  %178 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef null, ptr noundef null) #13
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i1 %193

194:                                              ; preds = %185, %189, %154, %103
  %195 = phi i32 [ %155, %154 ], [ %78, %103 ], [ %188, %185 ], [ %190, %189 ]
  %196 = phi ptr [ %156, %154 ], [ %79, %103 ], [ %187, %185 ], [ %191, %189 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
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
  call void @__clang_call_terminate(ptr %204) #16
  unreachable

205:                                              ; preds = %163, %106
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %6, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !468
  invoke void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false) #13
          to label %9 unwind label %17

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !468
  call void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %10, i1 noundef zeroext %3) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %11, align 8, !tbaa !469
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %13 = load i32, ptr %12, align 8, !tbaa !470
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %16, align 8, !tbaa !458
  br label %45

17:                                               ; preds = %53, %51, %4
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #14
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %27
  %24 = call ptr @__cxa_begin_catch(ptr %19) #14
  call void @__cxa_end_catch() #14
  br label %25

25:                                               ; preds = %23, %91, %53, %45, %51
  %26 = phi ptr [ %52, %51 ], [ null, %45 ], [ %54, %53 ], [ null, %91 ], [ null, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret ptr %26

27:                                               ; preds = %17
  %28 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #14
  %29 = icmp eq i32 %20, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %27
  %31 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %32 = icmp eq i32 %20, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = call ptr @__cxa_begin_catch(ptr %19) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %35, align 1, !tbaa !457
  %36 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
  br label %82

40:                                               ; preds = %30
  %41 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %42 = icmp eq i32 %20, %41
  br i1 %42, label %43, label %99

43:                                               ; preds = %40
  %44 = call ptr @__cxa_begin_catch(ptr %19) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
          to label %107 unwind label %55

45:                                               ; preds = %15, %9
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %46, align 1, !tbaa !457
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %47, align 2, !tbaa !471
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %48, align 8, !tbaa !472
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %49, align 1, !tbaa !473
  %50 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %50, align 8, !tbaa !474
  switch i16 %2, label %25 [
    i16 1, label %51
    i16 0, label %53
  ]

51:                                               ; preds = %45
  %52 = invoke noundef ptr @_ZN11xercesc_2_712IGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3) #13
          to label %25 unwind label %17

53:                                               ; preds = %45
  %54 = invoke noundef ptr @_ZN11xercesc_2_712IGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3) #13
          to label %25 unwind label %17

55:                                               ; preds = %43
  %56 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %57 unwind label %104

57:                                               ; preds = %55
  %58 = extractvalue { ptr, i32 } %56, 1
  %59 = extractvalue { ptr, i32 } %56, 0
  br label %99

60:                                               ; preds = %82, %78, %74
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %62 = extractvalue { ptr, i32 } %61, 0
  %63 = extractvalue { ptr, i32 } %61, 1
  %64 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %60
  %67 = call ptr @__cxa_begin_catch(ptr %62) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
          to label %107 unwind label %86

68:                                               ; preds = %33
  %69 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
  %70 = icmp sgt i32 %69, 1
  %71 = load ptr, ptr %34, align 8, !tbaa !432
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  br i1 %70, label %74, label %78

74:                                               ; preds = %68
  %75 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
          to label %76 unwind label %60

76:                                               ; preds = %74
  %77 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
  br label %82

78:                                               ; preds = %68
  %79 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
          to label %80 unwind label %60

80:                                               ; preds = %78
  %81 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
  br label %82

82:                                               ; preds = %38, %76, %80
  %83 = phi i32 [ 157, %80 ], [ 292, %76 ], [ 156, %38 ]
  %84 = phi ptr [ %79, %80 ], [ %75, %76 ], [ %39, %38 ]
  %85 = phi ptr [ %81, %80 ], [ %77, %76 ], [ null, %38 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef null, ptr noundef null) #13
          to label %91 unwind label %60

86:                                               ; preds = %66
  %87 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %88 unwind label %104

88:                                               ; preds = %86
  %89 = extractvalue { ptr, i32 } %87, 1
  %90 = extractvalue { ptr, i32 } %87, 0
  br label %96

91:                                               ; preds = %82
  invoke void @__cxa_end_catch()
          to label %25 unwind label %92

92:                                               ; preds = %91
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = extractvalue { ptr, i32 } %93, 0
  %95 = extractvalue { ptr, i32 } %93, 1
  br label %99

96:                                               ; preds = %88, %60
  %97 = phi i32 [ %89, %88 ], [ %63, %60 ]
  %98 = phi ptr [ %90, %88 ], [ %62, %60 ]
  invoke void @__cxa_end_catch()
          to label %99 unwind label %104

99:                                               ; preds = %92, %96, %57, %40
  %100 = phi i32 [ %58, %57 ], [ %20, %40 ], [ %95, %92 ], [ %97, %96 ]
  %101 = phi ptr [ %59, %57 ], [ %19, %40 ], [ %94, %92 ], [ %98, %96 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %102 = insertvalue { ptr, i32 } poison, ptr %101, 0
  %103 = insertvalue { ptr, i32 } %102, i32 %100, 1
  resume { ptr, i32 } %103

104:                                              ; preds = %96, %86, %55
  %105 = landingpad { ptr, i32 }
          catch ptr null
  %106 = extractvalue { ptr, i32 } %105, 0
  call void @__clang_call_terminate(ptr %106) #16
  unreachable

107:                                              ; preds = %66, %43
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1024)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712IGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1024), i1 noundef zeroext, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::Janitor", align 8
  %5 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"class.xercesc_2_7::Janitor.7", align 8
  %12 = alloca [4 x i16], align 8
  %13 = alloca %"class.xercesc_2_7::Janitor.8", align 8
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %16 = load ptr, ptr %15, align 8, !tbaa !475
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %16, align 8, !tbaa !432
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  br label %22

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %23, i1 noundef zeroext false) #13
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #13
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
  br label %382

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %27) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %29 = load i8, ptr %28, align 2, !tbaa !466, !range !428, !noundef !429
  %30 = icmp eq i8 %29, 0
  %31 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  br i1 %30, label %34, label %32

32:                                               ; preds = %26
  %33 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull %3) #13
          to label %36 unwind label %41

34:                                               ; preds = %26
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(40) %31) #13
          to label %36 unwind label %41

36:                                               ; preds = %34, %32
  %37 = phi i1 [ %33, %32 ], [ %35, %34 ]
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 208) #13
          to label %45 unwind label %41

41:                                               ; preds = %46, %45, %43, %40, %34, %32
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %391

43:                                               ; preds = %38
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 307, ptr noundef %44, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %45 unwind label %41

45:                                               ; preds = %43, %40
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
          to label %381 unwind label %41

46:                                               ; preds = %36
  %47 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xercesc_2_710XMLScanner15setRootElemNameEPt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %47) #13
          to label %48 unwind label %41

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %50 = load i8, ptr %49, align 2, !tbaa !476, !range !428, !noundef !429
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %52, align 8
  %56 = select i1 %51, ptr %54, ptr %55
  %57 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %56) #13
          to label %58 unwind label %74

58:                                               ; preds = %48
  %59 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %61 = load i32, ptr %60, align 4, !tbaa !477
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %57, ptr noundef %59, i32 noundef %61, i32 noundef 1, ptr noundef %56) #13
          to label %62 unwind label %76

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %57) #13
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %57, i32 noundef 4) #13
  call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %57, i1 noundef zeroext true) #13
  %63 = load i8, ptr %49, align 2, !tbaa !476, !range !428, !noundef !429
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %67 = load ptr, ptr %66, align 8, !tbaa !478
  %68 = load ptr, ptr %67, align 8, !tbaa !432
  %69 = getelementptr inbounds ptr, ptr %68, i64 17
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef i32 %70(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull %57, i1 noundef zeroext false) #13
          to label %72 unwind label %78

72:                                               ; preds = %65
  call void @_ZN11xercesc_2_710DTDGrammar13setRootElemIdEj(ptr noundef nonnull align 8 dereferenceable(61) %67, i32 noundef %71) #13
  %73 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %96

74:                                               ; preds = %48
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %391

76:                                               ; preds = %58
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %57, ptr noundef %56) #12
  br label %391

78:                                               ; preds = %104, %98, %96, %65
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %389

80:                                               ; preds = %62
  %81 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %82 = load ptr, ptr %81, align 8, !tbaa !479
  %83 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %84 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %83) #13
          to label %85 unwind label %89

85:                                               ; preds = %80
  %86 = icmp eq ptr %84, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %84) #13
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %57, i32 noundef %88) #13
  br label %96

89:                                               ; preds = %91, %80
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %389

91:                                               ; preds = %85
  %92 = load ptr, ptr %81, align 8, !tbaa !479
  %93 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %92, ptr noundef nonnull %57) #13
          to label %94 unwind label %89

94:                                               ; preds = %91
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %57, i32 noundef %93) #13
  %95 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %96

96:                                               ; preds = %87, %94, %72
  %97 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %23, i1 noundef zeroext false) #13
          to label %98 unwind label %78

98:                                               ; preds = %96
  %99 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
          to label %100 unwind label %78

100:                                              ; preds = %98
  br i1 %99, label %101, label %108

101:                                              ; preds = %100
  %102 = load ptr, ptr %15, align 8, !tbaa !475
  %103 = icmp eq ptr %102, null
  br i1 %103, label %380, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %102, align 8, !tbaa !432
  %106 = getelementptr inbounds ptr, ptr %105, i64 4
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull align 8 dereferenceable(80) %57, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
          to label %380 unwind label %78

108:                                              ; preds = %100
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %110 = load i32, ptr %109, align 8, !tbaa !470
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %114 = load i8, ptr %113, align 8, !tbaa !458, !range !428, !noundef !429
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i8 1, ptr %113, align 8, !tbaa !458
  br label %117

117:                                              ; preds = %116, %112, %108
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #14
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %119 = load ptr, ptr %118, align 8, !tbaa !478
  %120 = load ptr, ptr %15, align 8, !tbaa !475
  %121 = load ptr, ptr %53, align 8, !tbaa !480
  %122 = load ptr, ptr %52, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %119, ptr noundef %120, ptr noundef %121, ptr noundef %122) #13
          to label %123 unwind label %128

123:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef nonnull %27) #13
          to label %124 unwind label %130

124:                                              ; preds = %123
  %125 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #13
          to label %126 unwind label %130

126:                                              ; preds = %124
  %127 = icmp ne i16 %125, 91
  br i1 %127, label %132, label %170

128:                                              ; preds = %117
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %387

130:                                              ; preds = %124, %123
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %385

132:                                              ; preds = %126
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 0, ptr %133, align 1, !tbaa !473
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %27) #13
          to label %134 unwind label %141

134:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %27) #13
          to label %135 unwind label %143

135:                                              ; preds = %134
  %136 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %137 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  %138 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(40) %136, ptr noundef nonnull align 8 dereferenceable(40) %137, i32 noundef 1) #13
          to label %139 unwind label %145

139:                                              ; preds = %135
  br i1 %138, label %147, label %140

140:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
          to label %162 unwind label %145

141:                                              ; preds = %132
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %168

143:                                              ; preds = %134
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %166

145:                                              ; preds = %157, %155, %151, %147, %140, %135
  %146 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  br label %166

147:                                              ; preds = %139
  %148 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %149 = load ptr, ptr %52, align 8, !tbaa !460
  %150 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %148, ptr noundef %149) #13
          to label %151 unwind label %145

151:                                              ; preds = %147
  %152 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  %153 = load ptr, ptr %52, align 8, !tbaa !460
  %154 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %152, ptr noundef %153) #13
          to label %155 unwind label %145

155:                                              ; preds = %151
  %156 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %23, i1 noundef zeroext false) #13
          to label %157 unwind label %145

157:                                              ; preds = %155
  %158 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #13
          to label %159 unwind label %145

159:                                              ; preds = %157
  %160 = icmp eq i16 %158, 91
  %161 = zext i1 %160 to i8
  br label %162

162:                                              ; preds = %140, %159
  %163 = phi ptr [ %154, %159 ], [ null, %140 ]
  %164 = phi ptr [ %150, %159 ], [ null, %140 ]
  %165 = phi i8 [ %161, %159 ], [ 0, %140 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br i1 %138, label %170, label %379

166:                                              ; preds = %145, %143
  %167 = phi { ptr, i32 } [ %146, %145 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  br label %168

168:                                              ; preds = %166, %141
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %385

170:                                              ; preds = %126, %162
  %171 = phi ptr [ %163, %162 ], [ null, %126 ]
  %172 = phi ptr [ %164, %162 ], [ null, %126 ]
  %173 = phi i8 [ %165, %162 ], [ 1, %126 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  %174 = load ptr, ptr %52, align 8, !tbaa !460
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %171, ptr noundef %174) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  %175 = load ptr, ptr %52, align 8, !tbaa !460
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %172, ptr noundef %175) #13
  %176 = load ptr, ptr %15, align 8, !tbaa !475
  %177 = icmp eq ptr %176, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %170
  %179 = icmp ne i8 %173, 0
  %180 = load ptr, ptr %176, align 8, !tbaa !432
  %181 = getelementptr inbounds ptr, ptr %180, i64 4
  %182 = load ptr, ptr %181, align 8
  invoke void %182(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef nonnull align 8 dereferenceable(80) %57, ptr noundef %172, ptr noundef %171, i1 noundef zeroext %179, i1 noundef zeroext %127) #13
          to label %185 unwind label %183

183:                                              ; preds = %213, %212, %211, %208, %205, %202, %200, %199, %198, %194, %193, %190, %189, %187, %178
  %184 = landingpad { ptr, i32 }
          cleanup
  br label %383

185:                                              ; preds = %178, %170
  %186 = icmp ne i8 %173, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %185
  %188 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #13
          to label %189 unwind label %183

189:                                              ; preds = %187
  invoke void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %127, ptr noundef %171, ptr noundef %172) #13
          to label %190 unwind label %183

190:                                              ; preds = %189
  %191 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112) %5) #13
          to label %192 unwind label %183

192:                                              ; preds = %190
  br i1 %191, label %194, label %193

193:                                              ; preds = %192
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
          to label %378 unwind label %183

194:                                              ; preds = %192
  %195 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #13
          to label %196 unwind label %183

196:                                              ; preds = %194
  %197 = icmp ugt i32 %195, 1
  br i1 %197, label %198, label %200

198:                                              ; preds = %196
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 256) #13
          to label %199 unwind label %183

199:                                              ; preds = %198
  invoke void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80) %23, i32 noundef 1) #13
          to label %200 unwind label %183

200:                                              ; preds = %199, %196
  %201 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %23, i1 noundef zeroext false) #13
          to label %202 unwind label %183

202:                                              ; preds = %200, %185
  %203 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
          to label %204 unwind label %183

204:                                              ; preds = %202
  br i1 %203, label %214, label %205

205:                                              ; preds = %204
  %206 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 93) #13
          to label %207 unwind label %183

207:                                              ; preds = %205
  br i1 %206, label %208, label %212

208:                                              ; preds = %207
  %209 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
          to label %210 unwind label %183

210:                                              ; preds = %208
  br i1 %209, label %211, label %212

211:                                              ; preds = %210
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 257) #13
          to label %214 unwind label %183

212:                                              ; preds = %210, %207
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 212) #13
          to label %213 unwind label %183

213:                                              ; preds = %212
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #13
          to label %214 unwind label %183

214:                                              ; preds = %211, %213, %204
  br i1 %127, label %215, label %378

215:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  store ptr null, ptr %10, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #13
  %216 = load i8, ptr %49, align 2, !tbaa !476, !range !428, !noundef !429
  %217 = icmp eq i8 %216, 0
  %218 = or i1 %186, %217
  br i1 %218, label %268, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %0, align 8, !tbaa !432
  %221 = getelementptr inbounds ptr, ptr %220, i64 17
  %222 = load ptr, ptr %221, align 8
  %223 = invoke noundef ptr %222(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %171, ptr noundef %172) #13
          to label %224 unwind label %264

224:                                              ; preds = %219
  store ptr %223, ptr %10, align 8, !tbaa !481
  %225 = icmp eq ptr %223, null
  br i1 %225, label %268, label %226

226:                                              ; preds = %224
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %223) #13
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %228 = load ptr, ptr %227, align 8, !tbaa !468
  %229 = load ptr, ptr %10, align 8, !tbaa !481
  %230 = load ptr, ptr %229, align 8, !tbaa !432
  %231 = getelementptr inbounds ptr, ptr %230, i64 5
  %232 = load ptr, ptr %231, align 8
  %233 = invoke noundef ptr %232(ptr noundef nonnull align 8 dereferenceable(41) %229) #13
          to label %234 unwind label %266

234:                                              ; preds = %226
  %235 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %228, ptr noundef %233) #13
          to label %236 unwind label %266

236:                                              ; preds = %234
  %237 = icmp eq ptr %235, null
  br i1 %237, label %268, label %238

238:                                              ; preds = %236
  %239 = load ptr, ptr %235, align 8, !tbaa !432
  %240 = getelementptr inbounds ptr, ptr %239, i64 5
  %241 = load ptr, ptr %240, align 8
  %242 = invoke noundef i32 %241(ptr noundef nonnull align 8 dereferenceable(8) %235) #13
          to label %243 unwind label %266

243:                                              ; preds = %238
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %243
  %246 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %235, ptr %246, align 8, !tbaa !450
  store ptr %235, ptr %118, align 8, !tbaa !478
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %248 = load ptr, ptr %247, align 8, !tbaa !482
  %249 = load ptr, ptr %248, align 8, !tbaa !432
  %250 = getelementptr inbounds ptr, ptr %249, i64 11
  %251 = load ptr, ptr %250, align 8
  invoke void %251(ptr noundef nonnull align 8 dereferenceable(40) %248, ptr noundef nonnull %235) #13
          to label %252 unwind label %266

252:                                              ; preds = %245
  %253 = load ptr, ptr %15, align 8, !tbaa !475
  %254 = icmp eq ptr %253, null
  br i1 %254, label %374, label %255

255:                                              ; preds = %252
  %256 = load ptr, ptr %253, align 8, !tbaa !432
  %257 = getelementptr inbounds ptr, ptr %256, i64 16
  %258 = load ptr, ptr %257, align 8
  invoke void %258(ptr noundef nonnull align 8 dereferenceable(8) %253) #13
          to label %259 unwind label %266

259:                                              ; preds = %255
  %260 = load ptr, ptr %15, align 8, !tbaa !475
  %261 = load ptr, ptr %260, align 8, !tbaa !432
  %262 = getelementptr inbounds ptr, ptr %261, i64 10
  %263 = load ptr, ptr %262, align 8
  invoke void %263(ptr noundef nonnull align 8 dereferenceable(8) %260) #13
          to label %374 unwind label %266

264:                                              ; preds = %219
  %265 = landingpad { ptr, i32 }
          cleanup
  br label %375

266:                                              ; preds = %259, %255, %245, %238, %234, %226
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %375

268:                                              ; preds = %243, %236, %215, %224
  %269 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %270 = load i8, ptr %269, align 1, !tbaa !483, !range !428, !noundef !429
  %271 = icmp eq i8 %270, 0
  %272 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %273 = load i8, ptr %272, align 8, !range !428
  %274 = icmp eq i8 %273, 0
  %275 = select i1 %271, i1 %274, i1 false
  br i1 %275, label %377, label %276

276:                                              ; preds = %268
  %277 = load ptr, ptr %10, align 8, !tbaa !481
  %278 = icmp eq ptr %277, null
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %280 = load i8, ptr %279, align 1, !tbaa !484, !range !428, !noundef !429
  %281 = icmp ne i8 %280, 0
  br i1 %278, label %286, label %282

282:                                              ; preds = %276
  %283 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(41) %277, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %281) #13
          to label %293 unwind label %284

284:                                              ; preds = %308, %286, %282
  %285 = landingpad { ptr, i32 }
          cleanup
  br label %375

286:                                              ; preds = %276
  %287 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %288 = load i8, ptr %287, align 1, !tbaa !485, !range !428, !noundef !429
  %289 = icmp ne i8 %288, 0
  %290 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef %171, ptr noundef %172, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext %281, i1 noundef zeroext %289) #13
          to label %291 unwind label %284

291:                                              ; preds = %286
  %292 = load ptr, ptr %10, align 8, !tbaa !481
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %292) #13
  br label %293

293:                                              ; preds = %282, %291
  %294 = phi ptr [ %290, %291 ], [ %283, %282 ]
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %311

296:                                              ; preds = %293
  %297 = call ptr @__cxa_allocate_exception(i64 48) #14
  %298 = load ptr, ptr %10, align 8, !tbaa !481
  %299 = icmp eq ptr %298, null
  br i1 %299, label %305, label %300

300:                                              ; preds = %296
  %301 = load ptr, ptr %298, align 8, !tbaa !432
  %302 = getelementptr inbounds ptr, ptr %301, i64 5
  %303 = load ptr, ptr %302, align 8
  %304 = invoke noundef ptr %303(ptr noundef nonnull align 8 dereferenceable(41) %298) #13
          to label %305 unwind label %309

305:                                              ; preds = %296, %300
  %306 = phi ptr [ %304, %300 ], [ %171, %296 ]
  %307 = load ptr, ptr %52, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %297, ptr noundef nonnull @.str, i32 noundef 1505, i32 noundef 45, ptr noundef %306, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %307) #13
          to label %308 unwind label %309

308:                                              ; preds = %305
  invoke void @__cxa_throw(ptr nonnull %297, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %393 unwind label %284

309:                                              ; preds = %305, %300
  %310 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %297) #14
  br label %375

311:                                              ; preds = %293
  %312 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %313 = load i8, ptr %312, align 1, !tbaa !486, !range !428, !noundef !429
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %356, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %317 = load ptr, ptr %316, align 8, !tbaa !468
  %318 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %317) #13
  %319 = load ptr, ptr %10, align 8, !tbaa !481
  %320 = load ptr, ptr %319, align 8, !tbaa !432
  %321 = getelementptr inbounds ptr, ptr %320, i64 5
  %322 = load ptr, ptr %321, align 8
  %323 = invoke noundef ptr %322(ptr noundef nonnull align 8 dereferenceable(41) %319) #13
          to label %324 unwind label %352

324:                                              ; preds = %315
  %325 = load ptr, ptr %318, align 8, !tbaa !432
  %326 = getelementptr inbounds ptr, ptr %325, i64 5
  %327 = load ptr, ptr %326, align 8
  %328 = invoke noundef i32 %327(ptr noundef nonnull align 8 dereferenceable(40) %318, ptr noundef %323) #13
          to label %329 unwind label %352

329:                                              ; preds = %324
  %330 = load ptr, ptr %316, align 8, !tbaa !468
  %331 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %330) #13
  %332 = load ptr, ptr %331, align 8, !tbaa !432
  %333 = getelementptr inbounds ptr, ptr %332, i64 10
  %334 = load ptr, ptr %333, align 8
  %335 = invoke noundef ptr %334(ptr noundef nonnull align 8 dereferenceable(40) %331, i32 noundef %328) #13
          to label %336 unwind label %354

336:                                              ; preds = %329
  %337 = load ptr, ptr %316, align 8, !tbaa !468
  %338 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %337, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE) #13
          to label %339 unwind label %354

339:                                              ; preds = %336
  %340 = load ptr, ptr %118, align 8, !tbaa !478
  %341 = load ptr, ptr %340, align 8, !tbaa !432
  %342 = getelementptr inbounds ptr, ptr %341, i64 22
  %343 = load ptr, ptr %342, align 8
  %344 = invoke noundef ptr %343(ptr noundef nonnull align 8 dereferenceable(8) %340) #13
          to label %345 unwind label %354

345:                                              ; preds = %339
  %346 = load ptr, ptr %344, align 8, !tbaa !432
  %347 = getelementptr inbounds ptr, ptr %346, i64 10
  %348 = load ptr, ptr %347, align 8
  invoke void %348(ptr noundef nonnull align 8 dereferenceable(16) %344, ptr noundef %335) #13
          to label %349 unwind label %354

349:                                              ; preds = %345
  %350 = load ptr, ptr %316, align 8, !tbaa !468
  %351 = load ptr, ptr %118, align 8, !tbaa !478
  invoke void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %350, ptr noundef %351) #13
          to label %356 unwind label %354

352:                                              ; preds = %324, %315
  %353 = landingpad { ptr, i32 }
          cleanup
  br label %375

354:                                              ; preds = %349, %345, %339, %336, %329
  %355 = landingpad { ptr, i32 }
          cleanup
  br label %375

356:                                              ; preds = %349, %311
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  store i64 292063281220, ptr %12, align 8
  %357 = load ptr, ptr %52, align 8, !tbaa !460
  %358 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %357) #13
          to label %359 unwind label %366

359:                                              ; preds = %356
  %360 = load ptr, ptr %52, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %358, ptr noundef nonnull %12, i1 noundef zeroext false, ptr noundef %360) #13
          to label %361 unwind label %368

361:                                              ; preds = %359
  invoke void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %358, ptr noundef %171) #13
          to label %362 unwind label %366

362:                                              ; preds = %361
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %358) #13
  call void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %294, i1 noundef zeroext true) #13
  %363 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull %294, ptr noundef nonnull %358) #13
          to label %364 unwind label %370

364:                                              ; preds = %362
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %5, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %365 unwind label %370

365:                                              ; preds = %364
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  br label %377

366:                                              ; preds = %361, %356
  %367 = landingpad { ptr, i32 }
          cleanup
  br label %372

368:                                              ; preds = %359
  %369 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %358, ptr noundef %357) #12
  br label %372

370:                                              ; preds = %364, %362
  %371 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %372

372:                                              ; preds = %370, %368, %366
  %373 = phi { ptr, i32 } [ %371, %370 ], [ %367, %366 ], [ %369, %368 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  br label %375

374:                                              ; preds = %259, %252
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %378

375:                                              ; preds = %284, %309, %372, %354, %352, %266, %264
  %376 = phi { ptr, i32 } [ %267, %266 ], [ %265, %264 ], [ %373, %372 ], [ %285, %284 ], [ %310, %309 ], [ %355, %354 ], [ %353, %352 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %383

377:                                              ; preds = %365, %268
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %378

378:                                              ; preds = %214, %377, %374, %193
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %379

379:                                              ; preds = %162, %378
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #14
  br label %380

380:                                              ; preds = %101, %104, %379
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %381

381:                                              ; preds = %45, %380
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %382

382:                                              ; preds = %381, %25
  ret void

383:                                              ; preds = %375, %183
  %384 = phi { ptr, i32 } [ %376, %375 ], [ %184, %183 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %385

385:                                              ; preds = %383, %168, %130
  %386 = phi { ptr, i32 } [ %384, %383 ], [ %169, %168 ], [ %131, %130 ]
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #12
  br label %387

387:                                              ; preds = %385, %128
  %388 = phi { ptr, i32 } [ %386, %385 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #14
  br label %389

389:                                              ; preds = %387, %89, %78
  %390 = phi { ptr, i32 } [ %79, %78 ], [ %388, %387 ], [ %90, %89 ]
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %391

391:                                              ; preds = %74, %76, %389, %41
  %392 = phi { ptr, i32 } [ %42, %41 ], [ %390, %389 ], [ %77, %76 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %392

393:                                              ; preds = %308
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712IGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712IGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %6, align 8, !tbaa !474
  %7 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %7, align 4, !tbaa !434
  %8 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %8, align 8, !tbaa !487
  %9 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !488
  %10 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1023, ptr noundef %3) #13
          to label %11 unwind label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !489
  %13 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  store i32 32, ptr %13, align 8, !tbaa !490
  %14 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %14, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_712IGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
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
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void

34:                                               ; preds = %30, %20
  %35 = phi i32 [ %31, %30 ], [ %23, %20 ]
  %36 = phi ptr [ %32, %30 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
  br label %37

37:                                               ; preds = %34, %16
  %38 = phi i32 [ %35, %34 ], [ %19, %16 ]
  %39 = phi ptr [ %36, %34 ], [ %18, %16 ]
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #12
  %40 = insertvalue { ptr, i32 } poison, ptr %39, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %38, 1
  resume { ptr, i32 } %41

42:                                               ; preds = %28
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #16
  unreachable

45:                                               ; preds = %26
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !491 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 0, ptr %0, align 8, !tbaa !492
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !493
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !494
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !495
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !496
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !432
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !497
  store i16 0, ptr %16, align 2, !tbaa !498
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0) #3 align 2 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !460
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !488
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !489
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !432
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
  br label %16

16:                                               ; preds = %12, %1
  %17 = load ptr, ptr %2, align 8, !tbaa !460
  %18 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !500
  %20 = load ptr, ptr %17, align 8, !tbaa !432
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !501
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr %24, align 8, !tbaa !432
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(48) %24) #12
  br label %30

30:                                               ; preds = %26, %16
  %31 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !502
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !432
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(186) %32) #12
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !467
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !432
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(48) %40) #12
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !503
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPtED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %48) #12
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %53 = load ptr, ptr %52, align 8, !tbaa !479
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %53) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %53) #12
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !504
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %58) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %58) #12
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !505
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %63) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %63) #12
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %68 = load ptr, ptr %67, align 8, !tbaa !506
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %68) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %68) #12
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !507
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %73) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %73) #12
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %78 = load ptr, ptr %77, align 8, !tbaa !508
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_717PSVIAttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %78) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %78) #12
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %83 = load ptr, ptr %82, align 8, !tbaa !509
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %83, align 8, !tbaa !432
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(104) %83) #12
  br label %89

89:                                               ; preds = %85, %81
  %90 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %91 = load ptr, ptr %90, align 8, !tbaa !510
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void @_ZN11xercesc_2_712ValueStackOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %91) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %91) #12
  br label %94

94:                                               ; preds = %93, %89
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #1 comdat align 2 !prof !453 {
  store ptr %1, ptr %0, align 8, !tbaa !511
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !513
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !513
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !460
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !487
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = load ptr, ptr %3, align 8, !tbaa !432
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %7) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !488
  %13 = load ptr, ptr %2, align 8, !tbaa !460
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %13) #13
  %15 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 32, i1 noundef zeroext true, ptr noundef %15) #13
          to label %16 unwind label %94

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  store ptr %14, ptr %17, align 8, !tbaa !489
  %18 = load ptr, ptr %2, align 8, !tbaa !460
  %19 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !490
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  %23 = load ptr, ptr %18, align 8, !tbaa !432
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %22) #13
  %27 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  store ptr %26, ptr %27, align 8, !tbaa !500
  %28 = load ptr, ptr %2, align 8, !tbaa !460
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %28) #13
  invoke void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef null) #13
          to label %30 unwind label %96

30:                                               ; preds = %16
  %31 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  store ptr %29, ptr %31, align 8, !tbaa !501
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %29) #13
  %32 = load ptr, ptr %2, align 8, !tbaa !460
  %33 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 192, ptr noundef %32) #13
  %34 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186) %33, ptr noundef null, ptr noundef %34) #13
          to label %35 unwind label %98

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  store ptr %33, ptr %36, align 8, !tbaa !502
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %33) #13
  %37 = load ptr, ptr %2, align 8, !tbaa !460
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %37) #13
  %39 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull %0, ptr noundef %39) #13
          to label %40 unwind label %100

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  store ptr %38, ptr %41, align 8, !tbaa !467
  %42 = load ptr, ptr %2, align 8, !tbaa !460
  %43 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %42) #13
  %44 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %43, i32 noundef 8, ptr noundef %44, i1 noundef zeroext false) #13
          to label %45 unwind label %102

45:                                               ; preds = %40
  %46 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  store ptr %43, ptr %46, align 8, !tbaa !503
  %47 = load ptr, ptr %2, align 8, !tbaa !460
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %47) #13
  %49 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %48, i32 noundef 29, i32 noundef 128, ptr noundef %49) #13
          to label %50 unwind label %104

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  store ptr %48, ptr %51, align 8, !tbaa !479
  %52 = load ptr, ptr %2, align 8, !tbaa !460
  %53 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %52) #13
  %54 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %53, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %54) #13
          to label %55 unwind label %106

55:                                               ; preds = %50
  %56 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  store ptr %53, ptr %56, align 8, !tbaa !504
  %57 = load ptr, ptr %2, align 8, !tbaa !460
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %57) #13
  %59 = load ptr, ptr %2, align 8, !tbaa !460
  %60 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %59) #13
          to label %61 unwind label %108

61:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %60) #13
          to label %62 unwind label %110

62:                                               ; preds = %61
  %63 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %58, i32 noundef 131, i1 noundef zeroext false, ptr noundef nonnull %60, ptr noundef %63) #13
          to label %64 unwind label %108

64:                                               ; preds = %62
  %65 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  store ptr %58, ptr %65, align 8, !tbaa !505
  %66 = load ptr, ptr %2, align 8, !tbaa !460
  %67 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %66) #13
  %68 = load ptr, ptr %2, align 8, !tbaa !460
  %69 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %68) #13
          to label %70 unwind label %114

70:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %69) #13
          to label %71 unwind label %116

71:                                               ; preds = %70
  %72 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %67, i32 noundef 7, i1 noundef zeroext false, ptr noundef nonnull %69, ptr noundef %72) #13
          to label %73 unwind label %114

73:                                               ; preds = %71
  %74 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  store ptr %67, ptr %74, align 8, !tbaa !506
  %75 = load ptr, ptr %2, align 8, !tbaa !460
  %76 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %75) #13
  %77 = load ptr, ptr %2, align 8, !tbaa !460
  %78 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %77) #13
          to label %79 unwind label %120

79:                                               ; preds = %73
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %78) #13
          to label %80 unwind label %122

80:                                               ; preds = %79
  %81 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 7, i1 noundef zeroext false, ptr noundef nonnull %78, ptr noundef %81) #13
          to label %82 unwind label %120

82:                                               ; preds = %80
  %83 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  store ptr %76, ptr %83, align 8, !tbaa !507
  %84 = load ptr, ptr %2, align 8, !tbaa !460
  %85 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %84) #13
  %86 = load ptr, ptr %2, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %85, ptr noundef %86) #13
          to label %87 unwind label %126

87:                                               ; preds = %82
  %88 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  store ptr %85, ptr %88, align 8, !tbaa !508
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %90 = load ptr, ptr %89, align 8, !tbaa !482
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %128, !prof !514

92:                                               ; preds = %87
  %93 = load ptr, ptr %31, align 8, !tbaa !501
  store ptr %93, ptr %89, align 8, !tbaa !482
  br label %128

94:                                               ; preds = %1
  %95 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #12
  br label %129

96:                                               ; preds = %16
  %97 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #12
  br label %129

98:                                               ; preds = %30
  %99 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %33, ptr noundef %32) #12
  br label %129

100:                                              ; preds = %35
  %101 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %38, ptr noundef %37) #12
  br label %129

102:                                              ; preds = %40
  %103 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %42) #12
  br label %129

104:                                              ; preds = %45
  %105 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %47) #12
  br label %129

106:                                              ; preds = %50
  %107 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %53, ptr noundef %52) #12
  br label %129

108:                                              ; preds = %62, %55
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %112

110:                                              ; preds = %61
  %111 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %60, ptr noundef %59) #12
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi { ptr, i32 } [ %109, %108 ], [ %111, %110 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #12
  br label %129

114:                                              ; preds = %71, %64
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %118

116:                                              ; preds = %70
  %117 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %69, ptr noundef %68) #12
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi { ptr, i32 } [ %115, %114 ], [ %117, %116 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %67, ptr noundef %66) #12
  br label %129

120:                                              ; preds = %80, %73
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %124

122:                                              ; preds = %79
  %123 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %78, ptr noundef %77) #12
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi { ptr, i32 } [ %121, %120 ], [ %123, %122 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %76, ptr noundef %75) #12
  br label %129

126:                                              ; preds = %82
  %127 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %85, ptr noundef %84) #12
  br label %129

128:                                              ; preds = %92, %87
  ret void

129:                                              ; preds = %126, %124, %118, %112, %106, %104, %102, %100, %98, %96, %94
  %130 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ], [ %119, %118 ], [ %113, %112 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ]
  resume { ptr, i32 } %130
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !453 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %2 = load ptr, ptr %0, align 8, !tbaa !511
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !514

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !513
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !513
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !432
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !429
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(1024) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !491 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !496
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !497
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !515 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %9 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712IGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  %10 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %10, align 8, !tbaa !474
  %11 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %11, align 4, !tbaa !434
  %12 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %12, align 8, !tbaa !487
  %13 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %13, align 8, !tbaa !488
  %14 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1023, ptr noundef %7) #13
          to label %15 unwind label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  store ptr null, ptr %16, align 8, !tbaa !489
  %17 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  store i32 32, ptr %17, align 8, !tbaa !490
  %18 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %18, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_712IGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
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
  %28 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = call ptr @__cxa_begin_catch(ptr %26) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  invoke void @__cxa_rethrow() #15
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  ret void

38:                                               ; preds = %34, %24
  %39 = phi i32 [ %35, %34 ], [ %27, %24 ]
  %40 = phi ptr [ %36, %34 ], [ %26, %24 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #12
  br label %41

41:                                               ; preds = %38, %20
  %42 = phi i32 [ %39, %38 ], [ %23, %20 ]
  %43 = phi ptr [ %40, %38 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #12
  %44 = insertvalue { ptr, i32 } poison, ptr %43, 0
  %45 = insertvalue { ptr, i32 } %44, i32 %42, 1
  resume { ptr, i32 } %45

46:                                               ; preds = %32
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #16
  unreachable

49:                                               ; preds = %30
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712IGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #12
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(61) %0) local_unnamed_addr #1 comdat align 2 !prof !449 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !516
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #1 comdat align 2 !prof !453 {
  store ptr %1, ptr %0, align 8, !tbaa !519
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !521
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !521
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #14
  store i8 1, ptr %2, align 1, !tbaa !465
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %7

7:                                                ; preds = %57, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %8 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
          to label %9 unwind label %14

9:                                                ; preds = %7
  switch i32 %8, label %47 [
    i32 1, label %10
    i32 4, label %17
    i32 0, label %29
    i32 2, label %37
    i32 3, label %38
    i32 5, label %39
    i32 6, label %40
  ], !prof !522

10:                                               ; preds = %9
  %11 = load ptr, ptr %0, align 8, !tbaa !432
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %5) #13
          to label %54 unwind label %14, !llvm.loop !523

14:                                               ; preds = %53, %48, %47, %45, %43, %39, %38, %37, %33, %32, %10, %7
  %15 = phi i1 [ false, %10 ], [ true, %53 ], [ true, %48 ], [ true, %47 ], [ true, %43 ], [ true, %45 ], [ true, %39 ], [ true, %38 ], [ true, %37 ], [ true, %33 ], [ true, %32 ], [ false, %7 ]
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %58

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %19 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #13
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #13
          to label %22 unwind label %26

22:                                               ; preds = %20
  %23 = load ptr, ptr %21, align 8, !tbaa !463
  %24 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %23) #13
          to label %25 unwind label %26

25:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %24, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %28 unwind label %26

26:                                               ; preds = %25, %22, %20
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %58

28:                                               ; preds = %17, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %82

29:                                               ; preds = %9
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %31 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %30) #13
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280) #13
          to label %33 unwind label %14

33:                                               ; preds = %32, %29
  %34 = load ptr, ptr %0, align 8, !tbaa !432
  %35 = getelementptr inbounds ptr, ptr %34, i64 11
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
          to label %48 unwind label %14

37:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %48 unwind label %14

38:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #13
          to label %48 unwind label %14

39:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
          to label %48 unwind label %14

40:                                               ; preds = %9
  %41 = load i8, ptr %4, align 2, !tbaa !466, !range !428, !noundef !429
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43, !prof !524

43:                                               ; preds = %40
  %44 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #13
          to label %48 unwind label %14

45:                                               ; preds = %40
  %46 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #13
          to label %48 unwind label %14

47:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 60) #13
          to label %48 unwind label %14

48:                                               ; preds = %47, %43, %45, %39, %38, %37, %33
  %49 = load i32, ptr %3, align 4, !tbaa !452
  %50 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %6) #13
          to label %51 unwind label %14

51:                                               ; preds = %48
  %52 = icmp eq i32 %49, %50
  br i1 %52, label %54, label %53, !prof !525

53:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #13
          to label %54 unwind label %14

54:                                               ; preds = %51, %53, %10
  %55 = load i8, ptr %2, align 1, !tbaa !465
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %82, label %57, !prof !526

57:                                               ; preds = %54, %79
  br label %7, !llvm.loop !527

58:                                               ; preds = %26, %14
  %59 = phi { ptr, i32 } [ %16, %14 ], [ %27, %26 ]
  %60 = phi i1 [ %15, %14 ], [ false, %26 ]
  %61 = extractvalue { ptr, i32 } %59, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %62 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #14
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = extractvalue { ptr, i32 } %59, 0
  %66 = call ptr @__cxa_begin_catch(ptr %65) #14
  br i1 %60, label %67, label %70

67:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #13
          to label %70 unwind label %68

68:                                               ; preds = %74, %67
  %69 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %83 unwind label %85

70:                                               ; preds = %67, %64
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %72 = load ptr, ptr %71, align 8, !tbaa !455
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %66) #13
  %76 = load ptr, ptr %72, align 8, !tbaa !432
  %77 = getelementptr inbounds ptr, ptr %76, i64 7
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull align 8 dereferenceable(72) %75) #13
          to label %79 unwind label %68

79:                                               ; preds = %70, %74
  call void @__cxa_end_catch()
  %80 = load i8, ptr %2, align 1, !tbaa !465
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %57, !prof !528

82:                                               ; preds = %79, %54, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  ret i1 true

83:                                               ; preds = %58, %68
  %84 = phi { ptr, i32 } [ %69, %68 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  resume { ptr, i32 } %84

85:                                               ; preds = %68
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #16
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !529
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
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !532
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %2 = load ptr, ptr %0, align 8, !tbaa !519
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !456

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !521
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !456

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !521
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !432
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !429
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(80) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #16
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = load ptr, ptr %0, align 8, !tbaa !533
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !535 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !536
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !537 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !538
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !541 {
  %3 = alloca i8, align 1
  store i8 1, ptr %1, align 1, !tbaa !465
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  br i1 %5, label %6, label %14, !prof !542

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 62) #13
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 939, i32 noundef 77, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  br label %348

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %16 = load i8, ptr %15, align 2, !tbaa !466, !range !428, !noundef !429
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18, !prof !543

18:                                               ; preds = %14
  %19 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  br label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %22 = load i32, ptr %21, align 4, !tbaa !477
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ]
  %25 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !434
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31, !prof !544

28:                                               ; preds = %23
  %29 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  %30 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  br label %35

31:                                               ; preds = %23
  %32 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  %33 = load ptr, ptr %32, align 8, !tbaa !463
  %34 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %33) #13
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi ptr [ %30, %28 ], [ %32, %31 ]
  %37 = phi ptr [ %29, %28 ], [ %34, %31 ]
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %39 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %38, ptr noundef %37) #13
  br i1 %39, label %41, label %40, !prof !545

40:                                               ; preds = %35
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %37, ptr noundef null, ptr noundef null, ptr noundef null) #13
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %38, i16 noundef zeroext 62) #13
  br label %347

41:                                               ; preds = %35
  %42 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  %43 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %36, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !546
  %45 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %38) #13
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %48, label %47, !prof !545

47:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278) #13
  br label %48

48:                                               ; preds = %47, %41
  %49 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %38, i1 noundef zeroext false) #13
  %50 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %38, i16 noundef zeroext 62) #13
  br i1 %50, label %54, label %51, !prof !545

51:                                               ; preds = %48
  %52 = load ptr, ptr %36, align 8, !tbaa !463
  %53 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %52) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %53, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, ptr %25, align 4, !tbaa !434
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %92, !prof !544

57:                                               ; preds = %54
  %58 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %59 = load ptr, ptr %58, align 8, !tbaa !510
  %60 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %59) #13
  %61 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %62 = zext i1 %60 to i8
  store i8 %62, ptr %61, align 1, !tbaa !547
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %64 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %90, label %66, !prof !548

66:                                               ; preds = %57
  %67 = load ptr, ptr %36, align 8, !tbaa !463
  %68 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %67) #13
  br i1 %68, label %69, label %90, !prof !549

69:                                               ; preds = %66
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %71 = load ptr, ptr %70, align 8, !tbaa !482
  %72 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %71) #13
  %73 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 6
  store ptr %72, ptr %73, align 8, !tbaa !550
  %74 = icmp eq ptr %72, null
  br i1 %74, label %75, label %78, !prof !551

75:                                               ; preds = %69
  %76 = load ptr, ptr %70, align 8, !tbaa !482
  %77 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %76) #13
  br label %78

78:                                               ; preds = %69, %75
  %79 = phi ptr [ %77, %75 ], [ null, %69 ]
  %80 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  store ptr %79, ptr %80, align 8
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %82 = load ptr, ptr %81, align 8, !tbaa !552
  %83 = icmp eq ptr %82, null
  br i1 %83, label %92, label %84, !prof !549

84:                                               ; preds = %78
  %85 = load ptr, ptr %70, align 8, !tbaa !482
  %86 = tail call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(186) %85) #13
  %87 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %86, ptr %87, align 8, !tbaa !553
  %88 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %86, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #13
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  store ptr null, ptr %87, align 8, !tbaa !553
  br label %92

90:                                               ; preds = %66, %57
  %91 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %91, i8 0, i64 24, i1 false)
  br label %92

92:                                               ; preds = %90, %84, %89, %78, %54
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %94 = load i8, ptr %93, align 8, !tbaa !458, !range !428, !noundef !429
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %215, label %96, !prof !554

96:                                               ; preds = %92
  %97 = load i32, ptr %25, align 4, !tbaa !434
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %128, !prof !548

99:                                               ; preds = %96
  %100 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %36, i64 0, i32 9
  %101 = load i8, ptr %100, align 1, !tbaa !555, !range !428, !noundef !429
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %36, align 8, !tbaa !463
  %105 = tail call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %104) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %109 = load ptr, ptr %108, align 8, !tbaa !482
  %110 = load ptr, ptr %36, align 8, !tbaa !463
  %111 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %110) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %109, i32 noundef 110, ptr noundef %111, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %112

112:                                              ; preds = %107, %103, %99
  %113 = load i32, ptr %25, align 4, !tbaa !434
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128, !prof !528

115:                                              ; preds = %112
  %116 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %36, i64 0, i32 10
  %117 = load i8, ptr %116, align 2, !tbaa !556, !range !428, !noundef !429
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %36, align 8, !tbaa !463
  %121 = tail call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %120) #13
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %125 = load ptr, ptr %124, align 8, !tbaa !482
  %126 = load ptr, ptr %36, align 8, !tbaa !463
  %127 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %126) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %125, i32 noundef 113, ptr noundef %127, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %128

128:                                              ; preds = %96, %123, %119, %115, %112
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %130 = load ptr, ptr %129, align 8, !tbaa !482
  %131 = load ptr, ptr %36, align 8, !tbaa !463
  %132 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %36, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !557
  %134 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %36, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !558
  %136 = load ptr, ptr %130, align 8, !tbaa !432
  %137 = getelementptr inbounds ptr, ptr %136, i64 2
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef i32 %138(ptr noundef nonnull align 8 dereferenceable(40) %130, ptr noundef %131, ptr noundef %133, i32 noundef %135) #13
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %141, label %171, !prof !548

141:                                              ; preds = %128
  %142 = load i32, ptr %134, align 8, !tbaa !558
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load ptr, ptr %129, align 8, !tbaa !482
  %146 = load ptr, ptr %36, align 8, !tbaa !463
  %147 = load ptr, ptr %146, align 8, !tbaa !432
  %148 = getelementptr inbounds ptr, ptr %147, i64 15
  %149 = load ptr, ptr %148, align 8
  %150 = tail call noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(33) %146) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %145, i32 noundef 16, ptr noundef %150, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %171

151:                                              ; preds = %141
  %152 = icmp ult i32 %139, %142
  %153 = load ptr, ptr %129, align 8, !tbaa !482
  br i1 %152, label %160, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %36, align 8, !tbaa !463
  %156 = load ptr, ptr %155, align 8, !tbaa !432
  %157 = getelementptr inbounds ptr, ptr %156, i64 15
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(33) %155) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %153, i32 noundef 21, ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %171

160:                                              ; preds = %151
  %161 = load ptr, ptr %132, align 8, !tbaa !557
  %162 = zext nneg i32 %139 to i64
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !481
  %165 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %164) #13
  %166 = load ptr, ptr %36, align 8, !tbaa !463
  %167 = load ptr, ptr %166, align 8, !tbaa !432
  %168 = getelementptr inbounds ptr, ptr %167, i64 15
  %169 = load ptr, ptr %168, align 8
  %170 = tail call noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(33) %166) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %153, i32 noundef 7, ptr noundef %165, ptr noundef %170, ptr noundef null, ptr noundef null) #13
  br label %171

171:                                              ; preds = %144, %160, %154, %128
  %172 = load i32, ptr %25, align 4, !tbaa !434
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %229, !prof !549

174:                                              ; preds = %171
  %175 = load ptr, ptr %129, align 8, !tbaa !482
  %176 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %175) #13
  br i1 %176, label %177, label %179, !prof !548

177:                                              ; preds = %174
  %178 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %178, align 1, !tbaa !547
  br label %193

179:                                              ; preds = %174
  %180 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !559
  %182 = icmp eq ptr %181, null
  br i1 %182, label %193, label %183, !prof !560

183:                                              ; preds = %179
  %184 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %181) #13
  %185 = icmp eq i32 %184, 25
  br i1 %185, label %186, label %193, !prof !561

186:                                              ; preds = %183
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %188 = load ptr, ptr %187, align 8, !tbaa !562
  %189 = load ptr, ptr %188, align 8, !tbaa !432
  %190 = getelementptr inbounds ptr, ptr %189, i64 11
  %191 = load ptr, ptr %190, align 8
  %192 = tail call noundef ptr %191(ptr noundef nonnull align 8 dereferenceable(16) %188) #13
  br label %193

193:                                              ; preds = %179, %183, %186, %177
  %194 = phi ptr [ null, %177 ], [ %192, %186 ], [ null, %183 ], [ null, %179 ]
  %195 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %196 = load ptr, ptr %195, align 8, !tbaa !552
  %197 = icmp eq ptr %196, null
  br i1 %197, label %207, label %198, !prof !549

198:                                              ; preds = %193
  %199 = load ptr, ptr %129, align 8, !tbaa !482
  %200 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %199) #13
  %201 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  %202 = zext i1 %200 to i8
  store i8 %202, ptr %201, align 8, !tbaa !563
  br i1 %200, label %203, label %207

203:                                              ; preds = %198
  %204 = load ptr, ptr %36, align 8, !tbaa !463
  %205 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %204) #13
  %206 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %205, ptr %206, align 8, !tbaa !553
  br label %207

207:                                              ; preds = %198, %203, %193
  %208 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %208, label %209, label %215, !prof !549

209:                                              ; preds = %207
  %210 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %211 = load ptr, ptr %210, align 8, !tbaa !467
  %212 = load ptr, ptr %36, align 8, !tbaa !463
  %213 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  %214 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %213) #13
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %211, ptr noundef %212, ptr noundef %214) #13
  br label %215

215:                                              ; preds = %209, %207, %92
  %216 = phi ptr [ %194, %207 ], [ %194, %209 ], [ null, %92 ]
  %217 = load i32, ptr %25, align 4, !tbaa !434
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %229, !prof !564

219:                                              ; preds = %215
  %220 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %221 = load ptr, ptr %220, align 8, !tbaa !552
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223, !prof !549

223:                                              ; preds = %219
  %224 = load ptr, ptr %36, align 8, !tbaa !463
  tail call void @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %224, ptr noundef %216) #13
  br label %225

225:                                              ; preds = %223, %219
  %226 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %227 = load ptr, ptr %226, align 8, !tbaa !482
  tail call void @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv(ptr noundef nonnull align 8 dereferenceable(186) %227) #13
  %228 = load i32, ptr %25, align 4, !tbaa !434
  br label %229

229:                                              ; preds = %171, %225, %215
  %230 = phi i32 [ %172, %171 ], [ %228, %225 ], [ %217, %215 ]
  %231 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %232 = load ptr, ptr %231, align 8, !tbaa !455
  %233 = icmp eq ptr %232, null
  br i1 %233, label %257, label %234, !prof !542

234:                                              ; preds = %229
  %235 = icmp eq i32 %230, 1
  br i1 %235, label %236, label %243, !prof !544

236:                                              ; preds = %234
  %237 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %36, i64 0, i32 16
  %238 = load i32, ptr %237, align 4, !tbaa !565
  %239 = icmp eq i32 %238, -1
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  br i1 %239, label %242, label %241, !prof !549

241:                                              ; preds = %236
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %240, ptr noundef %37, i32 noundef %238) #13
  br label %248

242:                                              ; preds = %236
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %240) #13
  br label %248

243:                                              ; preds = %234
  %244 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %245 = load ptr, ptr %36, align 8, !tbaa !463
  %246 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %245) #13
  %247 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %246) #13
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %244, ptr noundef %247) #13
  br label %248

248:                                              ; preds = %241, %242, %243
  %249 = load ptr, ptr %231, align 8, !tbaa !455
  %250 = load ptr, ptr %36, align 8, !tbaa !463
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %252 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %251) #13
  %253 = load ptr, ptr %249, align 8, !tbaa !432
  %254 = getelementptr inbounds ptr, ptr %253, i64 6
  %255 = load ptr, ptr %254, align 8
  tail call void %255(ptr noundef nonnull align 8 dereferenceable(8) %249, ptr noundef nonnull align 8 dereferenceable(33) %250, i32 noundef %24, i1 noundef zeroext %42, ptr noundef %252) #13
  %256 = load i32, ptr %25, align 4, !tbaa !434
  br label %257

257:                                              ; preds = %248, %229
  %258 = phi i32 [ %256, %248 ], [ %230, %229 ]
  %259 = icmp ne i32 %258, 1
  %260 = or i1 %42, %259
  br i1 %260, label %274, label %261, !prof !566

261:                                              ; preds = %257
  %262 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %263 = load ptr, ptr %262, align 8, !tbaa !510
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  %264 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %263) #13
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %269, label %266, !prof !567

266:                                              ; preds = %261
  %267 = load ptr, ptr %262, align 8, !tbaa !510
  %268 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %267) #13
  br i1 %268, label %272, label %269, !prof !567

269:                                              ; preds = %266, %261
  %270 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %271 = load i8, ptr %270, align 1, !tbaa !547, !range !428, !noundef !429
  br label %272

272:                                              ; preds = %269, %266
  %273 = phi i8 [ 1, %266 ], [ %271, %269 ]
  store i8 %273, ptr %3, align 1, !tbaa !465
  call void @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb(ptr noundef nonnull align 8 dereferenceable(40) %263, ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  br label %274

274:                                              ; preds = %257, %272
  %275 = xor i1 %42, true
  %276 = zext i1 %275 to i8
  store i8 %276, ptr %1, align 1, !tbaa !465
  br i1 %42, label %347, label %277, !prof !568

277:                                              ; preds = %274
  %278 = load i8, ptr %15, align 2, !tbaa !466, !range !428, !noundef !429
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %344, label %280, !prof !569

280:                                              ; preds = %277
  %281 = call noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  %282 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %281, ptr %282, align 8, !tbaa !478
  %283 = load ptr, ptr %281, align 8, !tbaa !432
  %284 = getelementptr inbounds ptr, ptr %283, i64 5
  %285 = load ptr, ptr %284, align 8
  %286 = call noundef i32 %285(ptr noundef nonnull align 8 dereferenceable(8) %281) #13
  store i32 %286, ptr %25, align 4, !tbaa !434
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %310, !prof !570

288:                                              ; preds = %280
  %289 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %290 = load ptr, ptr %289, align 8, !tbaa !482
  %291 = load ptr, ptr %290, align 8, !tbaa !432
  %292 = getelementptr inbounds ptr, ptr %291, i64 13
  %293 = load ptr, ptr %292, align 8
  %294 = call noundef zeroext i1 %293(ptr noundef nonnull align 8 dereferenceable(40) %290) #13
  br i1 %294, label %308, label %295, !prof !571

295:                                              ; preds = %288
  %296 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %297 = load i8, ptr %296, align 1, !tbaa !572, !range !428, !noundef !429
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %295
  %300 = call ptr @__cxa_allocate_exception(i64 48) #14
  %301 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %302 = load ptr, ptr %301, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %300, ptr noundef nonnull @.str, i32 noundef 1198, i32 noundef 158, ptr noundef %302) #13
          to label %303 unwind label %304

303:                                              ; preds = %299
  call void @__cxa_throw(ptr nonnull %300, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

304:                                              ; preds = %299
  %305 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %300) #14
  br label %348

306:                                              ; preds = %295
  %307 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  br label %333

308:                                              ; preds = %288
  %309 = load i32, ptr %25, align 4, !tbaa !434
  br label %310

310:                                              ; preds = %308, %280
  %311 = phi i32 [ %309, %308 ], [ %286, %280 ]
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %337, !prof !573

313:                                              ; preds = %310
  %314 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %315 = load ptr, ptr %314, align 8, !tbaa !482
  %316 = load ptr, ptr %315, align 8, !tbaa !432
  %317 = getelementptr inbounds ptr, ptr %316, i64 12
  %318 = load ptr, ptr %317, align 8
  %319 = call noundef zeroext i1 %318(ptr noundef nonnull align 8 dereferenceable(40) %315) #13
  br i1 %319, label %337, label %320, !prof !574

320:                                              ; preds = %313
  %321 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %322 = load i8, ptr %321, align 1, !tbaa !572, !range !428, !noundef !429
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %320
  %325 = call ptr @__cxa_allocate_exception(i64 48) #14
  %326 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %327 = load ptr, ptr %326, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %325, ptr noundef nonnull @.str, i32 noundef 1205, i32 noundef 44, ptr noundef %327) #13
          to label %328 unwind label %329

328:                                              ; preds = %324
  call void @__cxa_throw(ptr nonnull %325, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

329:                                              ; preds = %324
  %330 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %325) #14
  br label %348

331:                                              ; preds = %320
  %332 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  br label %333

333:                                              ; preds = %306, %331
  %334 = phi ptr [ %332, %331 ], [ %307, %306 ]
  %335 = phi ptr [ %314, %331 ], [ %289, %306 ]
  %336 = load ptr, ptr %334, align 8, !tbaa !481
  store ptr %336, ptr %335, align 8, !tbaa !482
  br label %337

337:                                              ; preds = %333, %310, %313
  %338 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %339 = load ptr, ptr %338, align 8, !tbaa !482
  %340 = load ptr, ptr %282, align 8, !tbaa !478
  %341 = load ptr, ptr %339, align 8, !tbaa !432
  %342 = getelementptr inbounds ptr, ptr %341, i64 11
  %343 = load ptr, ptr %342, align 8
  call void %343(ptr noundef nonnull align 8 dereferenceable(40) %339, ptr noundef %340) #13
  br label %344

344:                                              ; preds = %337, %277
  %345 = call noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #13
  %346 = zext i1 %345 to i8
  store i8 %346, ptr %93, align 8, !tbaa !458
  br label %347

347:                                              ; preds = %274, %344, %40
  ret void

348:                                              ; preds = %304, %329, %12
  %349 = phi { ptr, i32 } [ %13, %12 ], [ %330, %329 ], [ %305, %304 ]
  resume { ptr, i32 } %349
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !575 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %"class.xercesc_2_7::QName", align 8
  %6 = alloca [2 x i16], align 4
  %7 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  store i8 1, ptr %1, align 1, !tbaa !465
  %8 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %11 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %3) #13
  br i1 %11, label %18, label %12, !prof !576

12:                                               ; preds = %2
  %13 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183) #13
  br label %17

15:                                               ; preds = %12
  %16 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %17

17:                                               ; preds = %15, %14
  call void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 60) #13
  br label %806

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %20 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #13
  %21 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  %22 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !489
  %25 = call noundef i32 @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 1 dereferenceable(1) %4) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 1
  %29 = select i1 %20, i1 true, i1 %28
  br i1 %29, label %57, label %30, !prof !577

30:                                               ; preds = %18
  %31 = call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #13
  %32 = load ptr, ptr %31, align 8, !tbaa !463
  %33 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %32) #13
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %35 = load i8, ptr %34, align 8, !tbaa !458, !range !428, !noundef !429
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37, !prof !578

37:                                               ; preds = %30
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %39 = load ptr, ptr %38, align 8, !tbaa !482
  %40 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %39) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42, !prof !578

42:                                               ; preds = %37
  %43 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %40) #13
  br label %46

44:                                               ; preds = %30
  %45 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %32) #13
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi ptr [ %40, %42 ], [ %45, %44 ]
  %48 = phi i32 [ %43, %42 ], [ %33, %44 ]
  switch i32 %48, label %57 [
    i32 4, label %49
    i32 3, label %49
    i32 2, label %49
    i32 1, label %56
  ]

49:                                               ; preds = %46, %46, %46
  %50 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %47, i1 noundef zeroext false) #13
  %51 = load ptr, ptr %50, align 8, !tbaa !432
  %52 = getelementptr inbounds ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %50) #13
  %55 = call noundef i32 @_ZN11xercesc_2_79ElemStack15getCurrentScopeEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #13
  br label %57

56:                                               ; preds = %37, %46
  br label %57

57:                                               ; preds = %49, %56, %46, %18
  %58 = phi i8 [ 0, %18 ], [ 0, %49 ], [ 1, %56 ], [ 0, %46 ]
  %59 = phi i32 [ -2, %18 ], [ %55, %49 ], [ -2, %56 ], [ -2, %46 ]
  %60 = phi ptr [ null, %18 ], [ %50, %49 ], [ null, %56 ], [ null, %46 ]
  %61 = phi ptr [ null, %18 ], [ %54, %49 ], [ null, %56 ], [ null, %46 ]
  %62 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #13
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %64 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %65 = icmp ne i8 %64, 0
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %19, i1 noundef zeroext %65) #13
  %66 = load i32, ptr %3, align 4, !tbaa !452
  call void @_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi(ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef %66) #13
  br i1 %20, label %67, label %86, !prof !579

67:                                               ; preds = %57
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %69 = load i8, ptr %68, align 2, !tbaa !580, !range !428, !noundef !429
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %86, label %71, !prof !581

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %73 = load ptr, ptr %72, align 8, !tbaa !582
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %86, label %79, !prof !583

79:                                               ; preds = %71
  br i1 %74, label %82, label %80

80:                                               ; preds = %79
  call void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %73) #13
  %81 = load ptr, ptr %75, align 8, !tbaa !584
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi ptr [ %81, %80 ], [ %76, %79 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %83, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #13
  br label %86

86:                                               ; preds = %71, %82, %85, %67, %57
  %87 = icmp eq i32 %25, 0
  br i1 %87, label %89, label %88, !prof !585

88:                                               ; preds = %86
  call void @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1024) %0, i32 noundef %25) #13
  br label %89

89:                                               ; preds = %88, %86
  %90 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  %91 = load i32, ptr %26, align 4, !tbaa !434
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %152, !prof !586

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %95 = load i8, ptr %94, align 2, !tbaa !587, !range !428, !noundef !429
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %148, !prof !588

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %99 = load ptr, ptr %98, align 8, !tbaa !478
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %101 = load i32, ptr %100, align 4, !tbaa !477
  %102 = load ptr, ptr %99, align 8, !tbaa !432
  %103 = getelementptr inbounds ptr, ptr %102, i64 11
  %104 = load ptr, ptr %103, align 8
  %105 = call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %99, i32 noundef %101, ptr noundef null, ptr noundef %90, i32 noundef -2) #13
  %106 = icmp eq ptr %105, null
  br i1 %106, label %148, label %107, !prof !588

107:                                              ; preds = %97
  %108 = load ptr, ptr %105, align 8, !tbaa !432
  %109 = getelementptr inbounds ptr, ptr %108, i64 8
  %110 = load ptr, ptr %109, align 8
  %111 = call noundef zeroext i1 %110(ptr noundef nonnull align 8 dereferenceable(33) %105) #13
  br i1 %111, label %112, label %152

112:                                              ; preds = %107
  %113 = load ptr, ptr %105, align 8, !tbaa !432
  %114 = getelementptr inbounds ptr, ptr %113, i64 6
  %115 = load ptr, ptr %114, align 8
  %116 = call noundef nonnull align 8 dereferenceable(16) ptr %115(ptr noundef nonnull align 8 dereferenceable(33) %105) #13
  %117 = load ptr, ptr %116, align 8, !tbaa !432
  %118 = getelementptr inbounds ptr, ptr %117, i64 13
  %119 = load ptr, ptr %118, align 8
  %120 = call noundef i32 %119(ptr noundef nonnull align 8 dereferenceable(16) %116) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %152, label %122

122:                                              ; preds = %112, %141
  %123 = phi i32 [ %142, %141 ], [ 0, %112 ]
  %124 = load ptr, ptr %116, align 8, !tbaa !432
  %125 = getelementptr inbounds ptr, ptr %124, i64 14
  %126 = load ptr, ptr %125, align 8
  %127 = call noundef nonnull align 8 dereferenceable(56) ptr %126(ptr noundef nonnull align 8 dereferenceable(16) %116, i32 noundef %123) #13
  %128 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %127) #13
  %129 = icmp ult i32 %128, 2
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load ptr, ptr %127, align 8, !tbaa !432
  %132 = getelementptr inbounds ptr, ptr %131, i64 5
  %133 = load ptr, ptr %132, align 8
  %134 = call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(56) %127) #13
  %135 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %134, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6) #13
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %130
  %138 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %134, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #13
  br i1 %138, label %139, label %141

139:                                              ; preds = %137, %130
  %140 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %127) #13
  call void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %134, ptr noundef %140) #13
  br label %141

141:                                              ; preds = %137, %139, %122
  %142 = add nuw i32 %123, 1
  %143 = load ptr, ptr %116, align 8, !tbaa !432
  %144 = getelementptr inbounds ptr, ptr %143, i64 13
  %145 = load ptr, ptr %144, align 8
  %146 = call noundef i32 %145(ptr noundef nonnull align 8 dereferenceable(16) %116) #13
  %147 = icmp ult i32 %142, %146
  br i1 %147, label %122, label %152, !llvm.loop !589

148:                                              ; preds = %97, %93
  %149 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %150 = load ptr, ptr %149, align 8, !tbaa !479
  %151 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %150, ptr noundef %90) #13
  br label %152

152:                                              ; preds = %141, %112, %107, %148, %89
  %153 = phi ptr [ %151, %148 ], [ null, %89 ], [ %105, %107 ], [ %105, %112 ], [ %105, %141 ]
  %154 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %155 = load i32, ptr %3, align 4, !tbaa !452
  %156 = call noundef i32 @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %90, ptr noundef nonnull align 8 dereferenceable(40) %154, i16 noundef signext 1, i32 noundef %155) #13
  %157 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %158 = icmp eq i8 %157, 0
  %159 = icmp eq ptr %61, null
  br i1 %159, label %174, label %160, !prof !576

160:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %161 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %154) #13
  %162 = load i32, ptr %3, align 4, !tbaa !452
  %163 = sext i32 %162 to i64
  %164 = getelementptr i16, ptr %90, i64 %163
  %165 = getelementptr i16, ptr %164, i64 1
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %167 = load ptr, ptr %166, align 8, !tbaa !460
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %161, ptr noundef %165, i32 noundef %156, ptr noundef %167) #13
  %168 = add i32 %62, -1
  %169 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %5, ptr noundef nonnull %61, ptr noundef %60, i32 noundef %168) #13
          to label %170 unwind label %172

170:                                              ; preds = %160
  %171 = zext i1 %169 to i8
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  br label %174

172:                                              ; preds = %160
  %173 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  br label %804

174:                                              ; preds = %170, %152
  %175 = phi i8 [ %171, %170 ], [ %58, %152 ]
  %176 = load i32, ptr %3, align 4, !tbaa !452
  %177 = sext i32 %176 to i64
  %178 = getelementptr i16, ptr %90, i64 %177
  %179 = getelementptr i16, ptr %178, i64 1
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %181 = load i8, ptr %180, align 2, !tbaa !580, !range !428, !noundef !429
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %284, label %183, !prof !586

183:                                              ; preds = %174
  %184 = load i32, ptr %26, align 4, !tbaa !434
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %195, !prof !590

186:                                              ; preds = %183
  %187 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %156) #13
  %188 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %187) #13
  br i1 %188, label %193, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %191 = load ptr, ptr %190, align 8, !tbaa !482
  %192 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %156) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %191, i32 noundef 72, ptr noundef %192, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %193

193:                                              ; preds = %189, %186
  %194 = load i32, ptr %26, align 4, !tbaa !434
  br label %195

195:                                              ; preds = %193, %183
  %196 = phi i32 [ %194, %193 ], [ %184, %183 ]
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %284, !prof !591

198:                                              ; preds = %195
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %200 = load ptr, ptr %199, align 8, !tbaa !478
  %201 = load ptr, ptr %200, align 8, !tbaa !432
  %202 = getelementptr inbounds ptr, ptr %201, i64 11
  %203 = load ptr, ptr %202, align 8
  %204 = call noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(8) %200, i32 noundef %156, ptr noundef %179, ptr noundef %90, i32 noundef %59) #13
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %335, !prof !592

206:                                              ; preds = %198
  %207 = icmp ne i32 %59, -2
  %208 = load ptr, ptr %199, align 8, !tbaa !478
  %209 = load ptr, ptr %208, align 8, !tbaa !432
  %210 = getelementptr inbounds ptr, ptr %209, i64 6
  %211 = load ptr, ptr %210, align 8
  %212 = call noundef ptr %211(ptr noundef nonnull align 8 dereferenceable(8) %208) #13
  %213 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %214 = load ptr, ptr %213, align 8, !tbaa !593
  %215 = load ptr, ptr %214, align 8, !tbaa !432
  %216 = getelementptr inbounds ptr, ptr %215, i64 9
  %217 = load ptr, ptr %216, align 8
  %218 = call noundef i32 %217(ptr noundef nonnull align 8 dereferenceable(40) %214, ptr noundef %212) #13
  %219 = icmp eq i32 %218, %156
  br i1 %219, label %223, label %220, !prof !594

220:                                              ; preds = %206
  %221 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %156) #13
  %222 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %221) #13
  br i1 %222, label %224, label %232

223:                                              ; preds = %206
  br i1 %207, label %224, label %280, !prof !594

224:                                              ; preds = %223, %220
  %225 = load ptr, ptr %199, align 8, !tbaa !478
  %226 = load ptr, ptr %225, align 8, !tbaa !432
  %227 = getelementptr inbounds ptr, ptr %226, i64 11
  %228 = load ptr, ptr %227, align 8
  %229 = call noundef ptr %228(ptr noundef nonnull align 8 dereferenceable(8) %225, i32 noundef %156, ptr noundef %179, ptr noundef %90, i32 noundef -2) #13
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %335, !prof !595

231:                                              ; preds = %224
  br i1 %207, label %240, label %277

232:                                              ; preds = %220
  %233 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %234 = load ptr, ptr %233, align 8, !tbaa !482
  %235 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %156) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %234, i32 noundef 72, ptr noundef %235, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %236 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %156, %237
  %239 = select i1 %207, i1 %238, i1 false
  br i1 %239, label %259, label %278

240:                                              ; preds = %231
  %241 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %242 = load i32, ptr %241, align 4, !tbaa !477
  %243 = icmp eq i32 %156, %242
  br i1 %219, label %244, label %258

244:                                              ; preds = %240
  br i1 %243, label %280, label %245

245:                                              ; preds = %244
  %246 = load ptr, ptr %199, align 8, !tbaa !478
  %247 = load ptr, ptr %246, align 8, !tbaa !432
  %248 = getelementptr inbounds ptr, ptr %247, i64 11
  %249 = load ptr, ptr %248, align 8
  %250 = call noundef ptr %249(ptr noundef nonnull align 8 dereferenceable(8) %246, i32 noundef %242, ptr noundef %179, ptr noundef %90, i32 noundef %59) #13
  %251 = icmp eq ptr %250, null
  br i1 %251, label %280, label %252

252:                                              ; preds = %245
  %253 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %250) #13
  %254 = icmp eq i32 %253, 5
  %255 = load i8, ptr %63, align 8, !range !428
  %256 = icmp eq i8 %255, 0
  %257 = select i1 %254, i1 true, i1 %256
  br i1 %257, label %335, label %313

258:                                              ; preds = %240
  br i1 %243, label %259, label %278

259:                                              ; preds = %232, %258
  %260 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %212) #13
  br i1 %260, label %261, label %274

261:                                              ; preds = %259
  %262 = load ptr, ptr %199, align 8, !tbaa !478
  %263 = load ptr, ptr %262, align 8, !tbaa !432
  %264 = getelementptr inbounds ptr, ptr %263, i64 11
  %265 = load ptr, ptr %264, align 8
  %266 = call noundef ptr %265(ptr noundef nonnull align 8 dereferenceable(8) %262, i32 noundef %218, ptr noundef %179, ptr noundef %90, i32 noundef %59) #13
  %267 = icmp eq ptr %266, null
  br i1 %267, label %278, label %268

268:                                              ; preds = %261
  %269 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %266) #13
  %270 = icmp eq i32 %269, 5
  %271 = load i8, ptr %63, align 8, !range !428
  %272 = icmp eq i8 %271, 0
  %273 = select i1 %270, i1 true, i1 %272
  br i1 %273, label %335, label %313

274:                                              ; preds = %259
  %275 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %276 = load ptr, ptr %275, align 8, !tbaa !482
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %276, i32 noundef 72, ptr noundef %212, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %278

277:                                              ; preds = %231
  br i1 %219, label %280, label %278

278:                                              ; preds = %232, %258, %274, %261, %277
  %279 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %212) #13
  br label %280

280:                                              ; preds = %223, %244, %245, %278, %277
  %281 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  %282 = load ptr, ptr %281, align 8, !tbaa !504
  %283 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %282, ptr noundef %179, i32 noundef %156, i32 noundef -2) #13
  br label %284

284:                                              ; preds = %280, %195, %174
  %285 = phi ptr [ %153, %195 ], [ %153, %174 ], [ %283, %280 ]
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %335, !prof !596

287:                                              ; preds = %284
  %288 = load i32, ptr %26, align 4, !tbaa !434
  switch i32 %288, label %319 [
    i32 0, label %289
    i32 1, label %300
  ], !prof !597

289:                                              ; preds = %287
  %290 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %291 = load ptr, ptr %290, align 8, !tbaa !460
  %292 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %291) #13
  %293 = load ptr, ptr %290, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %292, ptr noundef %90, i32 noundef %156, i32 noundef 1, ptr noundef %293) #13
          to label %294 unwind label %298

294:                                              ; preds = %289
  %295 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %296 = load ptr, ptr %295, align 8, !tbaa !479
  %297 = call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %296, ptr noundef nonnull %292) #13
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %292, i32 noundef %297) #13
  br label %319

298:                                              ; preds = %289
  %299 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %292, ptr noundef %291) #12
  br label %804

300:                                              ; preds = %287
  %301 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %302 = load ptr, ptr %301, align 8, !tbaa !460
  %303 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %302) #13
  %304 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %154) #13
  %305 = load ptr, ptr %301, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %303, ptr noundef %304, ptr noundef %179, i32 noundef %156, i32 noundef 1, i32 noundef -2, ptr noundef %305) #13
          to label %306 unwind label %311

306:                                              ; preds = %300
  %307 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  %308 = load ptr, ptr %307, align 8, !tbaa !504
  %309 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %303) #13
  %310 = call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %308, ptr noundef %309, i32 noundef %156, i32 noundef -2, ptr noundef nonnull %303) #13
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %303, i32 noundef %310) #13
  br label %319

311:                                              ; preds = %300
  %312 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %303, ptr noundef %302) #12
  br label %804

313:                                              ; preds = %268, %252
  %314 = phi ptr [ %250, %252 ], [ %266, %268 ]
  %315 = phi i32 [ 80, %252 ], [ 79, %268 ]
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %317 = load ptr, ptr %316, align 8, !tbaa !482
  %318 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %314) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %317, i32 noundef %315, ptr noundef %318, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %335

319:                                              ; preds = %294, %306, %287
  %320 = phi ptr [ null, %287 ], [ %303, %306 ], [ %292, %294 ]
  %321 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 0, ptr %321, align 1, !tbaa !547
  %322 = and i8 %175, 1
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %325, label %324, !prof !598

324:                                              ; preds = %319
  store i8 0, ptr %63, align 8, !tbaa !458
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %19, i1 noundef zeroext false) #13
  br label %357

325:                                              ; preds = %319
  %326 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %357, label %328, !prof !598

328:                                              ; preds = %325
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %320, i32 noundef 5) #13
  %329 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %330 = load ptr, ptr %329, align 8, !tbaa !482
  %331 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %320) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %330, i32 noundef 2, ptr noundef %331, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %332 = load i32, ptr %26, align 4, !tbaa !434
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %357

334:                                              ; preds = %328
  store i8 1, ptr %321, align 1, !tbaa !547
  br label %357

335:                                              ; preds = %268, %252, %224, %198, %313, %284
  %336 = phi ptr [ %285, %284 ], [ %266, %268 ], [ %250, %252 ], [ %229, %224 ], [ %204, %198 ], [ %314, %313 ]
  %337 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 0, ptr %337, align 1, !tbaa !547
  %338 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %336) #13
  br i1 %338, label %357, label %339, !prof !599

339:                                              ; preds = %335
  %340 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %336) #13
  %341 = icmp eq i32 %340, 0
  %342 = load i32, ptr %26, align 4
  %343 = icmp eq i32 %342, 1
  %344 = select i1 %341, i1 %343, i1 false
  br i1 %344, label %345, label %346, !prof !600

345:                                              ; preds = %339
  store i8 1, ptr %337, align 1, !tbaa !547
  br label %346

346:                                              ; preds = %345, %339
  %347 = and i8 %175, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %350, label %349, !prof !601

349:                                              ; preds = %346
  store i8 0, ptr %63, align 8, !tbaa !458
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %19, i1 noundef zeroext false) #13
  br label %357

350:                                              ; preds = %346
  %351 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %357, label %353, !prof !601

353:                                              ; preds = %350
  %354 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %355 = load ptr, ptr %354, align 8, !tbaa !482
  %356 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %336) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %355, i32 noundef 2, ptr noundef %356, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %357

357:                                              ; preds = %335, %350, %353, %349, %324, %328, %334, %325
  %358 = phi ptr [ %337, %335 ], [ %337, %350 ], [ %337, %353 ], [ %337, %349 ], [ %321, %324 ], [ %321, %328 ], [ %321, %334 ], [ %321, %325 ]
  %359 = phi ptr [ %336, %335 ], [ %336, %350 ], [ %336, %353 ], [ %336, %349 ], [ %320, %324 ], [ %320, %328 ], [ %320, %334 ], [ %320, %325 ]
  %360 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  %361 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
  call void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %359, i32 noundef %361) #13
  call void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef %156) #13
  %362 = load i32, ptr %26, align 4, !tbaa !434
  br i1 %20, label %363, label %379, !prof !579

363:                                              ; preds = %357
  %364 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %365 = load ptr, ptr %364, align 8, !tbaa !478
  %366 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %365, ptr %366, align 8, !tbaa !469
  %367 = icmp eq i32 %362, 1
  br i1 %367, label %370, label %368, !prof !581

368:                                              ; preds = %363
  %369 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  br label %396

370:                                              ; preds = %363
  %371 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %372 = load ptr, ptr %371, align 8, !tbaa !602
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %379, !prof !603

374:                                              ; preds = %370
  %375 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %376 = load ptr, ptr %375, align 8, !tbaa !460
  %377 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %90, ptr noundef %376) #13
  store ptr %377, ptr %371, align 8, !tbaa !602
  %378 = load i32, ptr %26, align 4, !tbaa !434
  br label %379

379:                                              ; preds = %370, %374, %357
  %380 = phi i32 [ 1, %370 ], [ %378, %374 ], [ %362, %357 ]
  %381 = icmp ne i32 %380, 1
  %382 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %383 = load ptr, ptr %382, align 8
  %384 = icmp eq ptr %383, null
  %385 = select i1 %381, i1 true, i1 %384
  br i1 %385, label %396, label %386, !prof !604

386:                                              ; preds = %379
  %387 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 2
  %388 = load i32, ptr %387, align 4, !tbaa !605
  %389 = add nsw i32 %388, 1
  store i32 %389, ptr %387, align 4, !tbaa !605
  %390 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  %391 = load i32, ptr %387, align 4, !tbaa !605
  br i1 %390, label %392, label %394

392:                                              ; preds = %386
  %393 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 4
  store i32 %391, ptr %393, align 4, !tbaa !606
  br label %396

394:                                              ; preds = %386
  %395 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 3
  store i32 %391, ptr %395, align 8, !tbaa !607
  br label %396

396:                                              ; preds = %368, %392, %394, %379
  %397 = phi ptr [ %369, %368 ], [ %382, %392 ], [ %382, %394 ], [ %382, %379 ]
  %398 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %415, label %400, !prof !586

400:                                              ; preds = %396
  %401 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %402 = load ptr, ptr %401, align 8, !tbaa !482
  %403 = load ptr, ptr %402, align 8, !tbaa !432
  %404 = getelementptr inbounds ptr, ptr %403, i64 9
  %405 = load ptr, ptr %404, align 8
  call void %405(ptr noundef nonnull align 8 dereferenceable(40) %402, ptr noundef %359) #13
  %406 = load ptr, ptr %401, align 8, !tbaa !482
  %407 = load ptr, ptr %406, align 8, !tbaa !432
  %408 = getelementptr inbounds ptr, ptr %407, i64 13
  %409 = load ptr, ptr %408, align 8
  %410 = call noundef zeroext i1 %409(ptr noundef nonnull align 8 dereferenceable(40) %406) #13
  br i1 %410, label %411, label %415, !prof !591

411:                                              ; preds = %400
  %412 = load ptr, ptr %401, align 8, !tbaa !482
  %413 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %412) #13
  br i1 %413, label %414, label %415, !prof !590

414:                                              ; preds = %411
  store i8 1, ptr %358, align 1, !tbaa !547
  br label %415

415:                                              ; preds = %400, %414, %411, %396
  %416 = load i32, ptr %26, align 4, !tbaa !434
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %475, !prof !608

418:                                              ; preds = %415
  %419 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  call void @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %419) #13
  %420 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %426, label %422, !prof !590

422:                                              ; preds = %418
  %423 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %424 = load ptr, ptr %423, align 8, !tbaa !482
  %425 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %424) #13
  br label %428

426:                                              ; preds = %418
  %427 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %359) #13
  br label %428

428:                                              ; preds = %426, %422
  %429 = phi ptr [ %425, %422 ], [ %427, %426 ]
  %430 = icmp eq ptr %429, null
  br i1 %430, label %464, label %431, !prof !609

431:                                              ; preds = %428
  %432 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %429) #13
  %433 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(176) %429) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 35, ptr %6, align 4
  %434 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %433, ptr noundef nonnull %6) #13
  br i1 %434, label %463, label %435, !prof !610

435:                                              ; preds = %431
  %436 = call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %433, i16 noundef zeroext 44) #13
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %463, !prof !611

438:                                              ; preds = %435
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  %439 = add nuw nsw i32 %436, 1
  %440 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %441 = load ptr, ptr %440, align 8, !tbaa !460
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %439, ptr noundef %441) #13
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %433, i32 noundef %436) #13
          to label %442 unwind label %456

442:                                              ; preds = %438
  %443 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  %444 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %443) #13
          to label %445 unwind label %458

445:                                              ; preds = %442
  br i1 %444, label %460, label %446, !prof !611

446:                                              ; preds = %445
  %447 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %460, label %449, !prof !611

449:                                              ; preds = %446
  %450 = and i8 %175, 1
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %449
  %453 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %454 = load ptr, ptr %453, align 8, !tbaa !482
  %455 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %454, i32 noundef 72, ptr noundef %455, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %460 unwind label %458

456:                                              ; preds = %438
  %457 = landingpad { ptr, i32 }
          cleanup
  br label %461

458:                                              ; preds = %452, %442
  %459 = landingpad { ptr, i32 }
          cleanup
  br label %461

460:                                              ; preds = %445, %452, %449, %446
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  br label %463

461:                                              ; preds = %458, %456
  %462 = phi { ptr, i32 } [ %459, %458 ], [ %457, %456 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %804

463:                                              ; preds = %435, %460, %431
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %464

464:                                              ; preds = %463, %428
  %465 = phi i32 [ %432, %463 ], [ %59, %428 ]
  call void @_ZN11xercesc_2_79ElemStack15setCurrentScopeEi(ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef %465) #13
  %466 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  %467 = load i32, ptr %466, align 8, !tbaa !487
  %468 = icmp ult i32 %62, %467
  br i1 %468, label %470, label %469, !prof !591

469:                                              ; preds = %464
  call void @_ZN11xercesc_2_712IGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br label %470

470:                                              ; preds = %469, %464
  %471 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %472 = load ptr, ptr %471, align 8, !tbaa !488
  %473 = zext i32 %62 to i64
  %474 = getelementptr inbounds i32, ptr %472, i64 %473
  store i32 0, ptr %474, align 4, !tbaa !452
  br label %475

475:                                              ; preds = %470, %415
  %476 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %477 = load ptr, ptr %476, align 8, !tbaa !478
  call void @_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %477) #13
  br i1 %20, label %478, label %501, !prof !579

478:                                              ; preds = %475
  %479 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %505, label %481, !prof !581

481:                                              ; preds = %478
  %482 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %483 = load ptr, ptr %482, align 8, !tbaa !602
  %484 = icmp eq ptr %483, null
  br i1 %484, label %490, label %485, !prof !451

485:                                              ; preds = %481
  %486 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %90, ptr noundef nonnull %483) #13
  br i1 %486, label %490, label %487, !prof !603

487:                                              ; preds = %485
  %488 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %489 = load ptr, ptr %488, align 8, !tbaa !482
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %489, i32 noundef 5) #13
  br label %490

490:                                              ; preds = %487, %485, %481
  %491 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %492 = load i8, ptr %491, align 1, !tbaa !572, !range !428, !noundef !429
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %505, label %494, !prof !603

494:                                              ; preds = %490
  %495 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %496 = load ptr, ptr %495, align 8, !tbaa !482
  %497 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  %498 = call noundef zeroext i1 @_ZN11xercesc_2_712XMLValidator16checkRootElementEj(ptr noundef nonnull align 8 dereferenceable(40) %496, i32 noundef %497) #13
  br i1 %498, label %505, label %499

499:                                              ; preds = %494
  %500 = load ptr, ptr %495, align 8, !tbaa !482
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %500, i32 noundef 5) #13
  br label %505

501:                                              ; preds = %475
  br i1 %158, label %505, label %502, !prof !612

502:                                              ; preds = %501
  %503 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  %504 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %503, i1 noundef zeroext true) #13
  br label %505

505:                                              ; preds = %501, %502, %478, %499, %494, %490
  %506 = call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %507 = icmp eq ptr %506, null
  br i1 %507, label %514, label %508, !prof !576

508:                                              ; preds = %505
  %509 = load i32, ptr %26, align 4, !tbaa !434
  %510 = icmp eq i32 %509, 1
  br i1 %510, label %511, label %514

511:                                              ; preds = %508
  %512 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %513 = load ptr, ptr %512, align 8, !tbaa !508
  call void @_ZN11xercesc_2_717PSVIAttributeList5resetEv(ptr noundef nonnull align 8 dereferenceable(36) %513) #13
  br label %514

514:                                              ; preds = %511, %508, %505
  %515 = load ptr, ptr %23, align 8, !tbaa !489
  %516 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %517 = load ptr, ptr %516, align 8, !tbaa !613
  %518 = call noundef i32 @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %515, i32 noundef %25, ptr noundef %359, ptr noundef nonnull align 8 dereferenceable(40) %517) #13
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %525, label %520, !prof !585

520:                                              ; preds = %514
  %521 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %522 = load ptr, ptr %521, align 8, !tbaa !506
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %522) #13
  %523 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %524 = load ptr, ptr %523, align 8, !tbaa !507
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %524) #13
  br label %525

525:                                              ; preds = %520, %514
  %526 = load ptr, ptr %476, align 8, !tbaa !478
  %527 = icmp ne ptr %526, null
  %528 = load i32, ptr %26, align 4
  %529 = icmp eq i32 %528, 1
  %530 = select i1 %527, i1 %529, i1 false
  br i1 %530, label %531, label %538, !prof !614

531:                                              ; preds = %525
  %532 = call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %532, label %533, label %538, !prof !591

533:                                              ; preds = %531
  %534 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %535 = load ptr, ptr %534, align 8, !tbaa !467
  %536 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %154) #13
  %537 = load ptr, ptr %516, align 8, !tbaa !613
  call void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48) %535, ptr noundef %359, i32 noundef %62, i32 noundef %156, ptr noundef %536, ptr noundef nonnull align 8 dereferenceable(40) %537, i32 noundef %518) #13
  br label %538

538:                                              ; preds = %533, %531, %525
  %539 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %540 = load ptr, ptr %539, align 8, !tbaa !455
  %541 = icmp eq ptr %540, null
  br i1 %541, label %548, label %542, !prof !615

542:                                              ; preds = %538
  %543 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %154) #13
  %544 = load ptr, ptr %516, align 8, !tbaa !613
  %545 = load ptr, ptr %540, align 8, !tbaa !432
  %546 = getelementptr inbounds ptr, ptr %545, i64 11
  %547 = load ptr, ptr %546, align 8
  call void %547(ptr noundef nonnull align 8 dereferenceable(8) %540, ptr noundef nonnull align 8 dereferenceable(33) %359, i32 noundef %156, ptr noundef %543, ptr noundef nonnull align 8 dereferenceable(40) %544, i32 noundef %518, i1 noundef zeroext false, i1 noundef zeroext %20) #13
  br label %548

548:                                              ; preds = %542, %538
  %549 = load ptr, ptr %397, align 8, !tbaa !552
  %550 = icmp eq ptr %549, null
  br i1 %550, label %570, label %551, !prof !576

551:                                              ; preds = %548
  %552 = load i32, ptr %26, align 4, !tbaa !434
  %553 = icmp eq i32 %552, 1
  br i1 %553, label %554, label %570

554:                                              ; preds = %551
  %555 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  %556 = load ptr, ptr %397, align 8, !tbaa !552
  %557 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %555) #13
  %558 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %559 = load ptr, ptr %558, align 8, !tbaa !593
  %560 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %555) #13
  %561 = load ptr, ptr %559, align 8, !tbaa !432
  %562 = getelementptr inbounds ptr, ptr %561, i64 10
  %563 = load ptr, ptr %562, align 8
  %564 = call noundef ptr %563(ptr noundef nonnull align 8 dereferenceable(40) %559, i32 noundef %560) #13
  %565 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %566 = load ptr, ptr %565, align 8, !tbaa !508
  %567 = load ptr, ptr %556, align 8, !tbaa !432
  %568 = getelementptr inbounds ptr, ptr %567, i64 4
  %569 = load ptr, ptr %568, align 8
  call void %569(ptr noundef nonnull align 8 dereferenceable(8) %556, ptr noundef %557, ptr noundef %564, ptr noundef %566) #13
  br label %570

570:                                              ; preds = %554, %551, %548
  %571 = load i8, ptr %4, align 1, !tbaa !465, !range !428, !noundef !429
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %743, label %573, !prof !616

573:                                              ; preds = %570
  %574 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #13
  %575 = load i32, ptr %26, align 4, !tbaa !434
  %576 = icmp eq i32 %575, 1
  br i1 %576, label %577, label %604, !prof !617

577:                                              ; preds = %573
  %578 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %602, label %580, !prof !618

580:                                              ; preds = %577
  %581 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  br i1 %581, label %582, label %602, !prof !619

582:                                              ; preds = %580
  %583 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %584 = load ptr, ptr %583, align 8, !tbaa !482
  %585 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %584) #13
  %586 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 6
  store ptr %585, ptr %586, align 8, !tbaa !550
  %587 = icmp eq ptr %585, null
  br i1 %587, label %588, label %591, !prof !618

588:                                              ; preds = %582
  %589 = load ptr, ptr %583, align 8, !tbaa !482
  %590 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %589) #13
  br label %591

591:                                              ; preds = %582, %588
  %592 = phi ptr [ %590, %588 ], [ null, %582 ]
  %593 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  store ptr %592, ptr %593, align 8
  %594 = load ptr, ptr %397, align 8, !tbaa !552
  %595 = icmp eq ptr %594, null
  br i1 %595, label %604, label %596, !prof !619

596:                                              ; preds = %591
  %597 = load ptr, ptr %583, align 8, !tbaa !482
  %598 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(186) %597) #13
  %599 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %598, ptr %599, align 8, !tbaa !553
  %600 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %598, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #13
  br i1 %600, label %601, label %604

601:                                              ; preds = %596
  store ptr null, ptr %599, align 8, !tbaa !553
  br label %604

602:                                              ; preds = %580, %577
  %603 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %603, i8 0, i64 24, i1 false)
  br label %604

604:                                              ; preds = %602, %596, %601, %591, %573
  %605 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %660, label %607, !prof !620

607:                                              ; preds = %604
  %608 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %609 = load ptr, ptr %608, align 8, !tbaa !482
  %610 = load ptr, ptr %609, align 8, !tbaa !432
  %611 = getelementptr inbounds ptr, ptr %610, i64 2
  %612 = load ptr, ptr %611, align 8
  %613 = call noundef i32 %612(ptr noundef nonnull align 8 dereferenceable(40) %609, ptr noundef %359, ptr noundef null, i32 noundef 0) #13
  %614 = icmp sgt i32 %613, -1
  br i1 %614, label %615, label %622, !prof !618

615:                                              ; preds = %607
  %616 = load ptr, ptr %608, align 8, !tbaa !482
  %617 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  %618 = load ptr, ptr %359, align 8, !tbaa !432
  %619 = getelementptr inbounds ptr, ptr %618, i64 15
  %620 = load ptr, ptr %619, align 8
  %621 = call noundef ptr %620(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %616, i32 noundef 7, ptr noundef %617, ptr noundef %621, ptr noundef null, ptr noundef null) #13
  br label %622

622:                                              ; preds = %615, %607
  %623 = load i32, ptr %26, align 4, !tbaa !434
  %624 = icmp eq i32 %623, 1
  br i1 %624, label %625, label %660, !prof !619

625:                                              ; preds = %622
  %626 = load ptr, ptr %608, align 8, !tbaa !482
  %627 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %626) #13
  br i1 %627, label %628, label %629, !prof !618

628:                                              ; preds = %625
  store i8 1, ptr %358, align 1, !tbaa !547
  br label %653

629:                                              ; preds = %625
  %630 = load ptr, ptr %397, align 8, !tbaa !552
  %631 = icmp eq ptr %630, null
  br i1 %631, label %639, label %632, !prof !619

632:                                              ; preds = %629
  %633 = load ptr, ptr %608, align 8, !tbaa !482
  %634 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %633) #13
  %635 = zext i1 %634 to i8
  store i8 %635, ptr %360, align 8, !tbaa !563
  br i1 %634, label %636, label %639

636:                                              ; preds = %632
  %637 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %359) #13
  %638 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %637, ptr %638, align 8, !tbaa !553
  br label %639

639:                                              ; preds = %632, %636, %629
  %640 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %641 = load ptr, ptr %640, align 8, !tbaa !559
  %642 = icmp eq ptr %641, null
  br i1 %642, label %653, label %643, !prof !619

643:                                              ; preds = %639
  %644 = call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %641) #13
  %645 = icmp eq i32 %644, 25
  br i1 %645, label %646, label %653

646:                                              ; preds = %643
  %647 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %648 = load ptr, ptr %647, align 8, !tbaa !562
  %649 = load ptr, ptr %648, align 8, !tbaa !432
  %650 = getelementptr inbounds ptr, ptr %649, i64 11
  %651 = load ptr, ptr %650, align 8
  %652 = call noundef ptr %651(ptr noundef nonnull align 8 dereferenceable(16) %648) #13
  br label %653

653:                                              ; preds = %639, %643, %646, %628
  %654 = phi ptr [ null, %628 ], [ %652, %646 ], [ null, %643 ], [ null, %639 ]
  %655 = call noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br i1 %655, label %656, label %660, !prof !619

656:                                              ; preds = %653
  %657 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %658 = load ptr, ptr %657, align 8, !tbaa !467
  %659 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %658, ptr noundef %359, ptr noundef %659) #13
  br label %660

660:                                              ; preds = %622, %656, %653, %604
  %661 = phi ptr [ null, %604 ], [ %654, %656 ], [ %654, %653 ], [ null, %622 ]
  %662 = load i32, ptr %26, align 4, !tbaa !434
  %663 = icmp ne i32 %662, 1
  %664 = load ptr, ptr %397, align 8
  %665 = icmp eq ptr %664, null
  %666 = select i1 %663, i1 true, i1 %665
  br i1 %666, label %668, label %667, !prof !621

667:                                              ; preds = %660
  call void @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %359, ptr noundef %661) #13
  br label %668

668:                                              ; preds = %667, %660
  %669 = load ptr, ptr %539, align 8, !tbaa !455
  %670 = icmp eq ptr %669, null
  br i1 %670, label %676, label %671, !prof !622

671:                                              ; preds = %668
  %672 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %154) #13
  %673 = load ptr, ptr %669, align 8, !tbaa !432
  %674 = getelementptr inbounds ptr, ptr %673, i64 6
  %675 = load ptr, ptr %674, align 8
  call void %675(ptr noundef nonnull align 8 dereferenceable(8) %669, ptr noundef nonnull align 8 dereferenceable(33) %359, i32 noundef %156, i1 noundef zeroext %20, ptr noundef %672) #13
  br label %676

676:                                              ; preds = %671, %668
  br i1 %20, label %677, label %678, !prof !622

677:                                              ; preds = %676
  store i8 0, ptr %1, align 1, !tbaa !465
  br label %803

678:                                              ; preds = %676
  %679 = call noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #13
  store ptr %679, ptr %476, align 8, !tbaa !478
  %680 = load ptr, ptr %679, align 8, !tbaa !432
  %681 = getelementptr inbounds ptr, ptr %680, i64 5
  %682 = load ptr, ptr %681, align 8
  %683 = call noundef i32 %682(ptr noundef nonnull align 8 dereferenceable(8) %679) #13
  store i32 %683, ptr %26, align 4, !tbaa !434
  %684 = icmp eq i32 %683, 1
  br i1 %684, label %685, label %707, !prof !617

685:                                              ; preds = %678
  %686 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %687 = load ptr, ptr %686, align 8, !tbaa !482
  %688 = load ptr, ptr %687, align 8, !tbaa !432
  %689 = getelementptr inbounds ptr, ptr %688, i64 13
  %690 = load ptr, ptr %689, align 8
  %691 = call noundef zeroext i1 %690(ptr noundef nonnull align 8 dereferenceable(40) %687) #13
  br i1 %691, label %705, label %692, !prof !619

692:                                              ; preds = %685
  %693 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %694 = load i8, ptr %693, align 1, !tbaa !572, !range !428, !noundef !429
  %695 = icmp eq i8 %694, 0
  br i1 %695, label %703, label %696

696:                                              ; preds = %692
  %697 = call ptr @__cxa_allocate_exception(i64 48) #14
  %698 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %699 = load ptr, ptr %698, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %697, ptr noundef nonnull @.str, i32 noundef 2756, i32 noundef 158, ptr noundef %699) #13
          to label %700 unwind label %701

700:                                              ; preds = %696
  call void @__cxa_throw(ptr nonnull %697, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

701:                                              ; preds = %696
  %702 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %697) #14
  br label %804

703:                                              ; preds = %692
  %704 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  br label %730

705:                                              ; preds = %685
  %706 = load i32, ptr %26, align 4, !tbaa !434
  br label %707

707:                                              ; preds = %705, %678
  %708 = phi i32 [ %706, %705 ], [ %683, %678 ]
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %734, !prof !620

710:                                              ; preds = %707
  %711 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %712 = load ptr, ptr %711, align 8, !tbaa !482
  %713 = load ptr, ptr %712, align 8, !tbaa !432
  %714 = getelementptr inbounds ptr, ptr %713, i64 12
  %715 = load ptr, ptr %714, align 8
  %716 = call noundef zeroext i1 %715(ptr noundef nonnull align 8 dereferenceable(40) %712) #13
  br i1 %716, label %734, label %717, !prof !623

717:                                              ; preds = %710
  %718 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %719 = load i8, ptr %718, align 1, !tbaa !572, !range !428, !noundef !429
  %720 = icmp eq i8 %719, 0
  br i1 %720, label %728, label %721

721:                                              ; preds = %717
  %722 = call ptr @__cxa_allocate_exception(i64 48) #14
  %723 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %724 = load ptr, ptr %723, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %722, ptr noundef nonnull @.str, i32 noundef 2763, i32 noundef 44, ptr noundef %724) #13
          to label %725 unwind label %726

725:                                              ; preds = %721
  call void @__cxa_throw(ptr nonnull %722, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

726:                                              ; preds = %721
  %727 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %722) #14
  br label %804

728:                                              ; preds = %717
  %729 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  br label %730

730:                                              ; preds = %703, %728
  %731 = phi ptr [ %729, %728 ], [ %704, %703 ]
  %732 = phi ptr [ %711, %728 ], [ %686, %703 ]
  %733 = load ptr, ptr %731, align 8, !tbaa !481
  store ptr %733, ptr %732, align 8, !tbaa !482
  br label %734

734:                                              ; preds = %730, %707, %710
  %735 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %736 = load ptr, ptr %735, align 8, !tbaa !482
  %737 = load ptr, ptr %476, align 8, !tbaa !478
  %738 = load ptr, ptr %736, align 8, !tbaa !432
  %739 = getelementptr inbounds ptr, ptr %738, i64 11
  %740 = load ptr, ptr %739, align 8
  call void %740(ptr noundef nonnull align 8 dereferenceable(40) %736, ptr noundef %737) #13
  %741 = call noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #13
  %742 = zext i1 %741 to i8
  store i8 %742, ptr %63, align 8, !tbaa !458
  br label %803

743:                                              ; preds = %570
  %744 = load i32, ptr %26, align 4, !tbaa !434
  %745 = icmp eq i32 %744, 1
  br i1 %745, label %746, label %803, !prof !624

746:                                              ; preds = %743
  %747 = load ptr, ptr %397, align 8, !tbaa !552
  %748 = icmp eq ptr %747, null
  br i1 %748, label %800, label %749, !prof !549

749:                                              ; preds = %746
  %750 = load i8, ptr %63, align 8, !tbaa !458, !range !428, !noundef !429
  %751 = icmp eq i8 %750, 0
  br i1 %751, label %768, label %752

752:                                              ; preds = %749
  %753 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  br i1 %753, label %754, label %768

754:                                              ; preds = %752
  %755 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %756 = load ptr, ptr %755, align 8, !tbaa !482
  %757 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %756) #13
  %758 = icmp eq ptr %757, null
  br i1 %758, label %759, label %763

759:                                              ; preds = %754
  %760 = load ptr, ptr %755, align 8, !tbaa !482
  %761 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %760) #13
  %762 = icmp eq ptr %761, null
  br i1 %762, label %768, label %763

763:                                              ; preds = %759, %754
  %764 = phi ptr [ %757, %754 ], [ %761, %759 ]
  %765 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %766 = load ptr, ptr %765, align 8, !tbaa !625
  %767 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %766, ptr noundef nonnull %764) #13
  br label %768

768:                                              ; preds = %763, %759, %752, %749
  %769 = phi ptr [ null, %759 ], [ null, %752 ], [ null, %749 ], [ %767, %763 ]
  %770 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %771 = load ptr, ptr %770, align 8, !tbaa !509
  %772 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %773 = load ptr, ptr %772, align 8, !tbaa !602
  %774 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %775 = load ptr, ptr %774, align 8, !tbaa !482
  %776 = call noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %775) #13
  %777 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  br i1 %777, label %778, label %782

778:                                              ; preds = %768
  %779 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %780 = load ptr, ptr %779, align 8, !tbaa !625
  %781 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %780, ptr noundef nonnull %359) #13
  br label %782

782:                                              ; preds = %768, %778
  %783 = phi ptr [ %781, %778 ], [ null, %768 ]
  %784 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %785 = load ptr, ptr %784, align 8, !tbaa !625
  %786 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %359) #13
  call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %771, i32 noundef 0, i32 noundef 0, ptr noundef %773, i1 noundef zeroext %776, ptr noundef %783, ptr noundef %769, ptr noundef null, ptr noundef %785, ptr noundef %786, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %787 = load ptr, ptr %397, align 8, !tbaa !552
  %788 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  %789 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %790 = load ptr, ptr %789, align 8, !tbaa !593
  %791 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %359) #13
  %792 = load ptr, ptr %790, align 8, !tbaa !432
  %793 = getelementptr inbounds ptr, ptr %792, i64 10
  %794 = load ptr, ptr %793, align 8
  %795 = call noundef ptr %794(ptr noundef nonnull align 8 dereferenceable(40) %790, i32 noundef %791) #13
  %796 = load ptr, ptr %770, align 8, !tbaa !509
  %797 = load ptr, ptr %787, align 8, !tbaa !432
  %798 = getelementptr inbounds ptr, ptr %797, i64 3
  %799 = load ptr, ptr %798, align 8
  call void %799(ptr noundef nonnull align 8 dereferenceable(8) %787, ptr noundef %788, ptr noundef %795, ptr noundef %796) #13
  br label %800

800:                                              ; preds = %782, %746
  %801 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %802 = load ptr, ptr %801, align 8, !tbaa !510
  call void @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb(ptr noundef nonnull align 8 dereferenceable(40) %802, ptr noundef nonnull align 1 dereferenceable(1) %358) #13
  br label %803

803:                                              ; preds = %677, %734, %743, %800
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  br label %806

804:                                              ; preds = %298, %311, %461, %726, %701, %172
  %805 = phi { ptr, i32 } [ %173, %172 ], [ %462, %461 ], [ %299, %298 ], [ %312, %311 ], [ %727, %726 ], [ %702, %701 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  resume { ptr, i32 } %805

806:                                              ; preds = %803, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i1 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !626 {
  store i8 1, ptr %1, align 1, !tbaa !465
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  br i1 %5, label %7, label %6, !prof !627

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183) #13
  tail call void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 60) #13
  br label %398

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !478
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 4, !tbaa !477
  %13 = load ptr, ptr %10, align 8, !tbaa !432
  %14 = getelementptr inbounds ptr, ptr %13, i64 11
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %12, ptr noundef null, ptr noundef %8, i32 noundef -2) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %38, !prof !627

18:                                               ; preds = %7
  %19 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !479
  %21 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef %8) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %38, !prof !628

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %25 = load ptr, ptr %24, align 8, !tbaa !460
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %25) #13
  %27 = load i32, ptr %11, align 4, !tbaa !477
  %28 = load ptr, ptr %24, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef %8, i32 noundef %27, i32 noundef 1, ptr noundef %28) #13
          to label %31 unwind label %29

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %26, ptr noundef %25) #12
  br label %396

31:                                               ; preds = %23
  %32 = load ptr, ptr %19, align 8, !tbaa !479
  %33 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull %26) #13
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %26, i32 noundef %33) #13
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %35 = load i8, ptr %34, align 8, !tbaa !458, !range !428, !noundef !429
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37, !prof !629

37:                                               ; preds = %31
  tail call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %26, i32 noundef 5) #13
  br label %45

38:                                               ; preds = %7, %18
  %39 = phi ptr [ %21, %18 ], [ %16, %7 ]
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !tbaa !458, !range !428, !noundef !429
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43, !prof !630

43:                                               ; preds = %38
  %44 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %39) #13
  br i1 %44, label %50, label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %26, %37 ], [ %39, %43 ]
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %48 = load ptr, ptr %47, align 8, !tbaa !482
  %49 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %46) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %48, i32 noundef 2, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %50

50:                                               ; preds = %45, %38, %43, %31
  %51 = phi ptr [ %39, %38 ], [ %39, %43 ], [ %26, %31 ], [ %46, %45 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %53 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %52) #13
  %54 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  %55 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %52, ptr noundef nonnull %51, i32 noundef %54) #13
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %57 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %58 = icmp ne i8 %57, 0
  tail call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %52, i1 noundef zeroext %58) #13
  %59 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %67, label %61, !prof !627

61:                                               ; preds = %50
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %63 = load ptr, ptr %62, align 8, !tbaa !482
  %64 = load ptr, ptr %63, align 8, !tbaa !432
  %65 = getelementptr inbounds ptr, ptr %64, i64 9
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull %51) #13
  br label %67

67:                                               ; preds = %61, %50
  br i1 %53, label %68, label %95, !prof !631

68:                                               ; preds = %67
  %69 = load ptr, ptr %9, align 8, !tbaa !478
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %69, ptr %70, align 8, !tbaa !469
  %71 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %98, label %73, !prof !603

73:                                               ; preds = %68
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %75 = load ptr, ptr %74, align 8, !tbaa !602
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  %79 = load ptr, ptr %74, align 8, !tbaa !602
  %80 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %78, ptr noundef %79) #13
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %83 = load ptr, ptr %82, align 8, !tbaa !482
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %83, i32 noundef 5) #13
  br label %84

84:                                               ; preds = %81, %77, %73
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %86 = load i8, ptr %85, align 1, !tbaa !572, !range !428, !noundef !429
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %90 = load ptr, ptr %89, align 8, !tbaa !482
  %91 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  %92 = tail call noundef zeroext i1 @_ZN11xercesc_2_712XMLValidator16checkRootElementEj(ptr noundef nonnull align 8 dereferenceable(40) %90, i32 noundef %91) #13
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %89, align 8, !tbaa !482
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %94, i32 noundef 5) #13
  br label %98

95:                                               ; preds = %67
  %96 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  %97 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %52, ptr noundef %96, i1 noundef zeroext true) #13
  br label %98

98:                                               ; preds = %68, %93, %88, %84, %95
  %99 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false) #13
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %101 = load ptr, ptr %100, align 8, !tbaa !613
  %102 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %101) #13
  %103 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 16
  %104 = load i32, ptr %103, align 8, !tbaa !632
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 8, !tbaa !632
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %107 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %109 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  br label %110

110:                                              ; preds = %228, %98
  %111 = phi i32 [ %229, %228 ], [ 0, %98 ]
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %135, %110
  %114 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  br i1 %112, label %123, label %115, !prof !633

115:                                              ; preds = %113
  switch i16 %114, label %116 [
    i16 62, label %123
    i16 47, label %123
  ]

116:                                              ; preds = %115
  %117 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  %118 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %117, i16 noundef zeroext %114) #13
  br i1 %118, label %119, label %122, !prof !634

119:                                              ; preds = %116
  %120 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false) #13
  %121 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  br label %123

122:                                              ; preds = %116
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #13
  br label %123

123:                                              ; preds = %115, %115, %122, %119, %113
  %124 = phi i16 [ %121, %119 ], [ %114, %122 ], [ %114, %115 ], [ %114, %113 ], [ %114, %115 ]
  %125 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  %126 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %125, i16 noundef zeroext %124) #13
  br i1 %126, label %230, label %127, !prof !633

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %129 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(40) %128) #13
  br i1 %129, label %131, label %130, !prof !635

130:                                              ; preds = %127
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #13
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 62) #13
  br label %398

131:                                              ; preds = %127
  %132 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false) #13
  br i1 %132, label %143, label %133, !prof !635

133:                                              ; preds = %131
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180) #13
  %134 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList) #13
  switch i16 %134, label %136 [
    i16 62, label %135
    i16 47, label %135
    i16 39, label %143
    i16 34, label %143
  ]

135:                                              ; preds = %133, %133, %230, %246
  br label %113, !llvm.loop !636

136:                                              ; preds = %133
  %137 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  %138 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %137, i16 noundef zeroext %134) #13
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = icmp eq i16 %134, 60
  br i1 %140, label %141, label %398

141:                                              ; preds = %139
  %142 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %142, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %398

143:                                              ; preds = %133, %133, %131, %136
  %144 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %128) #13
  %145 = tail call noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %51, ptr noundef %144) #13
  %146 = icmp ult i32 %111, %102
  %147 = icmp eq ptr %145, null
  br i1 %146, label %160, label %148, !prof !637

148:                                              ; preds = %143
  %149 = load ptr, ptr %106, align 8, !tbaa !460
  %150 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %149) #13
  br i1 %147, label %153, label %151, !prof !514

151:                                              ; preds = %148
  %152 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %145) #13
  br label %153

153:                                              ; preds = %148, %151
  %154 = phi i32 [ %152, %151 ], [ 0, %148 ]
  %155 = load ptr, ptr %106, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %150, i32 noundef 0, ptr noundef %144, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %154, i1 noundef zeroext true, ptr noundef %155, ptr noundef null, i1 noundef zeroext false) #13
          to label %156 unwind label %158

156:                                              ; preds = %153
  %157 = load ptr, ptr %100, align 8, !tbaa !613
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %157, ptr noundef nonnull %150) #13
  br label %167

158:                                              ; preds = %153
  %159 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %150, ptr noundef %149) #12
  br label %396

160:                                              ; preds = %143
  %161 = load ptr, ptr %100, align 8, !tbaa !613
  %162 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %161, i32 noundef %111) #13
  br i1 %147, label %165, label %163, !prof !638

163:                                              ; preds = %160
  %164 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %145) #13
  br label %165

165:                                              ; preds = %160, %163
  %166 = phi i32 [ %164, %163 ], [ 0, %160 ]
  tail call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %162, i32 noundef 0, ptr noundef %144, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %166, ptr noundef null, i1 noundef zeroext false) #13
  tail call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %162, i1 noundef zeroext true) #13
  br label %167

167:                                              ; preds = %165, %156
  %168 = phi ptr [ %150, %156 ], [ %162, %165 ]
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %170 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %168) #13
  %171 = icmp eq ptr %145, null
  br i1 %171, label %172, label %186, !prof !635

172:                                              ; preds = %167
  %173 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %179, label %175, !prof !635

175:                                              ; preds = %172
  %176 = load ptr, ptr %108, align 8, !tbaa !482
  %177 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %128) #13
  %178 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %176, i32 noundef 17, ptr noundef %177, ptr noundef %178, ptr noundef null, ptr noundef null) #13
  br label %179

179:                                              ; preds = %175, %172
  %180 = load ptr, ptr %109, align 8, !tbaa !506
  %181 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %180, ptr noundef %170) #13
  br i1 %181, label %184, label %182, !prof !639

182:                                              ; preds = %179
  %183 = load ptr, ptr %109, align 8, !tbaa !506
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %183, ptr noundef %170, ptr noundef null) #13
  br label %205

184:                                              ; preds = %179
  %185 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %170, ptr noundef %185, ptr noundef null, ptr noundef null) #13
  br label %205

186:                                              ; preds = %167
  %187 = load ptr, ptr %107, align 8, !tbaa !505
  %188 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %187, ptr noundef nonnull %145) #13
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %192 = load i32, ptr %103, align 8, !tbaa !632
  store i32 %192, ptr %191, align 4, !tbaa !452
  %193 = load ptr, ptr %107, align 8, !tbaa !505
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %193, ptr noundef nonnull %145, ptr noundef nonnull %191) #13
  br label %205

194:                                              ; preds = %186
  %195 = load i32, ptr %188, align 4, !tbaa !452
  %196 = load i32, ptr %103, align 8, !tbaa !632
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 %196, ptr %188, align 4, !tbaa !452
  br label %205

199:                                              ; preds = %194
  %200 = load ptr, ptr %145, align 8, !tbaa !432
  %201 = getelementptr inbounds ptr, ptr %200, i64 5
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(56) %145) #13
  %204 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %203, ptr noundef %204, ptr noundef null, ptr noundef null) #13
  br label %205

205:                                              ; preds = %190, %199, %198, %182, %184
  %206 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false) #13
  %207 = tail call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %145, ptr noundef %170, ptr noundef nonnull align 8 dereferenceable(40) %169) #13
  br i1 %207, label %217, label %208, !prof !635

208:                                              ; preds = %205
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199) #13
  %209 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList_0) #13
  switch i16 %209, label %210 [
    i16 62, label %217
    i16 47, label %217
  ]

210:                                              ; preds = %208
  %211 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  %212 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %211, i16 noundef zeroext %209) #13
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = icmp eq i16 %209, 60
  br i1 %214, label %215, label %398

215:                                              ; preds = %213
  %216 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %216, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %398

217:                                              ; preds = %208, %208, %210, %205
  %218 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %169) #13
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %168, ptr noundef %218) #13
  br i1 %171, label %228, label %219, !prof !635

219:                                              ; preds = %217
  %220 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %108, align 8, !tbaa !482
  %224 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %169) #13
  %225 = load ptr, ptr %223, align 8, !tbaa !432
  %226 = getelementptr inbounds ptr, ptr %225, i64 8
  %227 = load ptr, ptr %226, align 8
  tail call void %227(ptr noundef nonnull align 8 dereferenceable(40) %223, ptr noundef nonnull %145, ptr noundef %224, i1 noundef zeroext false, ptr noundef nonnull %51) #13
  br label %228

228:                                              ; preds = %219, %222, %217
  %229 = add i32 %111, 1
  br label %110, !llvm.loop !636

230:                                              ; preds = %123
  switch i16 %124, label %135 [
    i16 0, label %231
    i16 47, label %237
    i16 62, label %242
    i16 60, label %244
    i16 39, label %246
    i16 34, label %246
  ], !prof !640

231:                                              ; preds = %230
  %232 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %233 = load ptr, ptr %106, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %232, ptr noundef nonnull @.str, i32 noundef 1913, i32 noundef 47, ptr noundef %233) #13
          to label %234 unwind label %235

234:                                              ; preds = %231
  tail call void @__cxa_throw(ptr nonnull %232, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

235:                                              ; preds = %231
  %236 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %232) #14
  br label %396

237:                                              ; preds = %230
  %238 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  %239 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 62) #13
  br i1 %239, label %249, label %240, !prof !641

240:                                              ; preds = %237
  %241 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %241, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %249

242:                                              ; preds = %230
  %243 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  br label %249

244:                                              ; preds = %230
  %245 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %245, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %249

246:                                              ; preds = %230, %230
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #13
  %247 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  tail call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext %124) #13
  %248 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false) #13
  br label %135

249:                                              ; preds = %237, %240, %244, %242
  %250 = phi i1 [ true, %237 ], [ true, %240 ], [ false, %244 ], [ false, %242 ]
  br i1 %112, label %253, label %251, !prof !642

251:                                              ; preds = %249
  %252 = load ptr, ptr %109, align 8, !tbaa !506
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %252) #13
  br label %253

253:                                              ; preds = %251, %249
  %254 = load ptr, ptr %51, align 8, !tbaa !432
  %255 = getelementptr inbounds ptr, ptr %254, i64 8
  %256 = load ptr, ptr %255, align 8
  %257 = tail call noundef zeroext i1 %256(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  br i1 %257, label %258, label %361, !prof !643

258:                                              ; preds = %253
  %259 = load ptr, ptr %51, align 8, !tbaa !432
  %260 = getelementptr inbounds ptr, ptr %259, i64 6
  %261 = load ptr, ptr %260, align 8
  %262 = tail call noundef nonnull align 8 dereferenceable(16) ptr %261(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  %263 = load ptr, ptr %262, align 8, !tbaa !432
  %264 = getelementptr inbounds ptr, ptr %263, i64 13
  %265 = load ptr, ptr %264, align 8
  %266 = tail call noundef i32 %265(ptr noundef nonnull align 8 dereferenceable(16) %262) #13
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %361, label %268

268:                                              ; preds = %258
  %269 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  br label %270

270:                                              ; preds = %268, %352
  %271 = phi i32 [ 0, %268 ], [ %355, %352 ]
  %272 = phi i32 [ %111, %268 ], [ %354, %352 ]
  %273 = phi i32 [ %102, %268 ], [ %353, %352 ]
  %274 = load ptr, ptr %262, align 8, !tbaa !432
  %275 = getelementptr inbounds ptr, ptr %274, i64 14
  %276 = load ptr, ptr %275, align 8
  %277 = tail call noundef nonnull align 8 dereferenceable(56) ptr %276(ptr noundef nonnull align 8 dereferenceable(16) %262, i32 noundef %271) #13
  %278 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  %279 = load ptr, ptr %107, align 8, !tbaa !505
  %280 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %279, ptr noundef nonnull %277) #13
  %281 = icmp eq ptr %280, null
  br i1 %281, label %286, label %282

282:                                              ; preds = %270
  %283 = load i32, ptr %280, align 4, !tbaa !452
  %284 = load i32, ptr %103, align 8, !tbaa !632
  %285 = icmp ult i32 %283, %284
  br i1 %285, label %286, label %352

286:                                              ; preds = %282, %270
  %287 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %311, label %289

289:                                              ; preds = %286
  %290 = icmp eq i32 %278, 2
  br i1 %290, label %291, label %297

291:                                              ; preds = %289
  %292 = load ptr, ptr %108, align 8, !tbaa !482
  %293 = load ptr, ptr %277, align 8, !tbaa !432
  %294 = getelementptr inbounds ptr, ptr %293, i64 5
  %295 = load ptr, ptr %294, align 8
  %296 = tail call noundef ptr %295(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %292, i32 noundef 6, ptr noundef %296, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %352

297:                                              ; preds = %289
  %298 = icmp ugt i32 %278, 1
  %299 = load i8, ptr %269, align 2, !range !428
  %300 = icmp eq i8 %299, 0
  %301 = select i1 %298, i1 true, i1 %300
  br i1 %301, label %311, label %302

302:                                              ; preds = %297
  %303 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  br i1 %303, label %304, label %313

304:                                              ; preds = %302
  %305 = load ptr, ptr %108, align 8, !tbaa !482
  %306 = load ptr, ptr %277, align 8, !tbaa !432
  %307 = getelementptr inbounds ptr, ptr %306, i64 5
  %308 = load ptr, ptr %307, align 8
  %309 = tail call noundef ptr %308(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  %310 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %305, i32 noundef 82, ptr noundef %309, ptr noundef %310, ptr noundef null, ptr noundef null) #13
  br label %313

311:                                              ; preds = %297, %286
  %312 = icmp ult i32 %278, 2
  br i1 %312, label %313, label %352

313:                                              ; preds = %304, %302, %311
  %314 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %313
  %317 = load ptr, ptr %108, align 8, !tbaa !482
  %318 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  %319 = load ptr, ptr %317, align 8, !tbaa !432
  %320 = getelementptr inbounds ptr, ptr %319, i64 8
  %321 = load ptr, ptr %320, align 8
  tail call void %321(ptr noundef nonnull align 8 dereferenceable(40) %317, ptr noundef nonnull %277, ptr noundef %318, i1 noundef zeroext false, ptr noundef nonnull %51) #13
  br label %322

322:                                              ; preds = %316, %313
  %323 = icmp ult i32 %272, %273
  br i1 %323, label %340, label %324

324:                                              ; preds = %322
  %325 = load ptr, ptr %106, align 8, !tbaa !460
  %326 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %325) #13
  %327 = load ptr, ptr %277, align 8, !tbaa !432
  %328 = getelementptr inbounds ptr, ptr %327, i64 5
  %329 = load ptr, ptr %328, align 8
  %330 = invoke noundef ptr %329(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
          to label %331 unwind label %338

331:                                              ; preds = %324
  %332 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  %333 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  %334 = load ptr, ptr %106, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %326, i32 noundef 0, ptr noundef %330, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %332, i32 noundef %333, i1 noundef zeroext false, ptr noundef %334, ptr noundef null, i1 noundef zeroext false) #13
          to label %335 unwind label %338

335:                                              ; preds = %331
  %336 = load ptr, ptr %100, align 8, !tbaa !613
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %336, ptr noundef nonnull %326) #13
  %337 = add i32 %273, 1
  br label %349

338:                                              ; preds = %331, %324
  %339 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %326, ptr noundef %325) #12
  br label %396

340:                                              ; preds = %322
  %341 = load ptr, ptr %100, align 8, !tbaa !613
  %342 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %341, i32 noundef %272) #13
  %343 = load ptr, ptr %277, align 8, !tbaa !432
  %344 = getelementptr inbounds ptr, ptr %343, i64 5
  %345 = load ptr, ptr %344, align 8
  %346 = tail call noundef ptr %345(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  %347 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  %348 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %277) #13
  tail call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %342, i32 noundef 0, ptr noundef %346, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %347, i32 noundef %348, ptr noundef null, i1 noundef zeroext false) #13
  tail call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %342, i1 noundef zeroext false) #13
  br label %349

349:                                              ; preds = %340, %335
  %350 = phi i32 [ %337, %335 ], [ %273, %340 ]
  %351 = add i32 %272, 1
  br label %352

352:                                              ; preds = %291, %349, %311, %282
  %353 = phi i32 [ %350, %349 ], [ %273, %311 ], [ %273, %282 ], [ %273, %291 ]
  %354 = phi i32 [ %351, %349 ], [ %272, %311 ], [ %272, %282 ], [ %272, %291 ]
  %355 = add nuw i32 %271, 1
  %356 = load ptr, ptr %262, align 8, !tbaa !432
  %357 = getelementptr inbounds ptr, ptr %356, i64 13
  %358 = load ptr, ptr %357, align 8
  %359 = tail call noundef i32 %358(ptr noundef nonnull align 8 dereferenceable(16) %262) #13
  %360 = icmp ult i32 %355, %359
  br i1 %360, label %270, label %361, !llvm.loop !644

361:                                              ; preds = %352, %258, %253
  %362 = phi i32 [ %111, %253 ], [ %111, %258 ], [ %354, %352 ]
  br i1 %250, label %363, label %386, !prof !645

363:                                              ; preds = %361
  %364 = load i8, ptr %56, align 8, !tbaa !458, !range !428, !noundef !429
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %380, label %366, !prof !641

366:                                              ; preds = %363
  %367 = load ptr, ptr %108, align 8, !tbaa !482
  %368 = load ptr, ptr %367, align 8, !tbaa !432
  %369 = getelementptr inbounds ptr, ptr %368, i64 2
  %370 = load ptr, ptr %369, align 8
  %371 = tail call noundef i32 %370(ptr noundef nonnull align 8 dereferenceable(40) %367, ptr noundef nonnull %51, ptr noundef null, i32 noundef 0) #13
  %372 = icmp sgt i32 %371, -1
  br i1 %372, label %373, label %380

373:                                              ; preds = %366
  %374 = load ptr, ptr %108, align 8, !tbaa !482
  %375 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  %376 = load ptr, ptr %51, align 8, !tbaa !432
  %377 = getelementptr inbounds ptr, ptr %376, i64 15
  %378 = load ptr, ptr %377, align 8
  %379 = tail call noundef ptr %378(ptr noundef nonnull align 8 dereferenceable(33) %51) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %374, i32 noundef 7, ptr noundef %375, ptr noundef %379, ptr noundef null, ptr noundef null) #13
  br label %380

380:                                              ; preds = %366, %373, %363
  %381 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %52) #13
  br i1 %53, label %382, label %383, !prof !646

382:                                              ; preds = %380
  store i8 0, ptr %1, align 1, !tbaa !465
  br label %386

383:                                              ; preds = %380
  %384 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %52) #13
  %385 = zext i1 %384 to i8
  store i8 %385, ptr %56, align 8, !tbaa !458
  br label %386

386:                                              ; preds = %382, %383, %361
  %387 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %388 = load ptr, ptr %387, align 8, !tbaa !455
  %389 = icmp eq ptr %388, null
  br i1 %389, label %398, label %390, !prof !643

390:                                              ; preds = %386
  %391 = load i32, ptr %11, align 4, !tbaa !477
  %392 = load ptr, ptr %100, align 8, !tbaa !613
  %393 = load ptr, ptr %388, align 8, !tbaa !432
  %394 = getelementptr inbounds ptr, ptr %393, i64 11
  %395 = load ptr, ptr %394, align 8
  tail call void %395(ptr noundef nonnull align 8 dereferenceable(8) %388, ptr noundef nonnull align 8 dereferenceable(33) %51, i32 noundef %391, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %392, i32 noundef %362, i1 noundef zeroext %250, i1 noundef zeroext %53) #13
  br label %398

396:                                              ; preds = %338, %235, %158, %29
  %397 = phi { ptr, i32 } [ %30, %29 ], [ %339, %338 ], [ %236, %235 ], [ %159, %158 ]
  resume { ptr, i32 } %397

398:                                              ; preds = %141, %139, %215, %213, %130, %390, %386, %6
  %399 = phi i1 [ false, %6 ], [ true, %390 ], [ true, %386 ], [ false, %130 ], [ false, %213 ], [ false, %215 ], [ false, %139 ], [ false, %141 ]
  ret i1 %399
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !418 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !647

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !648 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !649
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #1 comdat align 2 !prof !650 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 8, !tbaa !458, !range !428, !noundef !429
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %6 = load i8, ptr %5, align 4, !range !428
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %13, label %9, !prof !651

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !467
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725IdentityConstraintHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  tail call void @_ZN11xercesc_2_715ValueStoreCache11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !654
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #1 comdat align 2 !prof !648 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !655
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ValueStoreCache11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !453 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !453 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 %5, ptr %0, align 8, !tbaa !661
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !663
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !664
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !665
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !666
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !432
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #13
  store ptr %15, ptr %8, align 8, !tbaa !665
  %16 = load i32, ptr %7, align 8, !tbaa !664
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !667 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !668
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !670
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !671
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !672
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !673

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !668
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 68, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #14
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !432
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #13
  store ptr %22, ptr %5, align 8, !tbaa !674
  %23 = load i32, ptr %8, align 8, !tbaa !672
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !639

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !670
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !673

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !674
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !481
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !675, !llvm.loop !676

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !670
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !668
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !432
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #13
  store ptr %46, ptr %39, align 8, !tbaa !677
  store ptr null, ptr %46, align 8, !tbaa !481
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !678 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !679
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !681
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !682
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !683
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 %3, ptr %11, align 8, !tbaa !684
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !685
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !679
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13) #13
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
          to label %15 unwind label %19

15:                                               ; preds = %5
  store ptr %14, ptr %10, align 8, !tbaa !686
  %16 = load i32, ptr %11, align 8, !tbaa !684
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !687

18:                                               ; preds = %15
  store i32 256, ptr %11, align 8, !tbaa !684
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #12
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 256, %18 ], [ %16, %15 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %0, align 8, !tbaa !679
  %25 = zext i32 %22 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %24, align 8, !tbaa !432
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %26) #13
  store ptr %30, ptr %23, align 8, !tbaa !688
  store ptr null, ptr %30, align 8, !tbaa !481
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 !prof !667 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !689
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !691
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !692
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !693
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !694
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !695
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !696
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #13
  store ptr %3, ptr %12, align 8, !tbaa !696
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 !prof !453 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !697
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !699
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !700
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !701
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !702
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !703
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #13
  store ptr %3, ptr %11, align 8, !tbaa !703
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !453 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !704
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !706
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !707
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !708
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !709
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !432
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !708
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !710

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !708
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !481
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !711, !llvm.loop !712
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !704, !range !428, !noundef !429
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5, !prof !456

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !706
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !710

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !708
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !481
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !432
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(48) %16) #12
  %22 = load i32, ptr %6, align 4, !tbaa !706
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !prof !713, !llvm.loop !714

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !709
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !708
  %33 = load ptr, ptr %30, align 8, !tbaa !432
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !706
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !709
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !704, !range !428, !noundef !429
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !708
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !481
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !432
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(48) %25) #12
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !708
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !481
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !706
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !706
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !704, !range !428, !noundef !429
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !708
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !481
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !432
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(48) %17) #12
  %23 = load ptr, ptr %7, align 8, !tbaa !708
  %24 = load i32, ptr %2, align 4, !tbaa !706
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !481
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !715
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !706
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !709
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !704, !range !428, !noundef !429
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !708
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !481
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !432
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(48) %22) #12
  %28 = load i32, ptr %3, align 4, !tbaa !706
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
  %43 = load ptr, ptr %42, align 8, !tbaa !708
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !708
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !708
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !481
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !481
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !716

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !481
  store i32 %31, ptr %3, align 4, !tbaa !706
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !706
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !706
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !704, !range !428, !noundef !429
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !708
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !481
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !432
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #12
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !704, !range !428, !noundef !429
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !706
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !708
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !481
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !432
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(48) %16) #12
  %22 = load i32, ptr %6, align 4, !tbaa !706
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !717

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !709
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !708
  %33 = load ptr, ptr %30, align 8, !tbaa !432
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !453 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !654
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !654
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !678 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !687

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !679
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.3, i32 noundef 138, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !679
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !683
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !432
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !682
  %21 = load i32, ptr %12, align 8, !tbaa !683
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !718

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !682
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !481
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !719, !llvm.loop !720
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !667 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !673

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !689
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.4, i32 noundef 99, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !689
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !693
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !432
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !692
  %21 = load i32, ptr %12, align 8, !tbaa !693
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !639

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !692
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !481
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !675, !llvm.loop !721
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !456

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !697
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.5, i32 noundef 93, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !697
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !701
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !432
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !700
  %21 = load i32, ptr %12, align 8, !tbaa !701
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !710

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !700
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !481
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !722, !llvm.loop !723
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !666
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !667 {
  %2 = load ptr, ptr %0, align 8, !tbaa !668
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !677
  %5 = load ptr, ptr %2, align 8, !tbaa !432
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !668
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !674
  %13 = load ptr, ptr %10, align 8, !tbaa !432
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !678 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #13
          to label %2 unwind label %25

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !679
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !688
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %25

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !679
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !682
  %13 = load ptr, ptr %10, align 8, !tbaa !432
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %16 unwind label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !686
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !432
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !667 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !453 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !700
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !703
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !432
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717PSVIAttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !724
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !726
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !432
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #12
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !727
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !432
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #12
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !728 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !672
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !729

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !671
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !674
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !481
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !730

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !731
  %20 = load ptr, ptr %17, align 8, !tbaa !733
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !432
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(80) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !668
  %28 = load ptr, ptr %27, align 8, !tbaa !432
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !734, !llvm.loop !735

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !674
  %34 = load i32, ptr %2, align 8, !tbaa !672
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !481
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !736, !llvm.loop !737
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !738 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !683
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !710

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %39, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !685
  ret void

10:                                               ; preds = %5, %39
  %11 = phi i32 [ %3, %5 ], [ %40, %39 ]
  %12 = phi i64 [ 0, %5 ], [ %43, %39 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !682
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !481
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17, !prof !739

17:                                               ; preds = %10, %30
  %18 = phi ptr [ %20, %30 ], [ %15, %10 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !740
  %21 = load i8, ptr %7, align 8, !tbaa !681, !range !428, !noundef !429
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23, !prof !742

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !743
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !432
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(147) %24) #12
  br label %30

30:                                               ; preds = %23, %26, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !679
  %32 = load ptr, ptr %31, align 8, !tbaa !432
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %18) #13
  %35 = icmp eq ptr %20, null
  br i1 %35, label %36, label %17, !prof !744, !llvm.loop !745

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !tbaa !682
  %38 = load i32, ptr %2, align 8, !tbaa !683
  br label %39

39:                                               ; preds = %36, %10
  %40 = phi i32 [ %38, %36 ], [ %11, %10 ]
  %41 = phi ptr [ %37, %36 ], [ %13, %10 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %12
  store ptr null, ptr %42, align 8, !tbaa !481
  %43 = add nuw nsw i64 %12, 1
  %44 = zext i32 %40 to i64
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %10, label %8, !prof !746, !llvm.loop !747
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !667 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !689
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !692
  %5 = load ptr, ptr %2, align 8, !tbaa !432
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !692
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !696
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !432
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !748 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %45, label %3, !prof !749

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !693
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !750

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !695
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !692
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !481
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !751

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !752
  %23 = load i8, ptr %9, align 8, !tbaa !691, !range !428, !noundef !429
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !754

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !755
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #17
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !689
  %31 = load ptr, ptr %30, align 8, !tbaa !432
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #13
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !756, !llvm.loop !757

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !692
  %37 = load i32, ptr %4, align 8, !tbaa !693
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !481
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !758, !llvm.loop !759

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !748 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !695
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !760 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br i1 %2, label %45, label %3, !prof !761

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !701
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !702
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !700
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !481
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !762
  %23 = load i8, ptr %9, align 8, !tbaa !699, !range !428, !noundef !429
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !764
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #17
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !697
  %31 = load ptr, ptr %30, align 8, !tbaa !432
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #13
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !765

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !700
  %37 = load i32, ptr %4, align 8, !tbaa !701
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !481
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !766

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !760 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !702
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !767 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !768
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !770
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !575 {
  %5 = alloca i32, align 4
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  store i8 0, ptr %3, align 1, !tbaa !465
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  br label %10

10:                                               ; preds = %105, %4
  %11 = phi i32 [ 0, %4 ], [ %106, %105 ]
  %12 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %23, label %14, !prof !771

14:                                               ; preds = %10
  switch i16 %12, label %15 [
    i16 62, label %23
    i16 47, label %23
  ]

15:                                               ; preds = %14
  %16 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  %17 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %16, i16 noundef zeroext %12) #13
  br i1 %17, label %18, label %22, !prof !772

18:                                               ; preds = %15
  %19 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  %20 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %7, i1 noundef zeroext false) #13
  %21 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  br label %23

22:                                               ; preds = %15
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #13
  br label %23

23:                                               ; preds = %14, %14, %22, %18, %10
  %24 = phi i16 [ %21, %18 ], [ %12, %22 ], [ %12, %14 ], [ %12, %10 ], [ %12, %14 ]
  %25 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  %26 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %25, i16 noundef zeroext %24) #13
  br i1 %26, label %86, label %27, !prof !771

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %28 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %5) #13
  br i1 %28, label %35, label %29, !prof !773

29:                                               ; preds = %27
  %30 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #13
  br label %34

32:                                               ; preds = %29
  %33 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %34

34:                                               ; preds = %32, %31
  call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 62) #13
  br label %109

35:                                               ; preds = %27
  %36 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  %37 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false) #13
  br i1 %37, label %46, label %38, !prof !773

38:                                               ; preds = %35
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180) #13
  %39 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList) #13
  switch i16 %39, label %40 [
    i16 62, label %103
    i16 47, label %103
    i16 39, label %46
    i16 34, label %46
  ]

40:                                               ; preds = %38
  %41 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  %42 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %41, i16 noundef zeroext %39) #13
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = icmp eq i16 %39, 60
  br i1 %44, label %45, label %109

45:                                               ; preds = %43
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %109

46:                                               ; preds = %38, %38, %40, %35
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %48 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(40) %47) #13
  br i1 %48, label %57, label %49, !prof !773

49:                                               ; preds = %46
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199) #13
  %50 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0) #13
  switch i16 %50, label %51 [
    i16 62, label %57
    i16 47, label %57
  ]

51:                                               ; preds = %49
  %52 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  %53 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %52, i16 noundef zeroext %50) #13
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = icmp eq i16 %50, 60
  br i1 %55, label %56, label %109

56:                                               ; preds = %54
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %109

57:                                               ; preds = %51, %49, %49, %46
  %58 = icmp ult i32 %11, %6
  br i1 %58, label %69, label %59, !prof !774

59:                                               ; preds = %57
  %60 = load ptr, ptr %9, align 8, !tbaa !460
  %61 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %60) #13
  %62 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  %63 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %47) #13
  %64 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %47) #13
  %65 = load ptr, ptr %9, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef %36, i32 noundef %62, ptr noundef %63, i32 noundef %64, ptr noundef %65) #13
          to label %66 unwind label %67

66:                                               ; preds = %59
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %61) #13
  br label %74

67:                                               ; preds = %59
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %61, ptr noundef %60) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %107

69:                                               ; preds = %57
  %70 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %11) #13
  %71 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  %72 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %47) #13
  %73 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %47) #13
  call void @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef %36, i32 noundef %71, ptr noundef %72, i32 noundef %73) #13
  br label %74

74:                                               ; preds = %69, %66
  %75 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !490
  %77 = icmp ult i32 %11, %76
  br i1 %77, label %79, label %78, !prof !773

78:                                               ; preds = %74
  call void @_ZN11xercesc_2_712IGXMLScanner22resizeRawAttrColonListEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) #13
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %81 = load i32, ptr %5, align 4, !tbaa !452
  %82 = load ptr, ptr %80, align 8, !tbaa !500
  %83 = zext i32 %11 to i64
  %84 = getelementptr inbounds i32, ptr %82, i64 %83
  store i32 %81, ptr %84, align 4, !tbaa !452
  %85 = add i32 %11, 1
  br label %103

86:                                               ; preds = %23
  switch i16 %24, label %105 [
    i16 0, label %87
    i16 47, label %93
    i16 62, label %97
    i16 60, label %99
    i16 39, label %100
    i16 34, label %100
  ], !prof !775

87:                                               ; preds = %86
  %88 = call ptr @__cxa_allocate_exception(i64 48) #14
  %89 = load ptr, ptr %9, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %88, ptr noundef nonnull @.str, i32 noundef 765, i32 noundef 47, ptr noundef %89) #13
          to label %90 unwind label %91

90:                                               ; preds = %87
  call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

91:                                               ; preds = %87
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %88) #14
  br label %107

93:                                               ; preds = %86
  %94 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  store i8 1, ptr %3, align 1, !tbaa !465
  %95 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 62) #13
  br i1 %95, label %110, label %96, !prof !776

96:                                               ; preds = %93
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %110

97:                                               ; preds = %86
  %98 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  br label %110

99:                                               ; preds = %86
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %110

100:                                              ; preds = %86, %86
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #13
  %101 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #13
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext %24) #13
  %102 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %7, i1 noundef zeroext false) #13
  br label %105, !llvm.loop !777

103:                                              ; preds = %79, %38, %38
  %104 = phi i32 [ %85, %79 ], [ %11, %38 ], [ %11, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %105

105:                                              ; preds = %86, %100, %103
  %106 = phi i32 [ %104, %103 ], [ %11, %100 ], [ %11, %86 ]
  br label %10, !llvm.loop !777

107:                                              ; preds = %91, %67
  %108 = phi { ptr, i32 } [ %92, %91 ], [ %68, %67 ]
  resume { ptr, i32 } %108

109:                                              ; preds = %34, %54, %56, %43, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %110

110:                                              ; preds = %109, %93, %96, %99, %97
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !575 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !706
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !778 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !649
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !779 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !780
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !781
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !782 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !780
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !781
  %8 = and i8 %7, 16
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !783 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !649
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #13
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !784 {
  %2 = load i32, ptr %0, align 8, !tbaa !492
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !785 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  %4 = load i32, ptr %0, align 8, !tbaa !492
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !498
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !418 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !786

8:                                                ; preds = %3
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !787 {
  %2 = load i32, ptr %0, align 8, !tbaa !492
  ret i32 %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !738 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !708
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !706
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !481
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !706
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !788 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !706
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !789

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !709
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !708
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !481
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 !prof !790 {
  tail call void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) #13
  tail call void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, i32 noundef %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner22resizeRawAttrColonListEv(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #3 align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !490
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !460
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !432
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  %13 = load i32, ptr %2, align 8, !tbaa !490
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !500
  br i1 %14, label %26, label %17

17:                                               ; preds = %1, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %1 ]
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !452
  %21 = getelementptr inbounds i32, ptr %12, i64 %18
  store i32 %20, ptr %21, align 4, !tbaa !452
  %22 = add nuw nsw i64 %18, 1
  %23 = load i32, ptr %2, align 8, !tbaa !490
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %17, label %26, !llvm.loop !791

26:                                               ; preds = %17, %1
  %27 = load ptr, ptr %5, align 8, !tbaa !460
  %28 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %27, align 8, !tbaa !432
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %16) #13
  store ptr %12, ptr %28, align 8, !tbaa !500
  store i32 %4, ptr %2, align 8, !tbaa !490
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !792 {
  store i32 0, ptr %0, align 8, !tbaa !492
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  store i16 0, ptr %3, align 2, !tbaa !498
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !738 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !706
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !707
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !793

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !709
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !432
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !706
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !481
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !708
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !481
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !481
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !794

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !709
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !708
  %49 = load ptr, ptr %46, align 8, !tbaa !432
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !708
  store i32 %12, ptr %6, align 8, !tbaa !707
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !795 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !796
  %7 = icmp ugt i64 %6, %4
  br i1 %7, label %8, label %14, !prof !798

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !799
  %11 = add i32 %2, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  br label %30

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !800
  %17 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !799
  %19 = load ptr, ptr %16, align 8, !tbaa !432
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18) #13
  %22 = add i32 %2, 1
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %5, align 8, !tbaa !796
  %24 = load ptr, ptr %15, align 8, !tbaa !800
  %25 = shl nuw nsw i64 %23, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !432
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %25) #13
  store ptr %29, ptr %17, align 8, !tbaa !799
  br label %30

30:                                               ; preds = %8, %14
  %31 = phi i64 [ %13, %8 ], [ %25, %14 ]
  %32 = phi ptr [ %10, %8 ], [ %29, %14 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %1, i64 %31, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !795 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !801
  %7 = icmp ugt i64 %6, %4
  br i1 %7, label %8, label %14, !prof !802

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !803
  %11 = add i32 %2, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  br label %30

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !800
  %17 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !803
  %19 = load ptr, ptr %16, align 8, !tbaa !432
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18) #13
  %22 = add i32 %2, 1
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %5, align 8, !tbaa !801
  %24 = load ptr, ptr %15, align 8, !tbaa !800
  %25 = shl nuw nsw i64 %23, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !432
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %25) #13
  store ptr %29, ptr %17, align 8, !tbaa !803
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !654
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !804 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !805
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !536
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !806
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !807 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !805
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !536
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !808
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !809 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !649
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !810 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !811

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIbE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.6, i32 noundef 70, i32 noundef 80, ptr noundef %7) #13
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #13
  %14 = load i8, ptr %13, align 1, !tbaa !465, !range !428, !noundef !429
  %15 = icmp ne i8 %14, 0
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #13
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !812 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !813
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #3 comdat align 2 !prof !814 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !815
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br i1 %4, label %9, label %5, !prof !819

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !815
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !481
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !820 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !821
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #3 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !822 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !823

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !498
  %8 = load i16, ptr %1, align 2, !tbaa !498
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !824

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !825

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !498
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !456

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !826

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !498
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !827

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !828

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !498
  %28 = load i16, ptr %26, align 2, !tbaa !498
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !829, !llvm.loop !830

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !831
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !834 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 8, !tbaa !835, !range !428, !noundef !429
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !836 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !837
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 17
  %3 = load i8, ptr %2, align 1, !tbaa !841, !range !428, !noundef !429
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !842 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !843
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !418 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !605
  %7 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !607
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !606
  %13 = icmp sgt i32 %6, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %6, -1
  store i32 %15, ptr %11, align 4, !tbaa !606
  store i32 %15, ptr %7, align 8, !tbaa !607
  br label %16

16:                                               ; preds = %10, %3, %14
  %17 = phi i32 [ 1, %14 ], [ 2, %3 ], [ 0, %10 ]
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %19 = load i8, ptr %18, align 8, !tbaa !458, !range !428, !noundef !429
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %25 = load i8, ptr %24, align 1, !tbaa !547, !range !428, !noundef !429
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 2, i32 1
  br label %28

28:                                               ; preds = %23, %21, %16
  %29 = phi i32 [ %27, %23 ], [ 0, %21 ], [ 0, %16 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !550
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !625
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %35, ptr noundef nonnull %31) #13
  %37 = load ptr, ptr %30, align 8, !tbaa !550
  %38 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %37) #13
  %39 = and i32 %38, -2
  %40 = icmp ne i32 %39, 2
  br label %49

41:                                               ; preds = %28
  %42 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !559
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !625
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %47, ptr noundef nonnull %43) #13
  br label %49

49:                                               ; preds = %41, %45, %33
  %50 = phi ptr [ %36, %33 ], [ %48, %45 ], [ null, %41 ]
  %51 = phi i1 [ %40, %33 ], [ true, %45 ], [ true, %41 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !553
  %54 = icmp ne ptr %53, null
  %55 = icmp eq i32 %29, 2
  %56 = and i1 %55, %51
  %57 = and i1 %56, %54
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = icmp eq ptr %2, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !559
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60, %58
  %65 = phi ptr [ %2, %58 ], [ %62, %60 ]
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %67 = load ptr, ptr %66, align 8, !tbaa !460
  %68 = load ptr, ptr %65, align 8, !tbaa !432
  %69 = getelementptr inbounds ptr, ptr %68, i64 7
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(104) %65, ptr noundef nonnull %53, ptr noundef %67, i1 noundef zeroext false) #13
  br label %72

72:                                               ; preds = %64, %60, %49
  %73 = phi ptr [ null, %60 ], [ null, %49 ], [ %71, %64 ]
  %74 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %75 = load ptr, ptr %74, align 8, !tbaa !509
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %77 = load ptr, ptr %76, align 8, !tbaa !602
  %78 = load i8, ptr %4, align 8, !tbaa !563, !range !428, !noundef !429
  %79 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %82 = load ptr, ptr %81, align 8, !tbaa !625
  %83 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %82, ptr noundef nonnull %1) #13
  br label %84

84:                                               ; preds = %72, %80
  %85 = phi ptr [ %83, %80 ], [ null, %72 ]
  %86 = icmp eq ptr %2, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %89 = load ptr, ptr %88, align 8, !tbaa !625
  %90 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %89, ptr noundef nonnull %2) #13
  br label %91

91:                                               ; preds = %84, %87
  %92 = phi ptr [ %90, %87 ], [ null, %84 ]
  %93 = icmp ne i8 %78, 0
  %94 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %95 = load ptr, ptr %94, align 8, !tbaa !625
  %96 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %97 = load ptr, ptr %52, align 8, !tbaa !553
  tail call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %75, i32 noundef %29, i32 noundef %17, ptr noundef %77, i1 noundef zeroext %93, ptr noundef %85, ptr noundef %50, ptr noundef %92, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %73, ptr noundef null) #13
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %99 = load ptr, ptr %98, align 8, !tbaa !552
  %100 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %102 = load ptr, ptr %101, align 8, !tbaa !593
  %103 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  %104 = load ptr, ptr %102, align 8, !tbaa !432
  %105 = getelementptr inbounds ptr, ptr %104, i64 10
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(40) %102, i32 noundef %103) #13
  %108 = load ptr, ptr %74, align 8, !tbaa !509
  %109 = load ptr, ptr %99, align 8, !tbaa !432
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  tail call void %111(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %100, ptr noundef %107, ptr noundef %108) #13
  %112 = load i32, ptr %5, align 4, !tbaa !605
  %113 = add nsw i32 %112, -1
  store i32 %113, ptr %5, align 4, !tbaa !605
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !807 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !849 {
  store i32 0, ptr %0, align 8, !tbaa !492
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !850 {
  store i32 0, ptr %0, align 8, !tbaa !492
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !851 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !538
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !852 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !853
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 !prof !810 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !855 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !856 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !805
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !536
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !857
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !858 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !805
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !536
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !859, !range !428, !noundef !429
  %12 = icmp ne i8 %11, 0
  ret i1 %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !860 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !861
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIbE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !768
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !862 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !861
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !863

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !768
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.7, i32 noundef 206, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !770
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !810 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !861
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !864

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !768
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.7, i32 noundef 156, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !864

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !770
  %21 = zext i32 %1 to i64
  %22 = zext i32 %14 to i64
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %21, %18 ], [ %25, %23 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = getelementptr inbounds i8, ptr %20, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !465, !range !428, !noundef !429
  %28 = getelementptr inbounds i8, ptr %20, i64 %24
  store i8 %27, ptr %28, align 1, !tbaa !465
  %29 = icmp eq i64 %25, %22
  br i1 %29, label %30, label %23, !llvm.loop !865

30:                                               ; preds = %23, %16, %13
  store i32 %14, ptr %3, align 4, !tbaa !861
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !418 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !654
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !814 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.5", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !814 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.5", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !819

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 80, ptr noundef %7) #13
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #13
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !866 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !867
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !869
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !814 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !867
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !870

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !869
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.7, i32 noundef 198, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !871
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  %4 = load i32, ptr %0, align 8, !tbaa !492
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !498
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !872 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !873

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !492
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !493
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !874

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #13
  %12 = load i32, ptr %0, align 8, !tbaa !492
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !497
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !492
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !492
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !875 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !876

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !498
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !877

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !498
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !878, !llvm.loop !879

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !492
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !493
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !880

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #13
  %21 = load i32, ptr %0, align 8, !tbaa !492
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !497
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !492
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !492
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 !prof !862 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #13
  %3 = load i8, ptr %1, align 1, !tbaa !465, !range !428, !noundef !429
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !770
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !861
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  store i8 %3, ptr %9, align 1, !tbaa !465
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !861
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !862 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !861
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !881
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %40, !prof !882

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !768
  %16 = zext i32 %13 to i64
  %17 = load ptr, ptr %15, align 8, !tbaa !432
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !861
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !770
  br i1 %22, label %27, label %25, !prof !718

25:                                               ; preds = %9
  %26 = zext i32 %21 to i64
  br label %33

27:                                               ; preds = %33, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !768
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %28, align 8, !tbaa !432
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %24) #13
  store ptr %20, ptr %29, align 8, !tbaa !770
  store i32 %13, ptr %6, align 8, !tbaa !881
  br label %40

33:                                               ; preds = %25, %33
  %34 = phi i64 [ 0, %25 ], [ %38, %33 ]
  %35 = getelementptr inbounds i8, ptr %24, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !465, !range !428, !noundef !429
  %37 = getelementptr inbounds i8, ptr %20, i64 %34
  store i8 %36, ptr %37, align 1, !tbaa !465
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %26
  br i1 %39, label %27, label %33, !prof !883, !llvm.loop !884

40:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !885 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  store ptr %3, ptr %0, align 8, !tbaa !481
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !886
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !888 {
  %2 = load ptr, ptr %0, align 8, !tbaa !889
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 !prof !890 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !649
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext false) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = load ptr, ptr %0, align 8, !tbaa !889
  %3 = load i32, ptr %2, align 8, !tbaa !492
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !891 {
  %2 = load ptr, ptr %0, align 8, !tbaa !889
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !497
  %5 = load i32, ptr %2, align 8, !tbaa !492
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !498
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setRootElemNameEPt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !418 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !460
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !602
  %7 = load ptr, ptr %4, align 8, !tbaa !432
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #13
  %10 = load ptr, ptr %3, align 8, !tbaa !460
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #13
  store ptr %11, ptr %5, align 8, !tbaa !602
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !892
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !894 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !813
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !895
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDGrammar13setRootElemIdEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 8, !tbaa !896
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = load ptr, ptr %0, align 8, !tbaa !892
  store ptr null, ptr %0, align 8, !tbaa !892
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !897 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !898

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !733
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !899 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !900
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !900
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !901 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !902

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = invoke noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
          to label %10 unwind label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !668
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

13:                                               ; preds = %10, %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !668
  %17 = load ptr, ptr %16, align 8, !tbaa !432
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !674
  %23 = load i32, ptr %3, align 4, !tbaa !452
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !481
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %1, ptr noundef %26) #13
  %27 = load ptr, ptr %21, align 8, !tbaa !674
  %28 = load i32, ptr %3, align 4, !tbaa !452
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %20, ptr %30, align 8, !tbaa !481
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !671
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !670
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %40, label %37, !prof !903

37:                                               ; preds = %15
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !677
  br label %63

40:                                               ; preds = %15
  %41 = uitofp i32 %33 to double
  %42 = fmul double %41, 1.500000e+00
  %43 = fptoui double %42 to i32
  %44 = load ptr, ptr %0, align 8, !tbaa !668
  %45 = zext i32 %43 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !432
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46) #13
  %51 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !677
  %53 = load i32, ptr %34, align 8, !tbaa !670
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr align 8 %52, i64 %55, i1 false)
  %56 = load ptr, ptr %0, align 8, !tbaa !668
  %57 = load ptr, ptr %51, align 8, !tbaa !677
  %58 = load ptr, ptr %56, align 8, !tbaa !432
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57) #13
  store ptr %50, ptr %51, align 8, !tbaa !677
  store i32 %43, ptr %34, align 8, !tbaa !670
  %61 = load i32, ptr %31, align 4, !tbaa !671
  %62 = add i32 %61, 1
  br label %63

63:                                               ; preds = %37, %40
  %64 = phi i32 [ %33, %37 ], [ %62, %40 ]
  %65 = phi ptr [ %39, %37 ], [ %50, %40 ]
  store i32 %64, ptr %31, align 4, !tbaa !671
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %1, ptr %67, align 8, !tbaa !481
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %64) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %64
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !904 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !905

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !432
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
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !885 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !886
  %4 = load ptr, ptr %0, align 8, !tbaa !889
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !906 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !907
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !909
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !449 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !910
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !449 {
  %3 = load ptr, ptr %0, align 8, !tbaa !910
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !451

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(41) %3) #12
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !910
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !767 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !912
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !418 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !419
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  store i8 0, ptr %7, align 1, !tbaa !430
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  store i8 0, ptr %8, align 2, !tbaa !431
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !418 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !914
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !915
  %9 = load ptr, ptr %8, align 8, !tbaa !432
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !915
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !914
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !916
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %3, ptr %4, align 1, !tbaa !918
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !449 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !919 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !920 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !672
  %6 = load ptr, ptr %0, align 8, !tbaa !668
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !452
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !674
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !481
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !921

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !733
  %17 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #13
  br i1 %18, label %23, label %19, !prof !922

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !481
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !923, !llvm.loop !924

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !925 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !926

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !498
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !927

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !498
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !928

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
  %23 = load i16, ptr %22, align 2, !tbaa !498
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !929, !llvm.loop !930

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !931 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !432
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !901 {
  store ptr %1, ptr %0, align 8, !tbaa !733
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !731
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !932 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !933

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !498
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !934

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !498
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !935, !llvm.loop !936

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
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %3 = load ptr, ptr %0, align 8, !tbaa !916
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(75) %3) #12
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !916
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !919 {
  %3 = load ptr, ptr %0, align 8, !tbaa !907
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !937

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !909
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !938

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !432
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !907
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !909
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %3 = load ptr, ptr %0, align 8, !tbaa !892
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !432
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(80) %3) #12
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !892
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !939 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !805
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !536
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !481
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 8
  store i8 %3, ptr %12, align 8, !tbaa !859
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712XMLValidator16checkRootElementEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !418 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !940 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !941
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !943 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !944
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !891 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !949
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !941
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !481
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !941
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !950 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !941
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !951

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !952
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !949
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !481
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #3 comdat align 2 !prof !953 {
  %9 = zext i1 %7 to i8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !954
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %3, ptr noundef %2, i32 noundef %1) #13
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %12, align 4, !tbaa !956
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %9, ptr %13, align 8, !tbaa !957
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %6, ptr %14, align 8, !tbaa !958
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !953 {
  %3 = zext i1 %1 to i8
  store i8 %3, ptr %0, align 8, !tbaa !959
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 !prof !960 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !954
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !961 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !962 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !693
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !695
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !754

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !754

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !691, !range !428, !noundef !429
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !755
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #17
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !755
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !963
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !689
  %28 = load ptr, ptr %27, align 8, !tbaa !432
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !692
  %34 = load i32, ptr %4, align 4, !tbaa !452
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !481
  call void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #13
  %38 = load ptr, ptr %32, align 8, !tbaa !692
  %39 = load i32, ptr %4, align 4, !tbaa !452
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !481
  %42 = load i32, ptr %9, align 8, !tbaa !695
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !695
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !964 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !965

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !755
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !966 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !967
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !968 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !969, !range !428, !noundef !429
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !970 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !971
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !891 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !941
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !972
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !973

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !952
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !432
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !941
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !481
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !949
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !481
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !481
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !974

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !952
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !949
  %49 = load ptr, ptr %46, align 8, !tbaa !432
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !949
  store i32 %12, ptr %6, align 8, !tbaa !972
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !975 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !976
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !961 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !696
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !693
  %8 = load ptr, ptr %0, align 8, !tbaa !689
  %9 = load ptr, ptr %5, align 8, !tbaa !432
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !452
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !692
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !481
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !977

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !696
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !963
  %23 = load ptr, ptr %20, align 8, !tbaa !432
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !978

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !481
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !979, !llvm.loop !980

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.11", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !693
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !689
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !432
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !689
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !693
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !692
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !692
  store i32 %5, ptr %3, align 8, !tbaa !693
  %23 = load ptr, ptr %0, align 8, !tbaa !689
  %24 = load ptr, ptr %23, align 8, !tbaa !432
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !692
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !481
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !752
  %38 = load ptr, ptr %18, align 8, !tbaa !696
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !963
  %41 = load ptr, ptr %0, align 8, !tbaa !689
  %42 = load ptr, ptr %38, align 8, !tbaa !432
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !481
  store ptr %48, ptr %36, align 8, !tbaa !752
  store ptr %35, ptr %47, align 8, !tbaa !481
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !981

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !693
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !982

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !983 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !696
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !693
  %8 = load ptr, ptr %0, align 8, !tbaa !689
  %9 = load ptr, ptr %5, align 8, !tbaa !432
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !452
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !692
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !481
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !984

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !696
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !963
  %23 = load ptr, ptr %20, align 8, !tbaa !432
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !985

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !481
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !986, !llvm.loop !987

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !962 {
  store ptr %2, ptr %0, align 8, !tbaa !755
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !752
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !963
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !418 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !988
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.11", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !990
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = load ptr, ptr %0, align 8, !tbaa !988
  store ptr null, ptr %0, align 8, !tbaa !988
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !418 {
  %3 = load ptr, ptr %0, align 8, !tbaa !988
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.11", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !990
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !432
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !988
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.11", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !990
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #3 comdat align 2 !prof !991 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !992
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !993

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #13
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !994
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 comdat align 2 !prof !995 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !996
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !998 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !992
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !999 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !1000
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !1001

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !1002
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1003

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) #13
  store ptr %11, ptr %3, align 8, !tbaa !1000
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ %4, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack15getCurrentScopeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !1004 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !805
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !536
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !1005
  ret i32 %11
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !575 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !805
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !536
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !481
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 16
  store i32 %1, ptr %11, align 4, !tbaa !565
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1024), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %4) local_unnamed_addr #3 align 2 !prof !575 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = icmp eq i32 %4, -1
  br i1 %8, label %9, label %13, !prof !576

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #14
  store i8 0, ptr %6, align 1, !tbaa !465
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %11 = sext i16 %3 to i32
  %12 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #14
  br label %35

13:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i32 noundef %4) #13
  %14 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #13
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = icmp eq i16 %3, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %21 = load i32, ptr %20, align 8, !tbaa !1006
  br label %35

22:                                               ; preds = %13
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #13
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %26 = load i32, ptr %25, align 4, !tbaa !1007
  br label %35

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  store i8 0, ptr %7, align 1, !tbaa !465
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %29 = sext i16 %3 to i32
  %30 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef %14, i32 noundef %29, ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  %31 = load i8, ptr %7, align 1, !tbaa !465, !range !428, !noundef !429
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %34

34:                                               ; preds = %33, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %35

35:                                               ; preds = %19, %24, %34, %9
  %36 = phi i32 [ %12, %9 ], [ %21, %19 ], [ %26, %24 ], [ %30, %34 ]
  ret i32 %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !890 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !813
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 !prof !1008 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !1009

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !743
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret ptr %11
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 !prof !894 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !1010

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !681, !range !428, !noundef !429
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !743
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !432
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #12
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !743
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !1011
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !1012
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !1013
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !679
  %26 = load ptr, ptr %25, align 8, !tbaa !432
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32) #13
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !682
  %32 = load i32, ptr %6, align 4, !tbaa !452
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !481
  call void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %35) #13
  %36 = load ptr, ptr %30, align 8, !tbaa !682
  %37 = load i32, ptr %6, align 4, !tbaa !452
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr %29, ptr %39, align 8, !tbaa !481
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !685
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !684
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %50, label %47, !prof !742

47:                                               ; preds = %40
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !688
  br label %73

50:                                               ; preds = %40
  %51 = uitofp i32 %43 to double
  %52 = fmul double %51, 1.500000e+00
  %53 = fptoui double %52 to i32
  %54 = load ptr, ptr %0, align 8, !tbaa !679
  %55 = zext i32 %53 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = load ptr, ptr %54, align 8, !tbaa !432
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %56) #13
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !688
  %63 = load i32, ptr %44, align 8, !tbaa !684
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr align 8 %62, i64 %65, i1 false)
  %66 = load ptr, ptr %0, align 8, !tbaa !679
  %67 = load ptr, ptr %61, align 8, !tbaa !688
  %68 = load ptr, ptr %66, align 8, !tbaa !432
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %67) #13
  store ptr %60, ptr %61, align 8, !tbaa !688
  store i32 %53, ptr %44, align 8, !tbaa !684
  %71 = load i32, ptr %41, align 4, !tbaa !685
  %72 = add i32 %71, 1
  br label %73

73:                                               ; preds = %47, %50
  %74 = phi i32 [ %43, %47 ], [ %72, %50 ]
  %75 = phi ptr [ %49, %47 ], [ %60, %50 ]
  store i32 %74, ptr %41, align 4, !tbaa !685
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  store ptr %4, ptr %77, align 8, !tbaa !481
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %4, i32 noundef %74) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %74
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !1014 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !538
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !575 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !805
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !536
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !481
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 13
  store i32 %1, ptr %11, align 8, !tbaa !806
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !998 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !536
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !805
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !481
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !1015
  %14 = icmp ugt i32 %13, %3
  br i1 %14, label %38, label %15, !prof !1016

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !808
  %18 = shl i32 %3, 1
  store i32 %18, ptr %12, align 8, !tbaa !1015
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !1017
  %21 = zext i32 %18 to i64
  %22 = shl nuw nsw i64 %21, 1
  %23 = load ptr, ptr %20, align 8, !tbaa !432
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %22) #13
  %27 = load ptr, ptr %7, align 8, !tbaa !805
  %28 = getelementptr inbounds ptr, ptr %27, i64 %9
  %29 = load ptr, ptr %28, align 8, !tbaa !481
  %30 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 14
  store ptr %26, ptr %30, align 8, !tbaa !808
  %31 = load ptr, ptr %19, align 8, !tbaa !1017
  %32 = load ptr, ptr %31, align 8, !tbaa !432
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %17) #13
  %35 = load ptr, ptr %7, align 8, !tbaa !805
  %36 = getelementptr inbounds ptr, ptr %35, i64 %9
  %37 = load ptr, ptr %36, align 8, !tbaa !481
  br label %38

38:                                               ; preds = %15, %2
  %39 = phi ptr [ %37, %15 ], [ %11, %2 ]
  %40 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %39, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !808
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %41, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 comdat align 2 !prof !1018 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !1019
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 comdat align 2 !prof !1020 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !1021
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !1022 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %0, ptr noundef %1, i32 noundef %3) #13
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack15setCurrentScopeEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !998 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !805
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !536
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !481
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 11
  store i32 %1, ptr %11, align 4, !tbaa !1005
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner15resizeElemStateEv(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #3 align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !487
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !460
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !432
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  %13 = load i32, ptr %2, align 8, !tbaa !487
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !488
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %26, i8 0, i64 %31, i1 false), !tbaa !452
  br label %41

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 0, %15 ], [ %37, %32 ]
  %34 = getelementptr inbounds i32, ptr %17, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !452
  %36 = getelementptr inbounds i32, ptr %12, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !452
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %2, align 8, !tbaa !487
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %18, !llvm.loop !1023

41:                                               ; preds = %23, %20
  %42 = load ptr, ptr %5, align 8, !tbaa !460
  %43 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !488
  %45 = load ptr, ptr %42, align 8, !tbaa !432
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %44) #13
  store ptr %12, ptr %43, align 8, !tbaa !488
  store i32 %4, ptr %2, align 8, !tbaa !487
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !575 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !805
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !536
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !481
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 12
  store ptr %1, ptr %11, align 8, !tbaa !857
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !1024 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %3 = load ptr, ptr %2, align 8, !tbaa !552
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717PSVIAttributeList5resetEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !1025
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !1026 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !1027
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !894 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !538
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret i32 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 comdat align 2 !prof !1028 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !686
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !683
  %10 = load ptr, ptr %0, align 8, !tbaa !679
  %11 = load ptr, ptr %7, align 8, !tbaa !432
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10) #13
  store i32 %13, ptr %4, align 4, !tbaa !452
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !682
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !481
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !1029

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !1012
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !1030

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !1013
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !1031

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !686
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !1011
  %33 = load ptr, ptr %30, align 8, !tbaa !432
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32) #13
  br i1 %36, label %41, label %37, !prof !1032

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !481
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !1033, !llvm.loop !1034

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ null, %37 ], [ %21, %29 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 !prof !894 {
  store ptr %4, ptr %0, align 8, !tbaa !743
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !740
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !1011
  %9 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %9, align 8, !tbaa !1012
  %10 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 4
  store i32 %3, ptr %10, align 4, !tbaa !1013
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !453 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 1, !tbaa !1035
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712IGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  %4 = alloca [4 x i16], align 8
  %5 = alloca %"class.xercesc_2_7::Janitor.8", align 8
  %6 = alloca %"class.xercesc_2_7::Janitor", align 8
  %7 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !501
  %10 = load ptr, ptr %9, align 8, !tbaa !432
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(48) %9) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %14 = load i8, ptr %13, align 1, !tbaa !572, !range !428, !noundef !429
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %18 = load ptr, ptr %17, align 8, !tbaa !482
  %19 = load ptr, ptr %18, align 8, !tbaa !432
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  br label %22

22:                                               ; preds = %16, %3
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %24 = load ptr, ptr %23, align 8, !tbaa !482
  %25 = load ptr, ptr %24, align 8, !tbaa !432
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(40) %24) #13
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = load i8, ptr %13, align 1, !tbaa !572, !range !428, !noundef !429
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %33 = load i8, ptr %32, align 8, !range !428
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %39 = load ptr, ptr %38, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 3059, i32 noundef 44, ptr noundef %39) #13
          to label %40 unwind label %41

40:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #14
  br label %247

43:                                               ; preds = %29
  %44 = load ptr, ptr %8, align 8, !tbaa !501
  store ptr %44, ptr %23, align 8, !tbaa !482
  br label %45

45:                                               ; preds = %43, %22
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %47 = load ptr, ptr %46, align 8, !tbaa !468
  %48 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %47, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE) #13
  %49 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %48, ptr %49, align 8, !tbaa !450
  %50 = icmp eq ptr %48, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %48, align 8, !tbaa !432
  %53 = getelementptr inbounds ptr, ptr %52, i64 20
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(61) %48) #13
  br label %64

55:                                               ; preds = %45
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %57 = load ptr, ptr %56, align 8, !tbaa !480
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %57) #13
  %59 = load ptr, ptr %56, align 8, !tbaa !480
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %58, ptr noundef %59) #13
          to label %60 unwind label %62

60:                                               ; preds = %55
  store ptr %58, ptr %49, align 8, !tbaa !450
  %61 = load ptr, ptr %46, align 8, !tbaa !468
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %61, ptr noundef nonnull %58) #13
  br label %64

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #12
  br label %247

64:                                               ; preds = %60, %51
  %65 = load ptr, ptr %49, align 8, !tbaa !450
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %65, ptr %66, align 8, !tbaa !478
  %67 = load ptr, ptr %65, align 8, !tbaa !432
  %68 = getelementptr inbounds ptr, ptr %67, i64 5
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef i32 %69(ptr noundef nonnull align 8 dereferenceable(8) %65) #13
  %71 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %70, ptr %71, align 4, !tbaa !434
  %72 = load ptr, ptr %23, align 8, !tbaa !482
  %73 = load ptr, ptr %66, align 8, !tbaa !478
  %74 = load ptr, ptr %72, align 8, !tbaa !432
  %75 = getelementptr inbounds ptr, ptr %74, i64 11
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(40) %72, ptr noundef %73) #13
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %78 = load ptr, ptr %77, align 8, !tbaa !455
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %64
  %81 = load ptr, ptr %78, align 8, !tbaa !432
  %82 = getelementptr inbounds ptr, ptr %81, i64 9
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(8) %78) #13
  br label %84

84:                                               ; preds = %80, %64
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %86 = load ptr, ptr %85, align 8, !tbaa !1036
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %86, align 8, !tbaa !432
  %90 = getelementptr inbounds ptr, ptr %89, i64 4
  %91 = load ptr, ptr %90, align 8
  tail call void %91(ptr noundef nonnull align 8 dereferenceable(8) %86) #13
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %94 = load ptr, ptr %93, align 8, !tbaa !1037
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %94, align 8, !tbaa !432
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(8) %94) #13
  br label %100

100:                                              ; preds = %96, %92
  tail call void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  %101 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %102 = load ptr, ptr %101, align 8, !tbaa !479
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %102) #13
  br i1 %2, label %103, label %132

103:                                              ; preds = %100
  %104 = load ptr, ptr %46, align 8, !tbaa !468
  %105 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %104) #13
  %106 = load ptr, ptr %1, align 8, !tbaa !432
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
  %110 = load ptr, ptr %105, align 8, !tbaa !432
  %111 = getelementptr inbounds ptr, ptr %110, i64 5
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef i32 %112(ptr noundef nonnull align 8 dereferenceable(40) %105, ptr noundef %109) #13
  %114 = load ptr, ptr %46, align 8, !tbaa !468
  %115 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %114) #13
  %116 = load ptr, ptr %115, align 8, !tbaa !432
  %117 = getelementptr inbounds ptr, ptr %116, i64 10
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(40) %115, i32 noundef %113) #13
  %120 = load ptr, ptr %46, align 8, !tbaa !468
  %121 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %120, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE) #13
  %122 = load ptr, ptr %66, align 8, !tbaa !478
  %123 = load ptr, ptr %122, align 8, !tbaa !432
  %124 = getelementptr inbounds ptr, ptr %123, i64 22
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(8) %122) #13
  %127 = load ptr, ptr %126, align 8, !tbaa !432
  %128 = getelementptr inbounds ptr, ptr %127, i64 10
  %129 = load ptr, ptr %128, align 8
  tail call void %129(ptr noundef nonnull align 8 dereferenceable(16) %126, ptr noundef %119) #13
  %130 = load ptr, ptr %46, align 8, !tbaa !468
  %131 = load ptr, ptr %66, align 8, !tbaa !478
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %130, ptr noundef %131) #13
  br label %132

132:                                              ; preds = %103, %100
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %135 = load i8, ptr %134, align 1, !tbaa !484, !range !428, !noundef !429
  %136 = icmp ne i8 %135, 0
  %137 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %133, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %136) #13
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %132
  %140 = load ptr, ptr %1, align 8, !tbaa !432
  %141 = getelementptr inbounds ptr, ptr %140, i64 6
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef zeroext i1 %142(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
  %144 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %145 = load ptr, ptr %1, align 8, !tbaa !432
  %146 = getelementptr inbounds ptr, ptr %145, i64 5
  %147 = load ptr, ptr %146, align 8
  br i1 %143, label %148, label %156

148:                                              ; preds = %139
  %149 = invoke noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %150 unwind label %154

150:                                              ; preds = %148
  %151 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %152 = load ptr, ptr %151, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %144, ptr noundef nonnull @.str, i32 noundef 3116, i32 noundef 76, ptr noundef %149, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %152) #13
          to label %153 unwind label %154

153:                                              ; preds = %150
  tail call void @__cxa_throw(ptr nonnull %144, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

154:                                              ; preds = %150, %148
  %155 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %144) #14
  br label %247

156:                                              ; preds = %139
  %157 = invoke noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %158 unwind label %162

158:                                              ; preds = %156
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %160 = load ptr, ptr %159, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %144, ptr noundef nonnull @.str, i32 noundef 3118, i32 noundef 2, ptr noundef %157, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %160) #13
          to label %161 unwind label %162

161:                                              ; preds = %158
  tail call void @__cxa_throw(ptr nonnull %144, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

162:                                              ; preds = %158, %156
  %163 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %144) #14
  br label %247

164:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 292063281220, ptr %4, align 8
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %166 = load ptr, ptr %165, align 8, !tbaa !460
  %167 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %166) #13
  %168 = load ptr, ptr %165, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %167, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef %168) #13
          to label %169 unwind label %204

169:                                              ; preds = %164
  %170 = load ptr, ptr %1, align 8, !tbaa !432
  %171 = getelementptr inbounds ptr, ptr %170, i64 5
  %172 = load ptr, ptr %171, align 8
  %173 = call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
  call void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %167, ptr noundef %173) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %167) #13
  call void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %137, i1 noundef zeroext true) #13
  %174 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %133, ptr noundef nonnull %137, ptr noundef nonnull %167) #13
          to label %175 unwind label %206

175:                                              ; preds = %169
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %177 = load ptr, ptr %176, align 8, !tbaa !475
  %178 = icmp eq ptr %177, null
  br i1 %178, label %214, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %181 = load ptr, ptr %180, align 8, !tbaa !480
  %182 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %181) #13
          to label %183 unwind label %208

183:                                              ; preds = %179
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %185 = load i32, ptr %184, align 4, !tbaa !477
  %186 = load ptr, ptr %180, align 8, !tbaa !480
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %182, ptr noundef nonnull %4, i32 noundef %185, i32 noundef 1, ptr noundef %186) #13
          to label %187 unwind label %210

187:                                              ; preds = %183
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %182, i32 noundef 4) #13
  call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %182, i1 noundef zeroext true) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %182) #13
  %188 = load ptr, ptr %176, align 8, !tbaa !475
  %189 = load ptr, ptr %1, align 8, !tbaa !432
  %190 = getelementptr inbounds ptr, ptr %189, i64 4
  %191 = load ptr, ptr %190, align 8
  %192 = invoke noundef ptr %191(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %193 unwind label %212

193:                                              ; preds = %187
  %194 = load ptr, ptr %1, align 8, !tbaa !432
  %195 = getelementptr inbounds ptr, ptr %194, i64 5
  %196 = load ptr, ptr %195, align 8
  %197 = invoke noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %198 unwind label %212

198:                                              ; preds = %193
  %199 = load ptr, ptr %188, align 8, !tbaa !432
  %200 = getelementptr inbounds ptr, ptr %199, i64 4
  %201 = load ptr, ptr %200, align 8
  invoke void %201(ptr noundef nonnull align 8 dereferenceable(8) %188, ptr noundef nonnull align 8 dereferenceable(80) %182, ptr noundef %192, ptr noundef %197, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %202 unwind label %212

202:                                              ; preds = %198
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %203 = load ptr, ptr %176, align 8, !tbaa !475
  br label %214

204:                                              ; preds = %164
  %205 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %167, ptr noundef %166) #12
  br label %245

206:                                              ; preds = %169
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %243

208:                                              ; preds = %179
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %243

210:                                              ; preds = %183
  %211 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %182, ptr noundef %181) #12
  br label %243

212:                                              ; preds = %198, %193, %187
  %213 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %243

214:                                              ; preds = %202, %175
  %215 = phi ptr [ %203, %202 ], [ null, %175 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #14
  %216 = load ptr, ptr %66, align 8, !tbaa !478
  %217 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %218 = load ptr, ptr %217, align 8, !tbaa !480
  %219 = load ptr, ptr %165, align 8, !tbaa !460
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef %216, ptr noundef %215, ptr noundef %218, ptr noundef %219) #13
          to label %220 unwind label %232

220:                                              ; preds = %214
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull %0, ptr noundef nonnull %133, ptr noundef nonnull %221) #13
          to label %222 unwind label %234

222:                                              ; preds = %220
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %7, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %223 unwind label %234

223:                                              ; preds = %222
  %224 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %225 = load i8, ptr %224, align 8, !tbaa !458, !range !428, !noundef !429
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr %23, align 8, !tbaa !482
  %229 = load ptr, ptr %228, align 8, !tbaa !432
  %230 = getelementptr inbounds ptr, ptr %229, i64 4
  %231 = load ptr, ptr %230, align 8
  invoke void %231(ptr noundef nonnull align 8 dereferenceable(40) %228, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %236 unwind label %234

232:                                              ; preds = %214
  %233 = landingpad { ptr, i32 }
          cleanup
  br label %241

234:                                              ; preds = %237, %227, %222, %220
  %235 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #12
  br label %241

236:                                              ; preds = %227, %223
  br i1 %2, label %237, label %239

237:                                              ; preds = %236
  %238 = load ptr, ptr %46, align 8, !tbaa !468
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %238) #13
          to label %239 unwind label %234

239:                                              ; preds = %237, %236
  %240 = load ptr, ptr %49, align 8, !tbaa !450
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %240

241:                                              ; preds = %234, %232
  %242 = phi { ptr, i32 } [ %235, %234 ], [ %233, %232 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #14
  br label %243

243:                                              ; preds = %208, %210, %212, %241, %206
  %244 = phi { ptr, i32 } [ %242, %241 ], [ %207, %206 ], [ %213, %212 ], [ %211, %210 ], [ %209, %208 ]
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %245

245:                                              ; preds = %243, %204
  %246 = phi { ptr, i32 } [ %244, %243 ], [ %205, %204 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %247

247:                                              ; preds = %154, %162, %245, %62, %41
  %248 = phi { ptr, i32 } [ %63, %62 ], [ %42, %41 ], [ %246, %245 ], [ %155, %154 ], [ %163, %162 ]
  resume { ptr, i32 } %248
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !562
  %4 = load ptr, ptr %3, align 8, !tbaa !432
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !562
  %8 = load ptr, ptr %7, align 8, !tbaa !432
  %9 = getelementptr inbounds ptr, ptr %8, i64 9
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %12, align 8, !tbaa !1038
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !449 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr %1, ptr %3, align 8, !tbaa !481
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !503
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPtE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = load i16, ptr %1, align 2, !tbaa !498
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %36, label %10, !prof !710

10:                                               ; preds = %2, %18
  %11 = phi i16 [ %19, %18 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %11) #13
  %13 = load ptr, ptr %3, align 8, !tbaa !481
  br i1 %12, label %14, label %20, !prof !1039

14:                                               ; preds = %10
  store i16 0, ptr %13, align 2, !tbaa !498
  %15 = getelementptr inbounds i16, ptr %13, i64 1
  store ptr %15, ptr %3, align 8, !tbaa !481
  %16 = load i16, ptr %15, align 2, !tbaa !498
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %36, label %18, !prof !451

18:                                               ; preds = %14, %32
  %19 = phi i16 [ %16, %14 ], [ %34, %32 ]
  br label %10, !llvm.loop !1040

20:                                               ; preds = %10
  %21 = load i16, ptr %13, align 2, !tbaa !498
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %36, label %23, !prof !1041

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8, !tbaa !503
  call void @_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %25

25:                                               ; preds = %30, %23
  %26 = load ptr, ptr %3, align 8, !tbaa !481
  %27 = getelementptr inbounds i16, ptr %26, i64 1
  store ptr %27, ptr %3, align 8, !tbaa !481
  %28 = load i16, ptr %27, align 2, !tbaa !498
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %36, label %30, !prof !1042

30:                                               ; preds = %25
  %31 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %28) #13
  br i1 %31, label %32, label %25, !prof !1043, !llvm.loop !1044

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8, !tbaa !481
  %34 = load i16, ptr %33, align 2, !tbaa !498
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %18, !prof !1045

36:                                               ; preds = %20, %32, %14, %25, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !449 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !663
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !1046 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #13
  %3 = load ptr, ptr %1, align 8, !tbaa !481
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !663
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !481
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !663
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !1046 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !663
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !664
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !1047

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !666
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !432
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #13
  %22 = load i32, ptr %3, align 4, !tbaa !663
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !666
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !665
  %31 = load ptr, ptr %28, align 8, !tbaa !432
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
  store ptr %21, ptr %29, align 8, !tbaa !665
  store i32 %13, ptr %6, align 8, !tbaa !664
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !665
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !481
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !481
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !1048

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1024) %0) local_unnamed_addr #10 align 2 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  store i8 0, ptr %2, align 8, !tbaa !563
  %3 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 0, ptr %3, align 1, !tbaa !547
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 2
  store i32 -1, ptr %4, align 4, !tbaa !605
  %5 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !607
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 4
  store i32 -1, ptr %6, align 4, !tbaa !606
  %7 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!417}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!36 = !{ptr @_ZN11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev, i64 3}
!39 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, i64 3}
!40 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZNK11xercesc_2_79ReaderMgr5atEOFEv, i64 5}
!41 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, i64 2}
!43 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, i64 2}
!45 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 3}
!46 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 3}
!47 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEEC2EPS1_MS1_FvvE, i64 3}
!48 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, i64 3}
!49 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEE7releaseEv, i64 3}
!50 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEED2Ev, i64 3}
!51 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!52 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPtED2Ev, i64 2}
!53 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 16}
!54 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, i64 2}
!55 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, i64 2}
!56 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjED2Ev, i64 4}
!57 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev, i64 2}
!58 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_717PSVIAttributeListD2Ev, i64 2}
!59 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_712ValueStackOfIbED2Ev, i64 2}
!60 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 42}
!61 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE, i64 3}
!62 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE, i64 3}
!63 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE, i64 6}
!64 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, i64 3}
!65 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE, i64 3}
!66 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb, i64 3}
!67 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!68 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, i64 3}
!69 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 3}
!70 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 6}
!71 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 6}
!72 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 3}
!73 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE, i64 3}
!74 = !{ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, i64 3}
!75 = !{ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 3}
!76 = !{ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, ptr @_ZN11xercesc_2_710XMLScannerD2Ev, i64 3}
!77 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, i64 811734}
!78 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, i64 182449}
!79 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, i64 223516}
!80 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, i64 105}
!81 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, i64 406071}
!82 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @__cxa_begin_catch, i64 2}
!83 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 1}
!84 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv, i64 1}
!85 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @__cxa_end_catch, i64 2}
!86 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!87 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_79ElemStack7isEmptyEv, i64 1360648}
!88 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 2}
!89 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt, i64 2}
!90 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @__cxa_allocate_exception, i64 1}
!91 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!92 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @__cxa_throw, i64 1}
!93 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @__cxa_free_exception, i64 1}
!94 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ElemStack13getCurrentURIEv, i64 680082}
!95 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv, i64 679964}
!96 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ElemStack6popTopEv, i64 680324}
!97 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 361}
!98 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, i64 680324}
!99 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 2}
!100 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, i64 680323}
!101 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 680323}
!102 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 680323}
!103 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, i64 1359923}
!104 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv, i64 679962}
!105 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, i64 679961}
!106 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv, i64 336746}
!107 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv, i64 1}
!108 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!109 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv, i64 2}
!110 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv, i64 679962}
!111 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv, i64 336746}
!112 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv, i64 1}
!113 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv, i64 679962}
!114 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 1360283}
!115 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, i64 679961}
!116 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE, i64 1}
!117 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv, i64 679963}
!118 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, i64 1}
!119 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 679961}
!120 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv, i64 360}
!121 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_75QName9getPrefixEv, i64 360}
!122 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, i64 360}
!123 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_712ValueStackOfIbE4sizeEv, i64 679961}
!124 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb, i64 679961}
!125 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv, i64 680078}
!126 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ElemStack17getValidationFlagEv, i64 680319}
!127 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 833461}
!128 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, i64 833461}
!129 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv, i64 1}
!130 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 1}
!131 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 4968672}
!132 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 1}
!133 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ReaderMgr10skipToCharEt, i64 1}
!134 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_79ElemStack7isEmptyEv, i64 833460}
!135 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 833460}
!136 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, i64 833460}
!137 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, i64 832907}
!138 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv, i64 832907}
!139 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, i64 1818756}
!140 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 832905}
!141 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv, i64 2}
!142 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, i64 499744}
!143 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack15getCurrentScopeEv, i64 499744}
!144 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack8addLevelEv, i64 833460}
!145 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack17setValidationFlagEb, i64 833462}
!146 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi, i64 833460}
!147 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, i64 1}
!148 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, i64 1}
!149 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, i64 190050}
!150 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv, i64 10}
!151 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 5}
!152 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 5}
!153 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv, i64 3}
!154 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_, i64 3}
!155 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, i64 550}
!156 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, i64 833460}
!157 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 1}
!158 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj, i64 1}
!159 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_75QNameD1Ev, i64 1}
!160 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 2}
!161 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt, i64 496161}
!162 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, i64 1}
!163 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 17}
!164 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, i64 17}
!165 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, i64 17}
!166 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 17}
!167 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE, i64 1}
!168 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 3}
!169 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 3}
!170 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv, i64 986388}
!171 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv, i64 534}
!172 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, i64 833460}
!173 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj, i64 833460}
!174 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack13setCurrentURIEj, i64 833460}
!175 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!176 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715SchemaValidator16getErrorOccurredEv, i64 985851}
!177 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt, i64 832909}
!178 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv, i64 496162}
!179 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv, i64 496162}
!180 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, i64 496162}
!181 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 496161}
!182 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 496160}
!183 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 496160}
!184 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 496160}
!185 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack15setCurrentScopeEi, i64 832908}
!186 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner15resizeElemStateEv, i64 1}
!187 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE, i64 833459}
!188 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_714XMLElementDecl5getIdEv, i64 1}
!189 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712XMLValidator16checkRootElementEj, i64 1}
!190 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv, i64 832907}
!191 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, i64 832906}
!192 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv, i64 833459}
!193 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_717PSVIAttributeList5resetEv, i64 1}
!194 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, i64 833459}
!195 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 190050}
!196 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, i64 190050}
!197 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_712IGXMLScanner25toCheckIdentityConstraintEv, i64 985850}
!198 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, i64 832906}
!199 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1}
!200 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 1}
!201 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack6popTopEv, i64 153377}
!202 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715SchemaValidator27getCurrentDatatypeValidatorEv, i64 1}
!203 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715SchemaValidator18getNormalizedValueEv, i64 1}
!204 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_715SchemaValidator18getIsElemSpecifiedEv, i64 2}
!205 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv, i64 1}
!206 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, i64 152942}
!207 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE, i64 1}
!208 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv, i64 153376}
!209 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack17getValidationFlagEv, i64 153376}
!210 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv, i64 1}
!211 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE, i64 1}
!212 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 1}
!213 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, i64 1}
!214 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb, i64 679963}
!215 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, i64 612}
!216 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 6}
!217 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr10skipToCharEt, i64 1}
!218 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 831}
!219 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, i64 388}
!220 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 38}
!221 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, i64 31}
!222 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, i64 31}
!223 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 31}
!224 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE, i64 1}
!225 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv, i64 1}
!226 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 6}
!227 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 8}
!228 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79ElemStack7isEmptyEv, i64 389}
!229 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, i64 389}
!230 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj, i64 389}
!231 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack17setValidationFlagEb, i64 389}
!232 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv, i64 387}
!233 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, i64 387}
!234 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 681}
!235 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv, i64 389}
!236 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 682}
!237 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 684}
!238 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 74}
!239 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt, i64 610}
!240 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt, i64 1}
!241 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, i64 221}
!242 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt, i64 2}
!243 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt, i64 220}
!244 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79XMLAttDef7getTypeEv, i64 8}
!245 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, i64 7}
!246 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, i64 7}
!247 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 219}
!248 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, i64 219}
!249 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb, i64 219}
!250 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, i64 220}
!251 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv, i64 219}
!252 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, i64 218}
!253 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 2}
!254 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv, i64 21}
!255 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, i64 220}
!256 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 220}
!257 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @__cxa_allocate_exception, i64 1}
!258 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!259 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 386}
!260 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 148}
!261 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 188}
!262 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv, i64 20}
!263 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79XMLAttDef10isExternalEv, i64 2}
!264 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv, i64 10}
!265 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack6popTopEv, i64 148}
!266 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack17getValidationFlagEv, i64 147}
!267 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!268 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE, i64 3}
!269 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!270 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!271 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!272 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!273 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 5}
!274 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, i64 5}
!275 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!276 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!277 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!278 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, i64 6}
!279 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!280 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj, i64 3}
!281 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!282 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev, i64 3}
!283 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!284 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!285 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!286 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!287 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!288 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!289 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 6}
!290 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!291 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, i64 6}
!292 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, i64 3}
!293 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbED2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIbED2Ev, i64 3}
!294 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 6}
!295 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv, i64 190248}
!296 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 1}
!297 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv, i64 190056}
!298 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 156}
!299 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE4sizeEv, i64 833461}
!300 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 1089178}
!301 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 1089215}
!302 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 63939}
!303 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 897360}
!304 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 63902}
!305 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 38}
!306 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt, i64 1025276}
!307 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, i64 191816}
!308 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv, i64 1}
!309 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt, i64 1}
!310 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 383629}
!311 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, i64 191815}
!312 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt, i64 2}
!313 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, i64 191814}
!314 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 8}
!315 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZNK11xercesc_2_79XMLBuffer6getLenEv, i64 383628}
!316 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE, i64 8}
!317 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_, i64 8}
!318 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, i64 191806}
!319 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j, i64 191806}
!320 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_712IGXMLScanner22resizeRawAttrColonListEv, i64 1}
!321 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @__cxa_allocate_exception, i64 1}
!322 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!323 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 153377}
!324 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_, i64 1}
!325 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1025276}
!326 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 1025276}
!327 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj, i64 7}
!328 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!329 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!330 = !{ptr @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j, ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj, i64 191808}
!331 = !{ptr @_ZN11xercesc_2_712KVStringPair3setEPKtjS2_j, ptr @_ZN11xercesc_2_712KVStringPair8setValueEPKtj, i64 191808}
!332 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!333 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv, i64 1359931}
!334 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @__cxa_allocate_exception, i64 1}
!335 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIbE16getMemoryManagerEv, i64 1}
!336 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!337 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, i64 1359930}
!338 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, i64 1359930}
!339 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, i64 4843157}
!340 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 4843156}
!341 = !{ptr @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 679966}
!342 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!343 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!344 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE4pushERKb, ptr @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb, i64 1359931}
!345 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE4sizeEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIbE4sizeEv, i64 679965}
!346 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!347 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!348 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!349 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!350 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!351 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!352 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @__cxa_allocate_exception, i64 1}
!353 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv, i64 1}
!354 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!355 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, i64 4843156}
!356 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!357 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!358 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!359 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!360 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!361 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIbE10addElementERKb, ptr @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj, i64 1359937}
!362 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!363 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!364 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 612}
!365 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, i64 612}
!366 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 1880}
!367 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 48}
!368 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 47}
!369 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_allocate_exception, i64 1}
!370 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_free_exception, i64 1}
!371 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_, i64 46}
!372 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 46}
!373 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!374 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!375 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!376 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!377 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_, i64 1}
!378 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!379 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 1927}
!380 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 2046}
!381 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 2046}
!382 = !{ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 1330}
!383 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!384 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 10}
!385 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!386 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!387 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 201775}
!388 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 201775}
!389 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!390 = !{ptr @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 872}
!391 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv, i64 1}
!392 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 885}
!393 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_, i64 884}
!394 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 392072}
!395 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 832910}
!396 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, i64 24}
!397 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 833460}
!398 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, ptr @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb, i64 833460}
!399 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, i64 1}
!400 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 1}
!401 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 2}
!402 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 1992715}
!403 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!404 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_, i64 78}
!405 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 79}
!406 = !{ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 95}
!407 = !{ptr @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 832911}
!408 = !{ptr @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 832911}
!409 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 503282}
!410 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 503282}
!411 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 79}
!412 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 1}
!413 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt, ptr @_ZN11xercesc_2_713ValueVectorOfIPtE17removeAllElementsEv, i64 1}
!414 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 13}
!415 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt, ptr @_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_, i64 1}
!416 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_, ptr @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj, i64 2}
!417 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!418 = !{!"function_entry_count", i64 0}
!419 = !{!420, !427, i64 72}
!420 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !421, i64 0, !427, i64 72, !427, i64 73, !427, i64 74}
!421 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !422, i64 0, !423, i64 8, !423, i64 12, !426, i64 16, !426, i64 24, !426, i64 32, !426, i64 40, !426, i64 48, !426, i64 56, !426, i64 64}
!422 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!423 = !{!"int", !424, i64 0}
!424 = !{!"omnipotent char", !425, i64 0}
!425 = !{!"Simple C++ TBAA"}
!426 = !{!"any pointer", !424, i64 0}
!427 = !{!"bool", !424, i64 0}
!428 = !{i8 0, i8 2}
!429 = !{}
!430 = !{!420, !427, i64 73}
!431 = !{!420, !427, i64 74}
!432 = !{!433, !433, i64 0}
!433 = !{!"vtable pointer", !425, i64 0}
!434 = !{!435, !447, i64 780}
!435 = !{!"_ZTSN11xercesc_2_712IGXMLScannerE", !436, i64 0, !427, i64 776, !447, i64 780, !423, i64 784, !426, i64 792, !444, i64 800, !426, i64 840, !423, i64 848, !426, i64 856, !426, i64 864, !426, i64 872, !426, i64 880, !426, i64 888, !426, i64 896, !426, i64 904, !426, i64 912, !423, i64 920, !426, i64 928, !426, i64 936, !426, i64 944, !426, i64 952, !426, i64 960, !426, i64 968, !426, i64 976, !448, i64 984}
!436 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !437, i64 0, !438, i64 8, !427, i64 16, !427, i64 17, !427, i64 18, !427, i64 19, !427, i64 20, !427, i64 21, !427, i64 22, !427, i64 23, !427, i64 24, !427, i64 25, !427, i64 26, !427, i64 27, !427, i64 28, !427, i64 29, !427, i64 30, !427, i64 31, !427, i64 32, !427, i64 33, !427, i64 34, !427, i64 35, !427, i64 36, !427, i64 37, !427, i64 38, !423, i64 40, !423, i64 44, !423, i64 48, !423, i64 52, !423, i64 56, !423, i64 60, !423, i64 64, !423, i64 68, !426, i64 72, !423, i64 80, !423, i64 84, !423, i64 88, !423, i64 92, !423, i64 96, !426, i64 104, !426, i64 112, !426, i64 120, !426, i64 128, !426, i64 136, !426, i64 144, !426, i64 152, !426, i64 160, !426, i64 168, !427, i64 176, !439, i64 184, !426, i64 264, !442, i64 272, !426, i64 280, !426, i64 288, !426, i64 296, !426, i64 304, !426, i64 312, !426, i64 320, !426, i64 328, !426, i64 336, !426, i64 344, !441, i64 352, !426, i64 360, !443, i64 368, !444, i64 392, !444, i64 432, !444, i64 472, !444, i64 512, !444, i64 552, !444, i64 592, !444, i64 632, !445, i64 672}
!437 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!438 = !{!"long", !424, i64 0}
!439 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !440, i64 0, !426, i64 8, !426, i64 16, !426, i64 24, !426, i64 32, !423, i64 40, !426, i64 48, !427, i64 56, !441, i64 60, !427, i64 64, !426, i64 72}
!440 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!441 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !424, i64 0}
!442 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !424, i64 0}
!443 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !423, i64 0, !426, i64 8, !426, i64 16}
!444 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !423, i64 0, !423, i64 4, !423, i64 8, !427, i64 12, !426, i64 16, !426, i64 24, !426, i64 32}
!445 = !{!"_ZTSN11xercesc_2_79ElemStackE", !423, i64 0, !423, i64 4, !446, i64 8, !426, i64 48, !423, i64 56, !423, i64 60, !423, i64 64, !423, i64 68, !423, i64 72, !423, i64 76, !423, i64 80, !426, i64 88, !426, i64 96}
!446 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !422, i64 0, !426, i64 8, !426, i64 16, !426, i64 24, !423, i64 32, !423, i64 36}
!447 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !424, i64 0}
!448 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !427, i64 0, !427, i64 1, !423, i64 4, !423, i64 8, !423, i64 12, !426, i64 16, !426, i64 24, !426, i64 32}
!449 = !{!"function_entry_count", i64 1}
!450 = !{!435, !426, i64 880}
!451 = !{!"branch_weights", i32 1, i32 2}
!452 = !{!423, !423, i64 0}
!453 = !{!"function_entry_count", i64 3}
!454 = !{!436, !423, i64 96}
!455 = !{!436, !426, i64 120}
!456 = !{!"branch_weights", i32 1, i32 4}
!457 = !{!436, !427, i64 21}
!458 = !{!436, !427, i64 24}
!459 = !{!"branch_weights", i32 3, i32 2}
!460 = !{!436, !426, i64 360}
!461 = distinct !{!461, !462}
!462 = !{!"llvm.loop.mustprogress"}
!463 = !{!464, !426, i64 0}
!464 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !426, i64 0, !423, i64 8, !423, i64 12, !423, i64 16, !426, i64 24, !426, i64 32, !423, i64 40, !423, i64 44, !427, i64 48, !427, i64 49, !427, i64 50, !423, i64 52, !426, i64 56, !423, i64 64, !426, i64 72, !423, i64 80, !423, i64 84}
!465 = !{!427, !427, i64 0}
!466 = !{!436, !427, i64 18}
!467 = !{!435, !426, i64 888}
!468 = !{!436, !426, i64 280}
!469 = !{!436, !426, i64 304}
!470 = !{!436, !442, i64 272}
!471 = !{!436, !427, i64 22}
!472 = !{!436, !423, i64 40}
!473 = !{!436, !427, i64 23}
!474 = !{!435, !427, i64 776}
!475 = !{!436, !426, i64 128}
!476 = !{!436, !427, i64 30}
!477 = !{!436, !423, i64 52}
!478 = !{!436, !426, i64 296}
!479 = !{!435, !426, i64 904}
!480 = !{!436, !426, i64 288}
!481 = !{!426, !426, i64 0}
!482 = !{!436, !426, i64 264}
!483 = !{!436, !427, i64 31}
!484 = !{!436, !427, i64 17}
!485 = !{!436, !427, i64 37}
!486 = !{!436, !427, i64 29}
!487 = !{!435, !423, i64 784}
!488 = !{!435, !426, i64 792}
!489 = !{!435, !426, i64 840}
!490 = !{!435, !423, i64 848}
!491 = !{!"function_entry_count", i64 496321}
!492 = !{!444, !423, i64 0}
!493 = !{!444, !423, i64 4}
!494 = !{!444, !423, i64 8}
!495 = !{!444, !427, i64 12}
!496 = !{!444, !426, i64 16}
!497 = !{!444, !426, i64 32}
!498 = !{!499, !499, i64 0}
!499 = !{!"short", !424, i64 0}
!500 = !{!435, !426, i64 856}
!501 = !{!435, !426, i64 864}
!502 = !{!435, !426, i64 872}
!503 = !{!435, !426, i64 896}
!504 = !{!435, !426, i64 912}
!505 = !{!435, !426, i64 928}
!506 = !{!435, !426, i64 936}
!507 = !{!435, !426, i64 944}
!508 = !{!435, !426, i64 952}
!509 = !{!435, !426, i64 968}
!510 = !{!435, !426, i64 976}
!511 = !{!512, !426, i64 0}
!512 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_12IGXMLScannerEEE", !426, i64 0, !424, i64 8}
!513 = !{!512, !424, i64 8}
!514 = !{!"branch_weights", i32 4, i32 1}
!515 = !{!"function_entry_count", i64 5836268}
!516 = !{!517, !426, i64 32}
!517 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !518, i64 0, !426, i64 8, !426, i64 16, !426, i64 24, !426, i64 32, !426, i64 40, !426, i64 48, !423, i64 56, !427, i64 60}
!518 = !{!"_ZTSN11xercesc_2_77GrammarE", !422, i64 0}
!519 = !{!520, !426, i64 0}
!520 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEE", !426, i64 0, !424, i64 8}
!521 = !{!520, !424, i64 8}
!522 = !{!"branch_weights", i32 2135, i32 -1065033708, i32 2134, i32 2135, i32 2135, i32 1452681777, i32 2135, i32 1780501709}
!523 = distinct !{!523, !462}
!524 = !{!"branch_weights", i32 391, i32 833462}
!525 = !{!"branch_weights", i32 1514177, i32 1}
!526 = !{!"branch_weights", i32 2107, i32 2147481541}
!527 = distinct !{!527, !462}
!528 = !{!"branch_weights", i32 -2147483648, i32 0}
!529 = !{!530, !531, i64 8}
!530 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !531, i64 8, !426, i64 16, !423, i64 24, !426, i64 32, !426, i64 40}
!531 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !424, i64 0}
!532 = !{!530, !426, i64 32}
!533 = !{!534, !426, i64 0}
!534 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !426, i64 0, !423, i64 8}
!535 = !{!"function_entry_count", i64 2194501}
!536 = !{!445, !423, i64 60}
!537 = !{!"function_entry_count", i64 1668291}
!538 = !{!539, !426, i64 16}
!539 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !422, i64 0, !426, i64 8, !426, i64 16, !540, i64 24, !423, i64 28, !427, i64 32}
!540 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !424, i64 0}
!541 = !{!"function_entry_count", i64 680325}
!542 = !{!"branch_weights", i32 1, i32 680326}
!543 = !{!"branch_weights", i32 242, i32 680085}
!544 = !{!"branch_weights", i32 679967, i32 360}
!545 = !{!"branch_weights", i32 680326, i32 1}
!546 = !{!464, !423, i64 8}
!547 = !{!435, !427, i64 985}
!548 = !{!"branch_weights", i32 1, i32 679967}
!549 = !{!"branch_weights", i32 679967, i32 1}
!550 = !{!435, !426, i64 1008}
!551 = !{!"branch_weights", i32 336749, i32 343219}
!552 = !{!436, !426, i64 160}
!553 = !{!435, !426, i64 1016}
!554 = !{!"branch_weights", i32 360, i32 679967}
!555 = !{!464, !427, i64 49}
!556 = !{!464, !427, i64 50}
!557 = !{!464, !426, i64 24}
!558 = !{!464, !423, i64 16}
!559 = !{!435, !426, i64 1000}
!560 = !{!"branch_weights", i32 343219, i32 336749}
!561 = !{!"branch_weights", i32 1, i32 336749}
!562 = !{!436, !426, i64 168}
!563 = !{!435, !427, i64 984}
!564 = !{!"branch_weights", i32 2146350446, i32 1133202}
!565 = !{!464, !423, i64 84}
!566 = !{!"branch_weights", i32 1923034, i32 -682823225}
!567 = !{!"branch_weights", i32 1, i32 679966}
!568 = !{!"branch_weights", i32 4, i32 680323}
!569 = !{!"branch_weights", i32 241, i32 680083}
!570 = !{!"branch_weights", i32 679966, i32 118}
!571 = !{!"branch_weights", i32 679966, i32 1}
!572 = !{!436, !427, i64 25}
!573 = !{!"branch_weights", i32 118, i32 679966}
!574 = !{!"branch_weights", i32 118, i32 1}
!575 = !{!"function_entry_count", i64 833461}
!576 = !{!"branch_weights", i32 833462, i32 1}
!577 = !{!"branch_weights", i32 1800403, i32 -1583256351}
!578 = !{!"branch_weights", i32 1, i32 832911}
!579 = !{!"branch_weights", i32 3, i32 833460}
!580 = !{!436, !427, i64 26}
!581 = !{!"branch_weights", i32 2, i32 2}
!582 = !{!436, !426, i64 328}
!583 = !{!"branch_weights", i32 4, i32 5}
!584 = !{!436, !426, i64 336}
!585 = !{!"branch_weights", i32 643412, i32 190051}
!586 = !{!"branch_weights", i32 551, i32 832912}
!587 = !{!436, !427, i64 38}
!588 = !{!"branch_weights", i32 551, i32 1}
!589 = distinct !{!589, !462}
!590 = !{!"branch_weights", i32 1, i32 832912}
!591 = !{!"branch_weights", i32 832912, i32 1}
!592 = !{!"branch_weights", i32 579754, i32 253159}
!593 = !{!436, !426, i64 312}
!594 = !{!"branch_weights", i32 579754, i32 1}
!595 = !{!"branch_weights", i32 0, i32 -2147483648}
!596 = !{!"branch_weights", i32 69851042, i32 2077632606}
!597 = !{!"branch_weights", i32 1, i32 36, i32 1}
!598 = !{!"branch_weights", i32 18, i32 1}
!599 = !{!"branch_weights", i32 832912, i32 534}
!600 = !{!"branch_weights", i32 534, i32 285691}
!601 = !{!"branch_weights", i32 534, i32 1}
!602 = !{!436, !426, i64 320}
!603 = !{!"branch_weights", i32 2, i32 1}
!604 = !{!"branch_weights", i32 2147481072, i32 2576}
!605 = !{!435, !423, i64 988}
!606 = !{!435, !423, i64 996}
!607 = !{!435, !423, i64 992}
!608 = !{!"branch_weights", i32 832912, i32 551}
!609 = !{!"branch_weights", i32 336749, i32 496164}
!610 = !{!"branch_weights", i32 1, i32 496164}
!611 = !{!"branch_weights", i32 496164, i32 1}
!612 = !{!"branch_weights", i32 550, i32 832911}
!613 = !{!436, !426, i64 104}
!614 = !{!"branch_weights", i32 -1583246588, i32 1797152}
!615 = !{!"branch_weights", i32 1, i32 833462}
!616 = !{!"branch_weights", i32 680085, i32 153378}
!617 = !{!"branch_weights", i32 152946, i32 433}
!618 = !{!"branch_weights", i32 1, i32 152946}
!619 = !{!"branch_weights", i32 152946, i32 1}
!620 = !{!"branch_weights", i32 433, i32 152946}
!621 = !{!"branch_weights", i32 -1362629176, i32 19118}
!622 = !{!"branch_weights", i32 1, i32 153378}
!623 = !{!"branch_weights", i32 433, i32 1}
!624 = !{!"branch_weights", i32 679967, i32 119}
!625 = !{!435, !426, i64 960}
!626 = !{!"function_entry_count", i64 390}
!627 = !{!"branch_weights", i32 391, i32 1}
!628 = !{!"branch_weights", i32 170260852, i32 1977222796}
!629 = !{!"branch_weights", i32 31, i32 1}
!630 = !{!"branch_weights", i32 361, i32 1}
!631 = !{!"branch_weights", i32 2, i32 390}
!632 = !{!435, !423, i64 920}
!633 = !{!"branch_weights", i32 391, i32 223}
!634 = !{!"branch_weights", i32 39, i32 1}
!635 = !{!"branch_weights", i32 223, i32 1}
!636 = distinct !{!636, !462}
!637 = !{!"branch_weights", i32 220, i32 4}
!638 = !{!"branch_weights", i32 220, i32 1}
!639 = !{!"branch_weights", i32 1, i32 223}
!640 = !{!"branch_weights", i32 94622, i32 571536, i32 85511700, i32 137391144, i32 283866, i32 94622, i32 94622}
!641 = !{!"branch_weights", i32 150, i32 1}
!642 = !{!"branch_weights", i32 202, i32 190}
!643 = !{!"branch_weights", i32 1, i32 391}
!644 = distinct !{!644, !462}
!645 = !{!"branch_weights", i32 150, i32 242}
!646 = !{!"branch_weights", i32 1, i32 150}
!647 = distinct !{!647, !462}
!648 = !{!"function_entry_count", i64 4926602}
!649 = !{!439, !426, i64 16}
!650 = !{!"function_entry_count", i64 2264622}
!651 = !{!"branch_weights", i32 2211, i32 -1790808443}
!652 = !{!653, !426, i64 32}
!653 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !426, i64 8, !426, i64 16, !426, i64 24, !426, i64 32, !426, i64 40}
!654 = !{!530, !426, i64 40}
!655 = !{!656, !423, i64 163904}
!656 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !423, i64 0, !424, i64 4, !423, i64 32772, !424, i64 32776, !424, i64 49160, !438, i64 114696, !438, i64 114704, !657, i64 114712, !426, i64 114720, !427, i64 114728, !427, i64 114729, !426, i64 114736, !423, i64 114744, !424, i64 114748, !423, i64 163900, !423, i64 163904, !658, i64 163908, !427, i64 163912, !659, i64 163916, !423, i64 163920, !427, i64 163924, !427, i64 163925, !426, i64 163928, !426, i64 163936, !427, i64 163944, !427, i64 163945, !426, i64 163952, !660, i64 163960, !426, i64 163968, !427, i64 163976, !441, i64 163980, !426, i64 163984}
!657 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !424, i64 0}
!658 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !424, i64 0}
!659 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !424, i64 0}
!660 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !424, i64 0}
!661 = !{!662, !427, i64 0}
!662 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPtEE", !427, i64 0, !423, i64 4, !423, i64 8, !426, i64 16, !426, i64 24}
!663 = !{!662, !423, i64 4}
!664 = !{!662, !423, i64 8}
!665 = !{!662, !426, i64 16}
!666 = !{!662, !426, i64 24}
!667 = !{!"function_entry_count", i64 6}
!668 = !{!669, !426, i64 0}
!669 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !426, i64 0, !426, i64 8, !426, i64 16, !423, i64 24, !423, i64 28, !423, i64 32}
!670 = !{!669, !423, i64 24}
!671 = !{!669, !423, i64 28}
!672 = !{!669, !423, i64 32}
!673 = !{!"branch_weights", i32 1, i32 7}
!674 = !{!669, !426, i64 8}
!675 = !{!"branch_weights", i32 223, i32 13057}
!676 = distinct !{!676, !462}
!677 = !{!669, !426, i64 16}
!678 = !{!"function_entry_count", i64 5}
!679 = !{!680, !426, i64 0}
!680 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !426, i64 0, !427, i64 8, !426, i64 16, !423, i64 24, !426, i64 32, !426, i64 40, !423, i64 48, !423, i64 52}
!681 = !{!680, !427, i64 8}
!682 = !{!680, !426, i64 16}
!683 = !{!680, !423, i64 24}
!684 = !{!680, !423, i64 48}
!685 = !{!680, !423, i64 52}
!686 = !{!680, !426, i64 32}
!687 = !{!"branch_weights", i32 1, i32 6}
!688 = !{!680, !426, i64 40}
!689 = !{!690, !426, i64 0}
!690 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !426, i64 0, !427, i64 8, !426, i64 16, !423, i64 24, !423, i64 28, !423, i64 32, !426, i64 40}
!691 = !{!690, !427, i64 8}
!692 = !{!690, !426, i64 16}
!693 = !{!690, !423, i64 24}
!694 = !{!690, !423, i64 28}
!695 = !{!690, !423, i64 32}
!696 = !{!690, !426, i64 40}
!697 = !{!698, !426, i64 0}
!698 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !426, i64 0, !427, i64 8, !426, i64 16, !423, i64 24, !423, i64 28, !426, i64 32}
!699 = !{!698, !427, i64 8}
!700 = !{!698, !426, i64 16}
!701 = !{!698, !423, i64 24}
!702 = !{!698, !423, i64 28}
!703 = !{!698, !426, i64 32}
!704 = !{!705, !427, i64 8}
!705 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !427, i64 8, !423, i64 12, !423, i64 16, !426, i64 24, !426, i64 32}
!706 = !{!705, !423, i64 12}
!707 = !{!705, !423, i64 16}
!708 = !{!705, !426, i64 24}
!709 = !{!705, !426, i64 32}
!710 = !{!"branch_weights", i32 1, i32 127}
!711 = !{!"branch_weights", i32 127, i32 2977}
!712 = distinct !{!712, !462}
!713 = !{!"branch_weights", i32 129, i32 127}
!714 = distinct !{!714, !462}
!715 = distinct !{!715, !462}
!716 = distinct !{!716, !462}
!717 = distinct !{!717, !462}
!718 = !{!"branch_weights", i32 1, i32 191}
!719 = !{!"branch_weights", i32 191, i32 9601}
!720 = distinct !{!720, !462}
!721 = distinct !{!721, !462}
!722 = !{!"branch_weights", i32 127, i32 577}
!723 = distinct !{!723, !462}
!724 = !{!725, !426, i64 8}
!725 = !{!"_ZTSN11xercesc_2_717PSVIAttributeListE", !426, i64 0, !426, i64 8, !426, i64 16, !426, i64 24, !423, i64 32}
!726 = !{!725, !426, i64 16}
!727 = !{!725, !426, i64 24}
!728 = !{!"function_entry_count", i64 9}
!729 = !{!"branch_weights", i32 1, i32 159}
!730 = !{!"branch_weights", i32 454, i32 48}
!731 = !{!732, !426, i64 8}
!732 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !426, i64 0, !426, i64 8}
!733 = !{!732, !426, i64 0}
!734 = !{!"branch_weights", i32 48, i32 0}
!735 = distinct !{!735, !462}
!736 = !{!"branch_weights", i32 7873, i32 159}
!737 = distinct !{!737, !462}
!738 = !{!"function_entry_count", i64 7}
!739 = !{!"branch_weights", i32 444, i32 80}
!740 = !{!741, !426, i64 8}
!741 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !426, i64 0, !426, i64 8, !426, i64 16, !423, i64 24, !423, i64 28}
!742 = !{!"branch_weights", i32 1, i32 80}
!743 = !{!741, !426, i64 0}
!744 = !{!"branch_weights", i32 80, i32 0}
!745 = distinct !{!745, !462}
!746 = !{!"branch_weights", i32 8257, i32 127}
!747 = distinct !{!747, !462}
!748 = !{!"function_entry_count", i64 190248}
!749 = !{!"branch_weights", i32 189545, i32 705}
!750 = !{!"branch_weights", i32 1, i32 704}
!751 = !{!"branch_weights", i32 4167, i32 886}
!752 = !{!753, !426, i64 8}
!753 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !426, i64 0, !426, i64 8, !426, i64 16}
!754 = !{!"branch_weights", i32 886, i32 1}
!755 = !{!753, !426, i64 0}
!756 = !{!"branch_weights", i32 886, i32 0}
!757 = distinct !{!757, !462}
!758 = !{!"branch_weights", i32 4349, i32 704}
!759 = distinct !{!759, !462}
!760 = !{!"function_entry_count", i64 190056}
!761 = !{!"branch_weights", i32 190057, i32 1}
!762 = !{!763, !426, i64 8}
!763 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !426, i64 0, !426, i64 8, !426, i64 16, !423, i64 24}
!764 = !{!763, !426, i64 0}
!765 = distinct !{!765, !462}
!766 = distinct !{!766, !462}
!767 = !{!"function_entry_count", i64 4}
!768 = !{!769, !426, i64 24}
!769 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !427, i64 0, !423, i64 4, !423, i64 8, !426, i64 16, !426, i64 24}
!770 = !{!769, !426, i64 16}
!771 = !{!"branch_weights", i32 833462, i32 191816}
!772 = !{!"branch_weights", i32 1766, i32 1}
!773 = !{!"branch_weights", i32 191816, i32 1}
!774 = !{!"branch_weights", i32 191809, i32 8}
!775 = !{!"branch_weights", i32 527, i32 3166, i32 485807358, i32 -2140878627, i32 1583, i32 527, i32 527}
!776 = !{!"branch_weights", i32 153378, i32 1}
!777 = distinct !{!777, !462}
!778 = !{!"function_entry_count", i64 7478295}
!779 = !{!"function_entry_count", i64 5190970}
!780 = !{!656, !426, i64 163968}
!781 = !{!424, !424, i64 0}
!782 = !{!"function_entry_count", i64 1025888}
!783 = !{!"function_entry_count", i64 1025276}
!784 = !{!"function_entry_count", i64 2728090}
!785 = !{!"function_entry_count", i64 10769804}
!786 = distinct !{!786, !462}
!787 = !{!"function_entry_count", i64 3529098}
!788 = !{!"function_entry_count", i64 574788}
!789 = !{!"branch_weights", i32 574789, i32 1}
!790 = !{!"function_entry_count", i64 191808}
!791 = distinct !{!791, !462}
!792 = !{!"function_entry_count", i64 8985736}
!793 = !{!"branch_weights", i32 1, i32 8}
!794 = distinct !{!794, !462}
!795 = !{!"function_entry_count", i64 191885}
!796 = !{!797, !438, i64 8}
!797 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !422, i64 0, !438, i64 8, !438, i64 16, !426, i64 24, !426, i64 32, !426, i64 40}
!798 = !{!"branch_weights", i32 191806, i32 81}
!799 = !{!797, !426, i64 24}
!800 = !{!797, !426, i64 40}
!801 = !{!797, !438, i64 16}
!802 = !{!"branch_weights", i32 191803, i32 84}
!803 = !{!797, !426, i64 32}
!804 = !{!"function_entry_count", i64 680084}
!805 = !{!445, !426, i64 48}
!806 = !{!464, !423, i64 64}
!807 = !{!"function_entry_count", i64 679966}
!808 = !{!464, !426, i64 72}
!809 = !{!"function_entry_count", i64 680336}
!810 = !{!"function_entry_count", i64 1359931}
!811 = !{!"branch_weights", i32 1, i32 1359932}
!812 = !{!"function_entry_count", i64 1666355}
!813 = !{!539, !540, i64 24}
!814 = !{!"function_entry_count", i64 4843157}
!815 = !{!816, !426, i64 168}
!816 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !817, i64 0, !426, i64 40, !426, i64 48, !426, i64 56, !426, i64 64, !427, i64 72, !426, i64 80, !426, i64 88, !444, i64 96, !427, i64 136, !427, i64 137, !818, i64 144, !426, i64 168, !426, i64 176, !427, i64 184, !427, i64 185}
!817 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !426, i64 8, !426, i64 16, !426, i64 24, !426, i64 32}
!818 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !427, i64 8, !426, i64 16}
!819 = !{!"branch_weights", i32 1, i32 4843158}
!820 = !{!"function_entry_count", i64 1272296}
!821 = !{!816, !426, i64 80}
!822 = !{!"function_entry_count", i64 1231717351}
!823 = !{!"branch_weights", i32 621, i32 -1469098093}
!824 = !{!"branch_weights", i32 408901017, i32 1}
!825 = !{!"branch_weights", i32 267, i32 4}
!826 = !{!"branch_weights", i32 156, i32 112}
!827 = !{!"branch_weights", i32 1, i32 112}
!828 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!829 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!830 = distinct !{!830, !462}
!831 = !{!832, !833, i64 36}
!832 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !539, i64 0, !833, i64 36, !426, i64 40, !426, i64 48, !426, i64 56, !426, i64 64, !426, i64 72}
!833 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !424, i64 0}
!834 = !{!"function_entry_count", i64 1856984}
!835 = !{!816, !427, i64 184}
!836 = !{!"function_entry_count", i64 874884}
!837 = !{!838, !839, i64 28}
!838 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !422, i64 0, !427, i64 8, !427, i64 9, !427, i64 10, !427, i64 11, !499, i64 12, !423, i64 16, !423, i64 20, !423, i64 24, !839, i64 28, !840, i64 32, !426, i64 40, !426, i64 48, !426, i64 56, !426, i64 64, !426, i64 72, !426, i64 80, !426, i64 88, !426, i64 96}
!839 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !424, i64 0}
!840 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !424, i64 0}
!841 = !{!816, !427, i64 185}
!842 = !{!"function_entry_count", i64 336748}
!843 = !{!844, !426, i64 72}
!844 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !539, i64 0, !845, i64 36, !846, i64 40, !847, i64 44, !848, i64 48, !423, i64 52, !423, i64 56, !423, i64 60, !423, i64 64, !426, i64 72, !426, i64 80, !426, i64 88, !426, i64 96, !426, i64 104, !426, i64 112, !426, i64 120, !426, i64 128, !426, i64 136, !427, i64 144, !427, i64 145, !427, i64 146}
!845 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !424, i64 0}
!846 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !424, i64 0}
!847 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !424, i64 0}
!848 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !424, i64 0}
!849 = !{!"function_entry_count", i64 695}
!850 = !{!"function_entry_count", i64 190774}
!851 = !{!"function_entry_count", i64 833744}
!852 = !{!"function_entry_count", i64 211020}
!853 = !{!854, !426, i64 24}
!854 = !{!"_ZTSN11xercesc_2_75QNameE", !422, i64 0, !423, i64 8, !423, i64 12, !423, i64 16, !423, i64 20, !426, i64 24, !426, i64 32, !426, i64 40, !426, i64 48}
!855 = !{!"function_entry_count", i64 679965}
!856 = !{!"function_entry_count", i64 833459}
!857 = !{!464, !426, i64 56}
!858 = !{!"function_entry_count", i64 833848}
!859 = !{!464, !427, i64 48}
!860 = !{!"function_entry_count", i64 2039896}
!861 = !{!769, !423, i64 4}
!862 = !{!"function_entry_count", i64 1359937}
!863 = !{!"branch_weights", i32 1359938, i32 1}
!864 = !{!"branch_weights", i32 1359932, i32 1}
!865 = distinct !{!865, !462}
!866 = !{!"function_entry_count", i64 10519225}
!867 = !{!868, !423, i64 4}
!868 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !427, i64 0, !423, i64 4, !423, i64 8, !426, i64 16, !426, i64 24}
!869 = !{!868, !426, i64 24}
!870 = !{!"branch_weights", i32 4843158, i32 1}
!871 = !{!868, !426, i64 16}
!872 = !{!"function_entry_count", i64 2718768}
!873 = !{!"branch_weights", i32 1, i32 2718769}
!874 = !{!"branch_weights", i32 2718765, i32 5}
!875 = !{!"function_entry_count", i64 789922}
!876 = !{!"branch_weights", i32 1, i32 789923}
!877 = !{!"branch_weights", i32 285, i32 789639}
!878 = !{!"branch_weights", i32 789639, i32 41628304}
!879 = distinct !{!879, !462}
!880 = !{!"branch_weights", i32 789637, i32 3}
!881 = !{!769, !423, i64 8}
!882 = !{!"branch_weights", i32 3, i32 1359936}
!883 = !{!"branch_weights", i32 191, i32 1025}
!884 = distinct !{!884, !462}
!885 = !{!"function_entry_count", i64 379609}
!886 = !{!887, !426, i64 8}
!887 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !426, i64 0, !426, i64 8}
!888 = !{!"function_entry_count", i64 379607}
!889 = !{!887, !426, i64 0}
!890 = !{!"function_entry_count", i64 612}
!891 = !{!"function_entry_count", i64 10}
!892 = !{!893, !426, i64 0}
!893 = !{!"_ZTSN11xercesc_2_77JanitorINS_14DTDElementDeclEEE", !426, i64 0}
!894 = !{!"function_entry_count", i64 79}
!895 = !{!539, !427, i64 32}
!896 = !{!517, !423, i64 56}
!897 = !{!"function_entry_count", i64 1880}
!898 = !{!"branch_weights", i32 988, i32 894}
!899 = !{!"function_entry_count", i64 173}
!900 = !{!539, !423, i64 28}
!901 = !{!"function_entry_count", i64 47}
!902 = !{!"branch_weights", i32 48, i32 1}
!903 = !{!"branch_weights", i32 1, i32 48}
!904 = !{!"function_entry_count", i64 558789}
!905 = !{!"branch_weights", i32 158605, i32 400186}
!906 = !{!"function_entry_count", i64 52059}
!907 = !{!908, !426, i64 0}
!908 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !426, i64 0, !426, i64 8}
!909 = !{!908, !426, i64 8}
!910 = !{!911, !426, i64 0}
!911 = !{!"_ZTSN11xercesc_2_77JanitorINS_11InputSourceEEE", !426, i64 0}
!912 = !{!913, !426, i64 8}
!913 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !427, i64 0, !427, i64 1, !427, i64 2, !426, i64 8, !426, i64 16, !426, i64 24, !426, i64 32, !426, i64 40, !426, i64 48, !426, i64 56, !426, i64 64, !426, i64 72}
!914 = !{!421, !426, i64 48}
!915 = !{!421, !426, i64 64}
!916 = !{!917, !426, i64 0}
!917 = !{!"_ZTSN11xercesc_2_77JanitorINS_13DTDEntityDeclEEE", !426, i64 0}
!918 = !{!656, !427, i64 163945}
!919 = !{!"function_entry_count", i64 243874}
!920 = !{!"function_entry_count", i64 1927}
!921 = !{!"branch_weights", i32 1, i32 1034}
!922 = !{!"branch_weights", i32 894, i32 391}
!923 = !{!"branch_weights", i32 1034, i32 250}
!924 = distinct !{!924, !462}
!925 = !{!"function_entry_count", i64 4646679}
!926 = !{!"branch_weights", i32 1, i32 4646680}
!927 = !{!"branch_weights", i32 1216534, i32 3430147}
!928 = !{!"branch_weights", i32 1, i32 3430146}
!929 = !{!"branch_weights", i32 3430146, i32 42249130}
!930 = distinct !{!930, !462}
!931 = !{!"function_entry_count", i64 1330}
!932 = !{!"function_entry_count", i64 2453164456}
!933 = !{!"branch_weights", i32 1, i32 -1841802839}
!934 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!935 = !{!"branch_weights", i32 408669070, i32 -279908792}
!936 = distinct !{!936, !462}
!937 = !{!"branch_weights", i32 191816, i32 52060}
!938 = !{!"branch_weights", i32 1, i32 52060}
!939 = !{!"function_entry_count", i64 833852}
!940 = !{!"function_entry_count", i64 190440}
!941 = !{!942, !423, i64 12}
!942 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !427, i64 8, !423, i64 12, !423, i64 16, !426, i64 24, !426, i64 32}
!943 = !{!"function_entry_count", i64 593014}
!944 = !{!945, !947, i64 12}
!945 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !422, i64 0, !946, i64 8, !947, i64 12, !948, i64 16, !427, i64 20, !427, i64 21, !423, i64 24, !426, i64 32, !426, i64 40, !426, i64 48}
!946 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !424, i64 0}
!947 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !424, i64 0}
!948 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !424, i64 0}
!949 = !{!942, !426, i64 24}
!950 = !{!"function_entry_count", i64 201935}
!951 = !{!"branch_weights", i32 201936, i32 1}
!952 = !{!942, !426, i64 32}
!953 = !{!"function_entry_count", i64 201775}
!954 = !{!955, !426, i64 24}
!955 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !427, i64 0, !947, i64 4, !423, i64 8, !426, i64 16, !426, i64 24, !426, i64 32, !426, i64 40, !427, i64 48}
!956 = !{!955, !947, i64 4}
!957 = !{!955, !427, i64 48}
!958 = !{!955, !426, i64 40}
!959 = !{!955, !427, i64 0}
!960 = !{!"function_entry_count", i64 159625}
!961 = !{!"function_entry_count", i64 872}
!962 = !{!"function_entry_count", i64 885}
!963 = !{!753, !426, i64 16}
!964 = !{!"function_entry_count", i64 392072}
!965 = !{!"branch_weights", i32 25, i32 392049}
!966 = !{!"function_entry_count", i64 401820}
!967 = !{!945, !946, i64 8}
!968 = !{!"function_entry_count", i64 200910}
!969 = !{!945, !427, i64 21}
!970 = !{!"function_entry_count", i64 19496}
!971 = !{!945, !426, i64 32}
!972 = !{!942, !423, i64 16}
!973 = !{!"branch_weights", i32 1, i32 11}
!974 = distinct !{!974, !462}
!975 = !{!"function_entry_count", i64 2192223}
!976 = !{!854, !426, i64 32}
!977 = !{!"branch_weights", i32 843, i32 30}
!978 = !{!"branch_weights", i32 1, i32 30}
!979 = !{!"branch_weights", i32 30, i32 0}
!980 = distinct !{!980, !462}
!981 = distinct !{!981, !462}
!982 = distinct !{!982, !462}
!983 = !{!"function_entry_count", i64 392957}
!984 = !{!"branch_weights", i32 1, i32 909}
!985 = !{!"branch_weights", i32 392049, i32 30}
!986 = !{!"branch_weights", i32 909, i32 391169}
!987 = distinct !{!987, !462}
!988 = !{!989, !426, i64 0}
!989 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !426, i64 0, !426, i64 8}
!990 = !{!989, !426, i64 8}
!991 = !{!"function_entry_count", i64 1169658}
!992 = !{!844, !426, i64 80}
!993 = !{!"branch_weights", i32 336749, i32 832911}
!994 = !{!844, !845, i64 36}
!995 = !{!"function_entry_count", i64 3338153}
!996 = !{!997, !423, i64 32}
!997 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !422, i64 0, !427, i64 8, !427, i64 9, !427, i64 10, !427, i64 11, !427, i64 12, !423, i64 16, !423, i64 20, !423, i64 24, !423, i64 28, !423, i64 32, !423, i64 36, !423, i64 40, !423, i64 44, !426, i64 48, !426, i64 56, !426, i64 64, !426, i64 72, !426, i64 80, !426, i64 88, !426, i64 96, !426, i64 104, !426, i64 112, !426, i64 120, !426, i64 128, !426, i64 136, !426, i64 144, !426, i64 152, !426, i64 160, !426, i64 168}
!998 = !{!"function_entry_count", i64 832911}
!999 = !{!"function_entry_count", i64 1176128}
!1000 = !{!997, !426, i64 136}
!1001 = !{!"branch_weights", i32 25, i32 1176105}
!1002 = !{!997, !426, i64 96}
!1003 = !{!"branch_weights", i32 1, i32 25}
!1004 = !{!"function_entry_count", i64 832910}
!1005 = !{!464, !423, i64 52}
!1006 = !{!436, !423, i64 64}
!1007 = !{!436, !423, i64 60}
!1008 = !{!"function_entry_count", i64 1992715}
!1009 = !{!"branch_weights", i32 1159753, i32 832964}
!1010 = !{!"branch_weights", i32 80, i32 1}
!1011 = !{!741, !426, i64 16}
!1012 = !{!741, !423, i64 24}
!1013 = !{!741, !423, i64 28}
!1014 = !{!"function_entry_count", i64 95}
!1015 = !{!464, !423, i64 80}
!1016 = !{!"branch_weights", i32 832896, i32 17}
!1017 = !{!445, !426, i64 96}
!1018 = !{!"function_entry_count", i64 496241}
!1019 = !{!997, !423, i64 28}
!1020 = !{!"function_entry_count", i64 496163}
!1021 = !{!997, !426, i64 48}
!1022 = !{!"function_entry_count", i64 503282}
!1023 = distinct !{!1023, !462}
!1024 = !{!"function_entry_count", i64 1035025}
!1025 = !{!725, !423, i64 32}
!1026 = !{!"function_entry_count", i64 6553673}
!1027 = !{!854, !423, i64 20}
!1028 = !{!"function_entry_count", i64 1992794}
!1029 = !{!"branch_weights", i32 1, i32 1159831}
!1030 = !{!"branch_weights", i32 2435527, i32 1}
!1031 = !{!"branch_weights", i32 1030785, i32 1404743}
!1032 = !{!"branch_weights", i32 832964, i32 197822}
!1033 = !{!"branch_weights", i32 1159831, i32 1275696}
!1034 = distinct !{!1034, !462}
!1035 = !{!913, !427, i64 1}
!1036 = !{!436, !426, i64 136}
!1037 = !{!436, !426, i64 144}
!1038 = !{!436, !427, i64 176}
!1039 = !{!"branch_weights", i32 2, i32 3}
!1040 = distinct !{!1040, !462}
!1041 = !{!"branch_weights", i32 178956971, i32 1968526677}
!1042 = !{!"branch_weights", i32 2, i32 40}
!1043 = !{!"branch_weights", i32 2, i32 39}
!1044 = distinct !{!1044, !462}
!1045 = !{!"branch_weights", i32 184549378, i32 1962934270}
!1046 = !{!"function_entry_count", i64 2}
!1047 = !{!"branch_weights", i32 1, i32 3}
!1048 = distinct !{!1048, !462}
