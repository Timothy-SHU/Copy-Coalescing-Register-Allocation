; ModuleID = 'WFXMLScanner.cpp'
source_filename = "WFXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::WFXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall.0" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i16, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::ThrowEOEJanitor" = type { i8, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.4" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEED2Ev = comdat any

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

$_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_79XMLBuffer7isEmptyEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_79XMLBuffer6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79ReaderMgr12skipPastCharEt = comdat any

$_ZN11xercesc_2_79ElemStack13getCurrentURIEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt = comdat any

$_ZN11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZN11xercesc_2_77XMLAttr12setSpecifiedEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZNK11xercesc_2_77XMLAttr9getPrefixEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE10addElementERKS2_ = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_79ElemStack13setCurrentURIEj = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZNK11xercesc_2_79XMLReader9isXMLCharEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZNK11xercesc_2_79XMLBufBid6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb = comdat any

$_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorD2Ev = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712WFXMLScanner7getNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv = comdat any

$_ZN11xercesc_2_77XMLAttrD2Ev = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv = comdat any

$_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb = comdat any

$_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt = comdat any

$_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7cleanupEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_14XMLElementDeclEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_ = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTIN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZTVN11xercesc_2_712WFXMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712WFXMLScannerE, ptr @_ZN11xercesc_2_712WFXMLScannerD2Ev, ptr @_ZN11xercesc_2_712WFXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712WFXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712WFXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712WFXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712WFXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712WFXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712WFXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712WFXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712WFXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712WFXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712WFXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712WFXMLScanner15resolveSystemIdEPKtS2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [17 x i8] c"WFXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
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
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEvE9doctypeIE = internal constant [3 x i16] [i16 91, i16 62, i16 0], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTSN11xercesc_2_712WFXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712WFXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712WFXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712WFXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant [55 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712WFXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712WFXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712WFXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712WFXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712WFXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712WFXMLScannerD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712WFXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_712WFXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(824) %0) #14
          to label %18 unwind label %8

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = call ptr @__cxa_begin_catch(ptr %14) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #15
          to label %24 unwind label %16

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

18:                                               ; preds = %4
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void

19:                                               ; preds = %16, %8
  %20 = phi { ptr, i32 } [ %9, %8 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #13
  unreachable

24:                                               ; preds = %13
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(824) %0) #5 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %18) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #16
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !87
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %23) #16
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #5 comdat align 2 !prof !86 {
  store ptr %1, ptr %0, align 8, !tbaa !113
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !115
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner10commonInitEv(ptr nocapture noundef nonnull align 8 dereferenceable(824) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %3) #14
  %5 = load ptr, ptr %2, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 11, ptr noundef %5) #14
          to label %6 unwind label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 3
  store ptr %4, ptr %7, align 8, !tbaa !108
  %8 = load ptr, ptr %2, align 8, !tbaa !116
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %8) #14
  %10 = load ptr, ptr %2, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 16, ptr noundef %10, i1 noundef zeroext false) #14
          to label %11 unwind label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  store ptr %9, ptr %12, align 8, !tbaa !109
  %13 = load ptr, ptr %2, align 8, !tbaa !116
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %13) #14
  %15 = load ptr, ptr %2, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 8, ptr noundef %15, i1 noundef zeroext false) #14
          to label %16 unwind label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 5
  store ptr %14, ptr %17, align 8, !tbaa !110
  %18 = load ptr, ptr %2, align 8, !tbaa !116
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %18) #14
  %20 = load ptr, ptr %2, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 32, i1 noundef zeroext true, ptr noundef %20) #14
          to label %21 unwind label %39

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  store ptr %19, ptr %22, align 8, !tbaa !112
  %23 = load ptr, ptr %2, align 8, !tbaa !116
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %23) #14
  %25 = load ptr, ptr %2, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %24, i32 noundef 109, i1 noundef zeroext false, ptr noundef %25) #14
          to label %26 unwind label %41

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  store ptr %24, ptr %27, align 8, !tbaa !111
  %28 = load ptr, ptr %7, align 8, !tbaa !108
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chAmpersandE) #14
  %29 = load ptr, ptr %7, align 8, !tbaa !108
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chOpenAngleE) #14
  %30 = load ptr, ptr %7, align 8, !tbaa !108
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L12chCloseAngleE) #14
  %31 = load ptr, ptr %7, align 8, !tbaa !108
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chDoubleQuoteE) #14
  %32 = load ptr, ptr %7, align 8, !tbaa !108
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chSingleQuoteE) #14
  ret void

33:                                               ; preds = %1
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  br label %43

35:                                               ; preds = %6
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #16
  br label %43

37:                                               ; preds = %11
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #16
  br label %43

39:                                               ; preds = %16
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #16
  br label %43

41:                                               ; preds = %21
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #16
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ]
  resume { ptr, i32 } %44
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !113
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !115
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !115
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !87
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !117
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(824) %11) #14
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #13
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %9 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712WFXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  %10 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  store i32 0, ptr %10, align 8, !tbaa !90
  %11 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_712WFXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(824) %0) #14
          to label %22 unwind label %12

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %14 = extractvalue { ptr, i32 } %13, 1
  %15 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = extractvalue { ptr, i32 } %13, 0
  %19 = call ptr @__cxa_begin_catch(ptr %18) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14
  invoke void @__cxa_rethrow() #15
          to label %28 unwind label %20

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %25

22:                                               ; preds = %8
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  ret void

23:                                               ; preds = %20, %12
  %24 = phi { ptr, i32 } [ %13, %12 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #13
  unreachable

28:                                               ; preds = %17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712WFXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(824) %0) #14
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xercesc_2_712WFXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !86 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !86 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !118
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !87
  %9 = getelementptr inbounds ptr, ptr %8, i64 15
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %11 unwind label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !87
  %17 = getelementptr inbounds ptr, ptr %16, i64 10
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %13) #14
          to label %49 unwind label %19

19:                                               ; preds = %63, %59, %56, %54, %53, %50, %49, %15, %2
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #12
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %28
  %26 = call ptr @__cxa_begin_catch(ptr %21) #12
  call void @__cxa_end_catch() #12
  br label %27

27:                                               ; preds = %25, %99, %60, %63
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void

28:                                               ; preds = %19
  %29 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #12
  %30 = icmp eq i32 %22, %29
  br i1 %30, label %25, label %31

31:                                               ; preds = %28
  %32 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %33 = icmp eq i32 %22, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call ptr @__cxa_begin_catch(ptr %21) #12
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %36, align 1, !tbaa !120
  %37 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !87
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
          to label %90 unwind label %72

44:                                               ; preds = %31
  %45 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %46 = icmp eq i32 %22, %45
  br i1 %46, label %47, label %107

47:                                               ; preds = %44
  %48 = call ptr @__cxa_begin_catch(ptr %21) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #15
          to label %115 unwind label %67

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
          to label %60 unwind label %19

54:                                               ; preds = %52
  %55 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(824) %0) #14
          to label %56 unwind label %19

56:                                               ; preds = %54
  %57 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #14
          to label %58 unwind label %19

58:                                               ; preds = %56
  br i1 %57, label %60, label %59

59:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %60 unwind label %19

60:                                               ; preds = %59, %58, %53
  %61 = load ptr, ptr %12, align 8, !tbaa !119
  %62 = icmp eq ptr %61, null
  br i1 %62, label %27, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !87
  %65 = getelementptr inbounds ptr, ptr %64, i64 5
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %61) #14
          to label %27 unwind label %19

67:                                               ; preds = %47
  %68 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %69 unwind label %112

69:                                               ; preds = %67
  %70 = extractvalue { ptr, i32 } %68, 1
  %71 = extractvalue { ptr, i32 } %68, 0
  br label %107

72:                                               ; preds = %90, %88, %86, %39
  %73 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %74 = extractvalue { ptr, i32 } %73, 0
  %75 = extractvalue { ptr, i32 } %73, 1
  %76 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %72
  %79 = call ptr @__cxa_begin_catch(ptr %74) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #15
          to label %115 unwind label %94

80:                                               ; preds = %34
  %81 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  %82 = icmp sgt i32 %81, 1
  %83 = load ptr, ptr %35, align 8, !tbaa !87
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8
  br i1 %82, label %86, label %88

86:                                               ; preds = %80
  %87 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
          to label %90 unwind label %72

88:                                               ; preds = %80
  %89 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
          to label %90 unwind label %72

90:                                               ; preds = %88, %86, %39
  %91 = phi i32 [ 7, %39 ], [ 292, %86 ], [ 157, %88 ]
  %92 = phi ptr [ %43, %39 ], [ %87, %86 ], [ %89, %88 ]
  %93 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef null, ptr noundef null) #14
          to label %99 unwind label %72

94:                                               ; preds = %78
  %95 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %96 unwind label %112

96:                                               ; preds = %94
  %97 = extractvalue { ptr, i32 } %95, 1
  %98 = extractvalue { ptr, i32 } %95, 0
  br label %104

99:                                               ; preds = %90
  invoke void @__cxa_end_catch()
          to label %27 unwind label %100

100:                                              ; preds = %99
  %101 = landingpad { ptr, i32 }
          cleanup
  %102 = extractvalue { ptr, i32 } %101, 0
  %103 = extractvalue { ptr, i32 } %101, 1
  br label %107

104:                                              ; preds = %96, %72
  %105 = phi i32 [ %97, %96 ], [ %75, %72 ]
  %106 = phi ptr [ %98, %96 ], [ %74, %72 ]
  invoke void @__cxa_end_catch()
          to label %107 unwind label %112

107:                                              ; preds = %100, %104, %69, %44
  %108 = phi i32 [ %70, %69 ], [ %22, %44 ], [ %103, %100 ], [ %105, %104 ]
  %109 = phi ptr [ %71, %69 ], [ %21, %44 ], [ %102, %100 ], [ %106, %104 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  %110 = insertvalue { ptr, i32 } poison, ptr %109, 0
  %111 = insertvalue { ptr, i32 } %110, i32 %108, 1
  resume { ptr, i32 } %111

112:                                              ; preds = %104, %94, %67
  %113 = landingpad { ptr, i32 }
          catch ptr null
  %114 = extractvalue { ptr, i32 } %113, 0
  call void @__clang_call_terminate(ptr %114) #13
  unreachable

115:                                              ; preds = %78, %47
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #5 comdat align 2 !prof !121 {
  store ptr %1, ptr %0, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !124
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(824) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 1, ptr %2, align 1, !tbaa !125
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %6

6:                                                ; preds = %56, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %7 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
          to label %8 unwind label %14

8:                                                ; preds = %6
  switch i32 %7, label %46 [
    i32 1, label %9
    i32 4, label %17
    i32 0, label %28
    i32 2, label %35
    i32 3, label %36
    i32 5, label %37
    i32 6, label %38
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %11 = load ptr, ptr %0, align 8, !tbaa !87
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %10) #14
          to label %53 unwind label %14, !llvm.loop !126

14:                                               ; preds = %52, %47, %46, %44, %42, %37, %36, %35, %31, %30, %9, %6
  %15 = phi i1 [ false, %9 ], [ true, %52 ], [ true, %47 ], [ true, %46 ], [ true, %42 ], [ true, %44 ], [ true, %37 ], [ true, %36 ], [ true, %35 ], [ true, %31 ], [ true, %30 ], [ false, %6 ]
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
  %22 = load ptr, ptr %20, align 8, !tbaa !128
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %81

28:                                               ; preds = %8
  %29 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280) #14
          to label %31 unwind label %14

31:                                               ; preds = %30, %28
  %32 = load ptr, ptr %0, align 8, !tbaa !87
  %33 = getelementptr inbounds ptr, ptr %32, i64 11
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(824) %0) #14
          to label %47 unwind label %14

35:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %47 unwind label %14

36:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_712WFXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
          to label %47 unwind label %14

37:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %47 unwind label %14

38:                                               ; preds = %8
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %40 = load i8, ptr %39, align 2, !tbaa !130, !range !131, !noundef !117
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
          to label %47 unwind label %14

44:                                               ; preds = %38
  %45 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
          to label %47 unwind label %14

46:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 60) #14
          to label %47 unwind label %14

47:                                               ; preds = %46, %42, %44, %37, %36, %35, %31
  %48 = load i32, ptr %3, align 4, !tbaa !132
  %49 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #14
          to label %50 unwind label %14

50:                                               ; preds = %47
  %51 = icmp eq i32 %48, %49
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %53 unwind label %14

53:                                               ; preds = %50, %52, %9
  %54 = load i8, ptr %2, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %53, %78
  br label %6, !llvm.loop !133

57:                                               ; preds = %25, %14
  %58 = phi { ptr, i32 } [ %16, %14 ], [ %26, %25 ]
  %59 = phi i1 [ %15, %14 ], [ false, %25 ]
  %60 = extractvalue { ptr, i32 } %58, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %61 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #12
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = extractvalue { ptr, i32 } %58, 0
  %65 = call ptr @__cxa_begin_catch(ptr %64) #12
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
  %71 = load ptr, ptr %70, align 8, !tbaa !119
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %65) #14
  %75 = load ptr, ptr %71, align 8, !tbaa !87
  %76 = getelementptr inbounds ptr, ptr %75, i64 7
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(72) %74) #14
          to label %78 unwind label %67

78:                                               ; preds = %69, %73
  call void @__cxa_end_catch()
  %79 = load i8, ptr %2, align 1, !tbaa !125
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %56

81:                                               ; preds = %78, %53, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  ret i1 true

82:                                               ; preds = %57, %67
  %83 = phi { ptr, i32 } [ %68, %67 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  resume { ptr, i32 } %83

84:                                               ; preds = %67
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #13
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !134
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
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = load ptr, ptr %0, align 8, !tbaa !122
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !138

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !138

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !124
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !87
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !117
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
  tail call void @__clang_call_terminate(ptr %26) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %5 = alloca i8, align 1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #14
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 78, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #12
  br label %187

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
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
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #12
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = call ptr @__cxa_begin_catch(ptr %24) #12
  %30 = load ptr, ptr %18, align 8, !tbaa !119
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %29) #14
  %34 = load ptr, ptr %30, align 8, !tbaa !87
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
          to label %42 unwind label %192

39:                                               ; preds = %32, %28
  invoke void @__cxa_end_catch()
          to label %19 unwind label %40, !llvm.loop !139

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
  %48 = load ptr, ptr %0, align 8, !tbaa !87
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %47) #14
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
  br i1 %57, label %182, label %58

58:                                               ; preds = %55
  %59 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %56) #14
          to label %60 unwind label %64

60:                                               ; preds = %58
  %61 = load ptr, ptr %59, align 8, !tbaa !128
  %62 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %61) #14
          to label %63 unwind label %64

63:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %62, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %182 unwind label %64

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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 1, ptr %5, align 1, !tbaa !125
  switch i32 %20, label %123 [
    i32 0, label %69
    i32 2, label %112
    i32 3, label %113
    i32 5, label %114
    i32 6, label %115
  ]

69:                                               ; preds = %68
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %71 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %70) #14
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280) #14
          to label %108 unwind label %73

73:                                               ; preds = %137, %133, %129, %124, %123, %121, %119, %114, %113, %112, %108, %72
  %74 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %75 = extractvalue { ptr, i32 } %74, 0
  %76 = extractvalue { ptr, i32 } %74, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  br label %77

77:                                               ; preds = %22, %73, %64, %51, %42
  %78 = phi i32 [ %54, %51 ], [ %67, %64 ], [ %76, %73 ], [ %45, %42 ], [ %25, %22 ]
  %79 = phi ptr [ %53, %51 ], [ %66, %64 ], [ %75, %73 ], [ %44, %42 ], [ %24, %22 ]
  %80 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #12
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = call ptr @__cxa_begin_catch(ptr %79) #12
  call void @__cxa_end_catch() #12
  br label %182

84:                                               ; preds = %141, %46
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  br label %182

85:                                               ; preds = %77
  %86 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #12
  %87 = icmp eq i32 %78, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call ptr @__cxa_begin_catch(ptr %79) #12
  call void @__cxa_end_catch() #12
  br label %182

90:                                               ; preds = %85
  %91 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %92 = icmp eq i32 %78, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = call ptr @__cxa_begin_catch(ptr %79) #12
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %95, align 1, !tbaa !120
  %96 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %155

98:                                               ; preds = %93
  %99 = load ptr, ptr %94, align 8, !tbaa !87
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %165 unwind label %147

103:                                              ; preds = %90
  %104 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %105 = icmp eq i32 %78, %104
  br i1 %105, label %106, label %184

106:                                              ; preds = %103
  %107 = call ptr @__cxa_begin_catch(ptr %79) #12
  invoke void @__cxa_rethrow() #15
          to label %195 unwind label %142

108:                                              ; preds = %72, %69
  %109 = load ptr, ptr %0, align 8, !tbaa !87
  %110 = getelementptr inbounds ptr, ptr %109, i64 11
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr noundef nonnull align 8 dereferenceable(824) %0) #14
          to label %124 unwind label %73

112:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %124 unwind label %73

113:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_712WFXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %124 unwind label %73

114:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %124 unwind label %73

115:                                              ; preds = %68
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %117 = load i8, ptr %116, align 2, !tbaa !130, !range !131, !noundef !117
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %124 unwind label %73

121:                                              ; preds = %115
  %122 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %124 unwind label %73

123:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 60) #14
          to label %124 unwind label %73

124:                                              ; preds = %123, %119, %121, %114, %113, %112, %108
  %125 = load i32, ptr %3, align 4, !tbaa !132
  %126 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %17) #14
          to label %127 unwind label %73

127:                                              ; preds = %124
  %128 = icmp eq i32 %125, %126
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %130 unwind label %73

130:                                              ; preds = %129, %127
  %131 = load i8, ptr %5, align 1, !tbaa !125, !range !131, !noundef !117
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %134 unwind label %73

134:                                              ; preds = %133
  %135 = load ptr, ptr %18, align 8, !tbaa !119
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %135, align 8, !tbaa !87
  %139 = getelementptr inbounds ptr, ptr %138, i64 5
  %140 = load ptr, ptr %139, align 8
  invoke void %140(ptr noundef nonnull align 8 dereferenceable(8) %135) #14
          to label %141 unwind label %73

141:                                              ; preds = %134, %137, %130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  br label %84

142:                                              ; preds = %106
  %143 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %144 unwind label %192

144:                                              ; preds = %142
  %145 = extractvalue { ptr, i32 } %143, 1
  %146 = extractvalue { ptr, i32 } %143, 0
  br label %184

147:                                              ; preds = %165, %163, %161, %98
  %148 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %149 = extractvalue { ptr, i32 } %148, 0
  %150 = extractvalue { ptr, i32 } %148, 1
  %151 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %179

153:                                              ; preds = %147
  %154 = call ptr @__cxa_begin_catch(ptr %149) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  invoke void @__cxa_rethrow() #15
          to label %195 unwind label %169

155:                                              ; preds = %93
  %156 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  %157 = icmp sgt i32 %156, 1
  %158 = load ptr, ptr %94, align 8, !tbaa !87
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8
  br i1 %157, label %161, label %163

161:                                              ; preds = %155
  %162 = invoke noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %165 unwind label %147

163:                                              ; preds = %155
  %164 = invoke noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %165 unwind label %147

165:                                              ; preds = %163, %161, %98
  %166 = phi i32 [ 7, %98 ], [ 292, %161 ], [ 157, %163 ]
  %167 = phi ptr [ %102, %98 ], [ %162, %161 ], [ %164, %163 ]
  %168 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %166, ptr noundef %167, ptr noundef %168, ptr noundef null, ptr noundef null) #14
          to label %174 unwind label %147

169:                                              ; preds = %153
  %170 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %171 unwind label %192

171:                                              ; preds = %169
  %172 = extractvalue { ptr, i32 } %170, 1
  %173 = extractvalue { ptr, i32 } %170, 0
  br label %179

174:                                              ; preds = %165
  invoke void @__cxa_end_catch()
          to label %182 unwind label %175

175:                                              ; preds = %174
  %176 = landingpad { ptr, i32 }
          cleanup
  %177 = extractvalue { ptr, i32 } %176, 0
  %178 = extractvalue { ptr, i32 } %176, 1
  br label %184

179:                                              ; preds = %171, %147
  %180 = phi i32 [ %172, %171 ], [ %150, %147 ]
  %181 = phi ptr [ %173, %171 ], [ %149, %147 ]
  invoke void @__cxa_end_catch()
          to label %184 unwind label %192

182:                                              ; preds = %174, %55, %63, %88, %82, %84
  %183 = phi i1 [ true, %84 ], [ false, %82 ], [ false, %88 ], [ false, %63 ], [ false, %55 ], [ false, %174 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i1 %183

184:                                              ; preds = %175, %179, %144, %103
  %185 = phi i32 [ %145, %144 ], [ %78, %103 ], [ %178, %175 ], [ %180, %179 ]
  %186 = phi ptr [ %146, %144 ], [ %79, %103 ], [ %177, %175 ], [ %181, %179 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %187

187:                                              ; preds = %184, %12
  %188 = phi i32 [ %185, %184 ], [ %15, %12 ]
  %189 = phi ptr [ %186, %184 ], [ %14, %12 ]
  %190 = insertvalue { ptr, i32 } poison, ptr %189, 0
  %191 = insertvalue { ptr, i32 } %190, i32 %188, 1
  resume { ptr, i32 } %191

192:                                              ; preds = %179, %169, %142, %37
  %193 = landingpad { ptr, i32 }
          catch ptr null
  %194 = extractvalue { ptr, i32 } %193, 0
  call void @__clang_call_terminate(ptr %194) #13
  unreachable

195:                                              ; preds = %153, %106
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !143
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  store i8 1, ptr %1, align 1, !tbaa !125
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 62) #14
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 694, i32 noundef 77, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 2, !tbaa !130, !range !131, !noundef !117
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  br label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %21 = load i32, ptr %20, align 4, !tbaa !148
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  %24 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  %25 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %27 = load ptr, ptr %24, align 8, !tbaa !128
  %28 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %27) #14
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef %28) #14
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %24, align 8, !tbaa !128
  %32 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %31) #14
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %32, ptr noundef null, ptr noundef null, ptr noundef null) #14
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %26, i16 noundef zeroext 62) #14
  br label %59

33:                                               ; preds = %22
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !149
  %36 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %26) #14
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278) #14
  br label %39

39:                                               ; preds = %38, %33
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %26, i1 noundef zeroext false) #14
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %26, i16 noundef zeroext 62) #14
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %24, align 8, !tbaa !128
  %44 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %43) #14
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %44, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %45

45:                                               ; preds = %42, %39
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %24, align 8, !tbaa !128
  %51 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %50) #14
  %52 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %51) #14
  %53 = load ptr, ptr %47, align 8, !tbaa !87
  %54 = getelementptr inbounds ptr, ptr %53, i64 6
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(33) %50, i32 noundef %23, i1 noundef zeroext %25, ptr noundef %52) #14
  br label %56

56:                                               ; preds = %49, %45
  %57 = xor i1 %25, true
  %58 = zext i1 %57 to i8
  store i8 %58, ptr %1, align 1, !tbaa !125
  br label %59

59:                                               ; preds = %56, %30
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store i8 1, ptr %1, align 1, !tbaa !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
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
  br label %352

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %20 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  %21 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false) #14
  %22 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  %23 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %22) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %18
  %28 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %22, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %31

31:                                               ; preds = %30, %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !90
  %34 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %35) #14
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load ptr, ptr %34, align 8, !tbaa !112
  %40 = load i32, ptr %32, align 8, !tbaa !90
  %41 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef %40) #14
  br label %51

42:                                               ; preds = %31
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %44 = load ptr, ptr %43, align 8, !tbaa !150
  %45 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %44) #14
  %46 = load ptr, ptr %43, align 8, !tbaa !150
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef %46) #14
          to label %47 unwind label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %34, align 8, !tbaa !112
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %48, ptr noundef nonnull %45) #14
  br label %51

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %45, ptr noundef %44) #16
  br label %350

51:                                               ; preds = %47, %38
  %52 = phi ptr [ %41, %38 ], [ %45, %47 ]
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %54 = load i32, ptr %53, align 4, !tbaa !148
  call void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33) %52, ptr noundef %22, i32 noundef %54) #14
  %55 = load ptr, ptr %23, align 8, !tbaa !111
  %56 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %52) #14
  call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef %56, ptr noundef nonnull %52) #14
  %57 = load i32, ptr %32, align 8, !tbaa !90
  %58 = add i32 %57, 1
  store i32 %58, ptr %32, align 8, !tbaa !90
  br label %59

59:                                               ; preds = %51, %18
  %60 = phi ptr [ %25, %18 ], [ %52, %51 ]
  %61 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %62 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull %60, i32 noundef %61) #14
  %63 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !110
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %64) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !tbaa !132
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %66 = load ptr, ptr %65, align 8, !tbaa !151
  %67 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %66) #14
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %70 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  br label %76

76:                                               ; preds = %244, %59
  %77 = phi i32 [ 0, %59 ], [ %247, %244 ]
  %78 = phi i32 [ 0, %59 ], [ %246, %244 ]
  %79 = phi i32 [ 0, %59 ], [ %245, %244 ]
  %80 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  switch i16 %80, label %83 [
    i16 62, label %90
    i16 47, label %90
  ]

83:                                               ; preds = %82
  %84 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %85 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %84, i16 noundef zeroext %80) #14
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false) #14
  %88 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  br label %90

89:                                               ; preds = %83
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #14
  br label %90

90:                                               ; preds = %82, %82, %89, %86, %76
  %91 = phi i16 [ %88, %86 ], [ %80, %89 ], [ %80, %82 ], [ %80, %76 ], [ %80, %82 ]
  %92 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %93 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %92, i16 noundef zeroext %91) #14
  br i1 %93, label %222, label %94

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %95 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(40) %68, ptr noundef nonnull %5) #14
  br i1 %95, label %102, label %96

96:                                               ; preds = %94
  %97 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %68) #14
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  br label %101

99:                                               ; preds = %96
  %100 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %68) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %100, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %101

101:                                              ; preds = %99, %98
  call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 62) #14
  br label %239

102:                                              ; preds = %94
  %103 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false) #14
  br i1 %103, label %112, label %104

104:                                              ; preds = %102
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180) #14
  %105 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList) #14
  switch i16 %105, label %106 [
    i16 62, label %240
    i16 47, label %240
    i16 39, label %112
    i16 34, label %112
  ]

106:                                              ; preds = %104
  %107 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %108 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %107, i16 noundef zeroext %105) #14
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = icmp eq i16 %105, 60
  br i1 %110, label %111, label %239

111:                                              ; preds = %109
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %239

112:                                              ; preds = %104, %104, %106, %102
  %113 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %68) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %114 = load ptr, ptr %69, align 8, !tbaa !116
  %115 = call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %113, i32 noundef 109, ptr noundef %114) #14
  store i32 %115, ptr %6, align 4, !tbaa !132
  %116 = icmp eq i32 %78, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %112, %130
  %118 = phi i32 [ %131, %130 ], [ 0, %112 ]
  %119 = load ptr, ptr %70, align 8, !tbaa !109
  %120 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %119, i32 noundef %118) #14
  %121 = load i32, ptr %120, align 4, !tbaa !132
  %122 = load i32, ptr %6, align 4, !tbaa !132
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load ptr, ptr %65, align 8, !tbaa !151
  %126 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %125, i32 noundef %118) #14
  %127 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %126) #14
  %128 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %127, ptr noundef %113) #14
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %113, ptr noundef %22, ptr noundef null, ptr noundef null) #14
  br label %133

130:                                              ; preds = %117, %124
  %131 = add nuw i32 %118, 1
  %132 = icmp ult i32 %131, %77
  br i1 %132, label %117, label %133, !llvm.loop !152

133:                                              ; preds = %130, %129, %112
  %134 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false) #14
  %135 = call noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanAttValueEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %113, ptr noundef nonnull align 8 dereferenceable(40) %71) #14
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199) #14
  %137 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList_0) #14
  switch i16 %137, label %138 [
    i16 62, label %144
    i16 47, label %144
  ]

138:                                              ; preds = %136
  %139 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %140 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %139, i16 noundef zeroext %137) #14
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = icmp eq i16 %137, 60
  br i1 %142, label %143, label %241

143:                                              ; preds = %141
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %241

144:                                              ; preds = %136, %136, %138, %133
  %145 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %71) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store ptr null, ptr %7, align 8, !tbaa !153
  %146 = icmp ult i32 %77, %67
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %69, align 8, !tbaa !116
  %149 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %148) #14
  %150 = load i32, ptr %72, align 4, !tbaa !148
  %151 = load ptr, ptr %69, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %149, i32 noundef %150, ptr noundef %113, ptr noundef %145, i32 noundef 0, i1 noundef zeroext true, ptr noundef %151, ptr noundef null, i1 noundef zeroext false) #14
          to label %152 unwind label %155

152:                                              ; preds = %147
  store ptr %149, ptr %7, align 8, !tbaa !153
  %153 = load ptr, ptr %65, align 8, !tbaa !151
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %153, ptr noundef nonnull %149) #14
  %154 = load ptr, ptr %70, align 8, !tbaa !109
  call void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %154, ptr noundef nonnull align 4 dereferenceable(4) %6) #14
  br label %163

155:                                              ; preds = %147
  %156 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %149, ptr noundef %148) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %253

157:                                              ; preds = %144
  %158 = load ptr, ptr %65, align 8, !tbaa !151
  %159 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %158, i32 noundef %77) #14
  store ptr %159, ptr %7, align 8, !tbaa !153
  %160 = load i32, ptr %72, align 4, !tbaa !148
  call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %159, i32 noundef %160, ptr noundef %113, ptr noundef %145, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14
  %161 = load ptr, ptr %7, align 8, !tbaa !153
  call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %161, i1 noundef zeroext true) #14
  %162 = load ptr, ptr %70, align 8, !tbaa !109
  call void @_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj(ptr noundef nonnull align 8 dereferenceable(32) %162, ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef %77) #14
  br label %163

163:                                              ; preds = %157, %152
  %164 = load ptr, ptr %7, align 8, !tbaa !153
  %165 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %164) #14
  %166 = load ptr, ptr %7, align 8, !tbaa !153
  %167 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %166) #14
  %168 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %71) #14
  %169 = icmp eq ptr %165, null
  br i1 %169, label %208, label %170

170:                                              ; preds = %163
  %171 = load i16, ptr %165, align 2, !tbaa !154
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %208, label %173

173:                                              ; preds = %170
  %174 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %165, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = load ptr, ptr %7, align 8, !tbaa !153
  %177 = load i32, ptr %75, align 4, !tbaa !156
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %176, i32 noundef %177) #14
  br label %242

178:                                              ; preds = %173
  %179 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %165, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %179, label %180, label %206

180:                                              ; preds = %178
  %181 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %167, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %181, label %186, label %182

182:                                              ; preds = %180
  %183 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %167, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %183, label %184, label %188

184:                                              ; preds = %182
  %185 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %168, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #14
  br i1 %185, label %188, label %186

186:                                              ; preds = %184, %180
  %187 = phi i32 [ 301, %180 ], [ 303, %184 ]
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %187) #14
  br label %188

188:                                              ; preds = %186, %182, %184
  %189 = icmp eq ptr %168, null
  br i1 %189, label %197, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %192 = load i16, ptr %168, align 2, !tbaa !154
  %193 = icmp eq i16 %192, 0
  %194 = load i32, ptr %191, align 8
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %198

197:                                              ; preds = %190, %188
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %113, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %198

198:                                              ; preds = %197, %190
  %199 = load ptr, ptr %73, align 8, !tbaa !157
  %200 = load ptr, ptr %199, align 8, !tbaa !87
  %201 = getelementptr inbounds ptr, ptr %200, i64 5
  %202 = load ptr, ptr %201, align 8
  %203 = call noundef i32 %202(ptr noundef nonnull align 8 dereferenceable(40) %199, ptr noundef %168) #14
  call void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef %167, i32 noundef %203) #14
  %204 = load ptr, ptr %7, align 8, !tbaa !153
  %205 = load i32, ptr %74, align 8, !tbaa !158
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %204, i32 noundef %205) #14
  br label %242

206:                                              ; preds = %178
  %207 = load ptr, ptr %63, align 8, !tbaa !110
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %207, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  br label %242

208:                                              ; preds = %170, %163
  %209 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, ptr noundef %167) #14
  br i1 %209, label %210, label %242

210:                                              ; preds = %208
  %211 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %168, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #14
  br i1 %211, label %214, label %212

212:                                              ; preds = %210
  %213 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %168, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #14
  br i1 %213, label %214, label %216

214:                                              ; preds = %212, %210
  %215 = phi i32 [ 302, %210 ], [ 304, %212 ]
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %215) #14
  br label %216

216:                                              ; preds = %214, %212
  %217 = load ptr, ptr %73, align 8, !tbaa !157
  %218 = load ptr, ptr %217, align 8, !tbaa !87
  %219 = getelementptr inbounds ptr, ptr %218, i64 5
  %220 = load ptr, ptr %219, align 8
  %221 = call noundef i32 %220(ptr noundef nonnull align 8 dereferenceable(40) %217, ptr noundef %168) #14
  call void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %221) #14
  br label %242

222:                                              ; preds = %90
  switch i16 %91, label %244 [
    i16 0, label %223
    i16 47, label %229
    i16 62, label %233
    i16 60, label %235
    i16 39, label %236
    i16 34, label %236
  ]

223:                                              ; preds = %222
  %224 = call ptr @__cxa_allocate_exception(i64 48) #12
  %225 = load ptr, ptr %69, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %224, ptr noundef nonnull @.str, i32 noundef 1390, i32 noundef 47, ptr noundef %225) #14
          to label %226 unwind label %227

226:                                              ; preds = %223
  call void @__cxa_throw(ptr nonnull %224, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

227:                                              ; preds = %223
  %228 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %224) #12
  br label %253

229:                                              ; preds = %222
  %230 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %231 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 62) #14
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %248

233:                                              ; preds = %222
  %234 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  br label %248

235:                                              ; preds = %222
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %248

236:                                              ; preds = %222, %222
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  %237 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext %91) #14
  %238 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false) #14
  br label %244, !llvm.loop !159

239:                                              ; preds = %101, %109, %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %349

240:                                              ; preds = %104, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %244

241:                                              ; preds = %141, %143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %349

242:                                              ; preds = %198, %206, %175, %216, %208
  %243 = add i32 %77, 1
  store i32 %243, ptr %4, align 4, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %244

244:                                              ; preds = %222, %236, %242, %240
  %245 = phi i32 [ %243, %242 ], [ %79, %240 ], [ %79, %236 ], [ %79, %222 ]
  %246 = phi i32 [ %243, %242 ], [ %78, %240 ], [ %78, %236 ], [ %78, %222 ]
  %247 = phi i32 [ %243, %242 ], [ %77, %240 ], [ %77, %236 ], [ %77, %222 ]
  br label %76, !llvm.loop !159

248:                                              ; preds = %233, %235, %232, %229
  %249 = phi i1 [ false, %229 ], [ false, %232 ], [ true, %235 ], [ true, %233 ]
  %250 = load ptr, ptr %63, align 8, !tbaa !110
  %251 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %250) #14
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %257

253:                                              ; preds = %227, %155
  %254 = phi { ptr, i32 } [ %228, %227 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %350

255:                                              ; preds = %257, %248
  %256 = icmp eq i32 %77, 0
  br i1 %256, label %321, label %268

257:                                              ; preds = %248, %257
  %258 = phi i32 [ %264, %257 ], [ 0, %248 ]
  %259 = load ptr, ptr %63, align 8, !tbaa !110
  %260 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %259, i32 noundef %258) #14
  %261 = load ptr, ptr %260, align 8, !tbaa !153
  %262 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %261) #14
  %263 = call noundef i32 @_ZN11xercesc_2_712WFXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %262, i32 noundef 0) #14
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %261, i32 noundef %263) #14
  %264 = add nuw i32 %258, 1
  %265 = load ptr, ptr %63, align 8, !tbaa !110
  %266 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %265) #14
  %267 = icmp ult i32 %264, %266
  br i1 %267, label %257, label %255, !llvm.loop !160

268:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1, !tbaa !125
  call void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  %269 = load i32, ptr %4, align 4, !tbaa !132
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  br label %274

273:                                              ; preds = %316, %268
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  br label %321

274:                                              ; preds = %271, %316
  %275 = phi i32 [ 0, %271 ], [ %317, %316 ]
  %276 = load ptr, ptr %65, align 8, !tbaa !151
  %277 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %276, i32 noundef %275) #14
  %278 = load i8, ptr %8, align 1, !tbaa !125, !range !131, !noundef !117
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %302

280:                                              ; preds = %274
  %281 = add nuw i32 %275, 1
  %282 = load i32, ptr %4, align 4, !tbaa !132
  %283 = icmp ult i32 %281, %282
  br i1 %283, label %284, label %316

284:                                              ; preds = %280, %298
  %285 = phi i32 [ %299, %298 ], [ %281, %280 ]
  %286 = load ptr, ptr %65, align 8, !tbaa !151
  %287 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %286, i32 noundef %285) #14
  %288 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %287) #14
  %289 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %277) #14
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %284
  %292 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %287) #14
  %293 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %277) #14
  %294 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %292, ptr noundef %293) #14
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %287) #14
  %297 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %60) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %296, ptr noundef %297, ptr noundef null, ptr noundef null) #14
  br label %298

298:                                              ; preds = %284, %291, %295
  %299 = add nuw i32 %285, 1
  %300 = load i32, ptr %4, align 4, !tbaa !132
  %301 = icmp ult i32 %299, %300
  br i1 %301, label %284, label %316, !llvm.loop !161

302:                                              ; preds = %274
  %303 = load ptr, ptr %272, align 8, !tbaa !162
  %304 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %277) #14
  %305 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %277) #14
  %306 = call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %303, ptr noundef %304, i32 noundef %305) #14
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %277) #14
  %309 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %60) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %308, ptr noundef %309, ptr noundef null, ptr noundef null) #14
  br label %310

310:                                              ; preds = %307, %302
  %311 = load ptr, ptr %272, align 8, !tbaa !162
  %312 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %277) #14
  %313 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %277) #14
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %311, ptr noundef %312, i32 noundef %313, ptr noundef nonnull %277) #14
  %314 = load i32, ptr %4, align 4, !tbaa !132
  %315 = add nuw i32 %275, 1
  br label %316

316:                                              ; preds = %298, %280, %310
  %317 = phi i32 [ %281, %280 ], [ %315, %310 ], [ %281, %298 ]
  %318 = phi i32 [ %282, %280 ], [ %314, %310 ], [ %300, %298 ]
  %319 = add i32 %318, -1
  %320 = icmp ult i32 %317, %319
  br i1 %320, label %274, label %273, !llvm.loop !163

321:                                              ; preds = %273, %255
  %322 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %60) #14
  %323 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %322) #14
  %324 = call noundef i32 @_ZN11xercesc_2_712WFXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %323, i32 noundef 1) #14
  call void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef %324) #14
  %325 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %326 = load ptr, ptr %325, align 8, !tbaa !119
  %327 = icmp eq ptr %326, null
  br i1 %327, label %336, label %328

328:                                              ; preds = %321
  %329 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %60) #14
  %330 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %329) #14
  %331 = load ptr, ptr %65, align 8, !tbaa !151
  %332 = load i32, ptr %4, align 4, !tbaa !132
  %333 = load ptr, ptr %326, align 8, !tbaa !87
  %334 = getelementptr inbounds ptr, ptr %333, i64 11
  %335 = load ptr, ptr %334, align 8
  call void %335(ptr noundef nonnull align 8 dereferenceable(8) %326, ptr noundef nonnull align 8 dereferenceable(33) %60, i32 noundef %324, ptr noundef %330, ptr noundef nonnull align 8 dereferenceable(40) %331, i32 noundef %332, i1 noundef zeroext false, i1 noundef zeroext %20) #14
  br label %336

336:                                              ; preds = %328, %321
  br i1 %249, label %349, label %337

337:                                              ; preds = %336
  %338 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %19) #14
  %339 = load ptr, ptr %325, align 8, !tbaa !119
  %340 = icmp eq ptr %339, null
  br i1 %340, label %347, label %341

341:                                              ; preds = %337
  %342 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %60) #14
  %343 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %342) #14
  %344 = load ptr, ptr %339, align 8, !tbaa !87
  %345 = getelementptr inbounds ptr, ptr %344, i64 6
  %346 = load ptr, ptr %345, align 8
  call void %346(ptr noundef nonnull align 8 dereferenceable(8) %339, ptr noundef nonnull align 8 dereferenceable(33) %60, i32 noundef %324, i1 noundef zeroext %20, ptr noundef %343) #14
  br label %347

347:                                              ; preds = %341, %337
  br i1 %20, label %348, label %349

348:                                              ; preds = %347
  store i8 0, ptr %1, align 1, !tbaa !125
  br label %349

349:                                              ; preds = %239, %241, %336, %348, %347
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %352

350:                                              ; preds = %253, %49
  %351 = phi { ptr, i32 } [ %254, %253 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  resume { ptr, i32 } %351

352:                                              ; preds = %349, %17
  %353 = phi i1 [ %93, %349 ], [ false, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i1 %353
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = alloca i32, align 4
  store i8 1, ptr %1, align 1, !tbaa !125
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183) #14
  tail call void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 60) #14
  br label %173

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %9) #14
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %11) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %20) #14
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 8, !tbaa !112
  %25 = load i32, ptr %17, align 8, !tbaa !90
  %26 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef %25) #14
  br label %36

27:                                               ; preds = %16
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %29 = load ptr, ptr %28, align 8, !tbaa !150
  %30 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %29) #14
  %31 = load ptr, ptr %28, align 8, !tbaa !150
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %30, ptr noundef %31) #14
          to label %32 unwind label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %19, align 8, !tbaa !112
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull %30) #14
  br label %36

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #16
  br label %170

36:                                               ; preds = %32, %23
  %37 = phi ptr [ %26, %23 ], [ %30, %32 ]
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %39 = load i32, ptr %38, align 4, !tbaa !148
  tail call void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33) %37, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %11, i32 noundef %39) #14
  %40 = load ptr, ptr %12, align 8, !tbaa !111
  %41 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %37) #14
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef %41, ptr noundef nonnull %37) #14
  %42 = load i32, ptr %17, align 8, !tbaa !90
  %43 = add i32 %42, 1
  store i32 %43, ptr %17, align 8, !tbaa !90
  br label %44

44:                                               ; preds = %36, %8
  %45 = phi ptr [ %14, %8 ], [ %37, %36 ]
  %46 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %47 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull %45, i32 noundef %46) #14
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #14
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %50 = load ptr, ptr %49, align 8, !tbaa !151
  %51 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %50) #14
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %54 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  br label %56

56:                                               ; preds = %153, %44
  %57 = phi i32 [ 0, %44 ], [ %154, %153 ]
  %58 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  switch i16 %58, label %61 [
    i16 62, label %68
    i16 47, label %68
  ]

61:                                               ; preds = %60
  %62 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %63 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %62, i16 noundef zeroext %58) #14
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #14
  %66 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  br label %68

67:                                               ; preds = %61
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #14
  br label %68

68:                                               ; preds = %60, %60, %67, %64, %56
  %69 = phi i16 [ %66, %64 ], [ %58, %67 ], [ %58, %60 ], [ %58, %56 ], [ %58, %60 ]
  %70 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %71 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %70, i16 noundef zeroext %69) #14
  br i1 %71, label %133, label %72

72:                                               ; preds = %68
  %73 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %52) #14
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 62) #14
  br label %173

75:                                               ; preds = %72
  %76 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false) #14
  br i1 %76, label %85, label %77

77:                                               ; preds = %75
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180) #14
  %78 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList) #14
  switch i16 %78, label %79 [
    i16 62, label %153
    i16 47, label %153
    i16 39, label %85
    i16 34, label %85
  ]

79:                                               ; preds = %77
  %80 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %81 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %80, i16 noundef zeroext %78) #14
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = icmp eq i16 %78, 60
  br i1 %83, label %84, label %173

84:                                               ; preds = %82
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %173

85:                                               ; preds = %77, %77, %79, %75
  %86 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %52) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %87 = load ptr, ptr %53, align 8, !tbaa !116
  %88 = call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %86, i32 noundef 109, ptr noundef %87) #14
  store i32 %88, ptr %3, align 4, !tbaa !132
  br i1 %59, label %105, label %89

89:                                               ; preds = %85, %102
  %90 = phi i32 [ %103, %102 ], [ 0, %85 ]
  %91 = load ptr, ptr %54, align 8, !tbaa !109
  %92 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %91, i32 noundef %90) #14
  %93 = load i32, ptr %92, align 4, !tbaa !132
  %94 = load i32, ptr %3, align 4, !tbaa !132
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load ptr, ptr %49, align 8, !tbaa !151
  %98 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef %90) #14
  %99 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %98) #14
  %100 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %99, ptr noundef %86) #14
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %86, ptr noundef %11, ptr noundef null, ptr noundef null) #14
  br label %105

102:                                              ; preds = %89, %96
  %103 = add nuw i32 %90, 1
  %104 = icmp eq i32 %103, %57
  br i1 %104, label %105, label %89, !llvm.loop !164

105:                                              ; preds = %102, %101, %85
  %106 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #14
  %107 = call noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanAttValueEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %86, ptr noundef nonnull align 8 dereferenceable(40) %55) #14
  br i1 %107, label %116, label %108

108:                                              ; preds = %105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199) #14
  %109 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList_0) #14
  switch i16 %109, label %110 [
    i16 62, label %116
    i16 47, label %116
  ]

110:                                              ; preds = %108
  %111 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %112 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %111, i16 noundef zeroext %109) #14
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = icmp eq i16 %109, 60
  br i1 %114, label %115, label %172

115:                                              ; preds = %113
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %172

116:                                              ; preds = %108, %108, %110, %105
  %117 = icmp ult i32 %57, %51
  br i1 %117, label %128, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %53, align 8, !tbaa !116
  %120 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %119) #14
  %121 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %55) #14
  %122 = load ptr, ptr %53, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %120, i32 noundef 0, ptr noundef %86, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %121, i32 noundef 0, i1 noundef zeroext true, ptr noundef %122, ptr noundef null, i1 noundef zeroext false) #14
          to label %123 unwind label %126

123:                                              ; preds = %118
  %124 = load ptr, ptr %49, align 8, !tbaa !151
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %124, ptr noundef nonnull %120) #14
  %125 = load ptr, ptr %54, align 8, !tbaa !109
  call void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %125, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  br label %151

126:                                              ; preds = %118
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %120, ptr noundef %119) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %170

128:                                              ; preds = %116
  %129 = load ptr, ptr %49, align 8, !tbaa !151
  %130 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %129, i32 noundef %57) #14
  %131 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %55) #14
  call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %130, i32 noundef 0, ptr noundef %86, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %131, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14
  call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %130, i1 noundef zeroext true) #14
  %132 = load ptr, ptr %54, align 8, !tbaa !109
  call void @_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %57) #14
  br label %151

133:                                              ; preds = %68
  switch i16 %69, label %153 [
    i16 0, label %134
    i16 47, label %140
    i16 62, label %144
    i16 60, label %146
    i16 39, label %148
    i16 34, label %148
  ]

134:                                              ; preds = %133
  %135 = call ptr @__cxa_allocate_exception(i64 48) #12
  %136 = load ptr, ptr %53, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %135, ptr noundef nonnull @.str, i32 noundef 1009, i32 noundef 47, ptr noundef %136) #14
          to label %137 unwind label %138

137:                                              ; preds = %134
  call void @__cxa_throw(ptr nonnull %135, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

138:                                              ; preds = %134
  %139 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %135) #12
  br label %170

140:                                              ; preds = %133
  %141 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %142 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 62) #14
  br i1 %142, label %155, label %143

143:                                              ; preds = %140
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %155

144:                                              ; preds = %133
  %145 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  br label %158

146:                                              ; preds = %133
  %147 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %45) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %147, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %158

148:                                              ; preds = %133, %133
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  %149 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext %69) #14
  %150 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #14
  br label %153, !llvm.loop !165

151:                                              ; preds = %123, %128
  %152 = add i32 %57, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %153

153:                                              ; preds = %77, %77, %133, %148, %151
  %154 = phi i32 [ %152, %151 ], [ %57, %148 ], [ %57, %133 ], [ %57, %77 ], [ %57, %77 ]
  br label %56, !llvm.loop !165

155:                                              ; preds = %143, %140
  %156 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %9) #14
  br i1 %10, label %157, label %158

157:                                              ; preds = %155
  store i8 0, ptr %1, align 1, !tbaa !125
  br label %158

158:                                              ; preds = %144, %146, %155, %157
  %159 = phi i1 [ true, %155 ], [ true, %157 ], [ false, %146 ], [ false, %144 ]
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %161 = load ptr, ptr %160, align 8, !tbaa !119
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %165 = load i32, ptr %164, align 4, !tbaa !148
  %166 = load ptr, ptr %49, align 8, !tbaa !151
  %167 = load ptr, ptr %161, align 8, !tbaa !87
  %168 = getelementptr inbounds ptr, ptr %167, i64 11
  %169 = load ptr, ptr %168, align 8
  call void %169(ptr noundef nonnull align 8 dereferenceable(8) %161, ptr noundef nonnull align 8 dereferenceable(33) %45, i32 noundef %165, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %166, i32 noundef %57, i1 noundef zeroext %159, i1 noundef zeroext %10) #14
  br label %173

170:                                              ; preds = %126, %138, %34
  %171 = phi { ptr, i32 } [ %35, %34 ], [ %139, %138 ], [ %127, %126 ]
  resume { ptr, i32 } %171

172:                                              ; preds = %113, %115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %173

173:                                              ; preds = %172, %84, %82, %74, %163, %158, %7
  %174 = phi i1 [ false, %7 ], [ true, %163 ], [ true, %158 ], [ false, %74 ], [ false, %82 ], [ false, %84 ], [ false, %172 ]
  ret i1 %174
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !166

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #14
  ret i32 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %2, ptr %0, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !172
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !173
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !174
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !170
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7) #14
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !174
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #16
  resume { ptr, i32 } %11
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 !prof !175 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i8 %5, ptr %0, align 8, !tbaa !176
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !178
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !179
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !180
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !181
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !87
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #14
  store ptr %15, ptr %8, align 8, !tbaa !180
  %16 = load i32, ptr %7, align 8, !tbaa !179
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 !prof !86 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i8 %5, ptr %0, align 8, !tbaa !182
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !184
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !185
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !186
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !187
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !87
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #14
  store ptr %15, ptr %8, align 8, !tbaa !186
  %16 = load i32, ptr %7, align 8, !tbaa !185
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %3, ptr %0, align 8, !tbaa !188
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !190
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !191
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !192
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !193
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !194
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !195
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !188
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12) #14
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #14
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !195
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #16
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #2 comdat align 2 !prof !196 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !197

7:                                                ; preds = %3
  %8 = load i16, ptr %2, align 2, !tbaa !154
  store i16 %8, ptr %5, align 8, !tbaa !198
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %5, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !200
  br label %26

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !170
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = load i32, ptr %4, align 4, !tbaa !132
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  call void @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef %21) #14
  %22 = load ptr, ptr %16, align 8, !tbaa !172
  %23 = load i32, ptr %4, align 4, !tbaa !132
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %15, ptr %25, align 8, !tbaa !153
  br label %26

26:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = load ptr, ptr %3, align 8, !tbaa !87
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !174
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !87
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #16
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = load ptr, ptr %3, align 8, !tbaa !87
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
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !186
  %6 = load ptr, ptr %3, align 8, !tbaa !87
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
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
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
define dso_local noundef i32 @_ZN11xercesc_2_712WFXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !86 {
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !158
  br label %21

9:                                                ; preds = %3
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 4, !tbaa !156
  br label %21

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %16 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %17 = load i8, ptr %4, align 1, !tbaa !125, !range !131, !noundef !117
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %21

21:                                               ; preds = %20, %11, %6
  %22 = phi i32 [ %8, %6 ], [ %13, %11 ], [ %16, %20 ]
  ret i32 %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !201 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !202

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !154
  %8 = load i16, ptr %1, align 2, !tbaa !154
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !203

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !204

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !154
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !138

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !205

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !154
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !206

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !207

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !154
  %28 = load i16, ptr %26, align 2, !tbaa !154
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !208, !llvm.loop !209

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !87
  %8 = getelementptr inbounds ptr, ptr %7, i64 9
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !87
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12) #14
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %20 = load ptr, ptr %19, align 8, !tbaa !211
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !87
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %20) #14
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %29 = load i32, ptr %28, align 4, !tbaa !148
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %31 = load i32, ptr %30, align 8, !tbaa !212
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %33 = load i32, ptr %32, align 4, !tbaa !156
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !158
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %36, align 1, !tbaa !120
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %37, align 2, !tbaa !213
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %38, align 8, !tbaa !214
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %39, align 1, !tbaa !215
  %40 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  store i32 0, ptr %40, align 8, !tbaa !90
  %41 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !111
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %42) #14
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !216, !range !131, !noundef !117
  %46 = icmp ne i8 %45, 0
  %47 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %46) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %26
  %50 = load ptr, ptr %1, align 8, !tbaa !87
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
  %54 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %55 = load ptr, ptr %1, align 8, !tbaa !87
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  br i1 %53, label %58, label %66

58:                                               ; preds = %49
  %59 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %60 unwind label %64

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %62 = load ptr, ptr %61, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 76, ptr noundef %59, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %62) #14
          to label %63 unwind label %64

63:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

64:                                               ; preds = %60, %58
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %87

66:                                               ; preds = %49
  %67 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %68 unwind label %72

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %70 = load ptr, ptr %69, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 2, ptr noundef %67, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %70) #14
          to label %71 unwind label %72

71:                                               ; preds = %68
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

72:                                               ; preds = %68, %66
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %87

74:                                               ; preds = %26
  %75 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull %47, ptr noundef null) #14
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %77 = load ptr, ptr %76, align 8, !tbaa !217
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %77, align 8, !tbaa !87
  %81 = getelementptr inbounds ptr, ptr %80, i64 3
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef i32 %82(ptr noundef nonnull align 8 dereferenceable(12) %77) #14
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %83, ptr %84, align 4, !tbaa !218
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %85, align 8, !tbaa !219
  br label %86

86:                                               ; preds = %79, %74
  ret void

87:                                               ; preds = %72, %64
  %88 = phi { ptr, i32 } [ %65, %64 ], [ %73, %72 ]
  tail call void @__cxa_free_exception(ptr %54) #12
  resume { ptr, i32 } %88
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !194
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !191
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !220
  %23 = load i8, ptr %9, align 8, !tbaa !190, !range !131, !noundef !117
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !222
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !87
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(33) %26) #16
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !188
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !223

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !191
  %40 = load i32, ptr %4, align 8, !tbaa !192
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !153
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !224

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner12sendCharDataERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 !prof !86 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %11 = load ptr, ptr %6, align 8, !tbaa !87
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #14
  br label %14

14:                                               ; preds = %8, %4
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  br label %15

15:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !225 {
  %2 = load i32, ptr %0, align 8, !tbaa !226
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !227 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  %4 = load i32, ptr %0, align 8, !tbaa !226
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !154
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !229 {
  %2 = load i32, ptr %0, align 8, !tbaa !226
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !230 {
  store i32 0, ptr %0, align 8, !tbaa !226
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  store i16 0, ptr %3, align 2, !tbaa !154
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !231

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !232 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !233
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !143
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !234
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !235 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #14
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 !prof !236 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !237 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #2 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEvE9doctypeIE) #14
  %4 = icmp eq i16 %3, 91
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %2, i16 noundef zeroext 93) #14
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %2, i16 noundef zeroext 62) #14
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 !prof !240 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext false) #14
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !222
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !244
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !241
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !153
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !241
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !192
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !194
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !190, !range !131, !noundef !117
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !222
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !87
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(33) %21) #16
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !222
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !245
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !188
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !191
  %37 = load i32, ptr %4, align 4, !tbaa !132
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !153
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_14XMLElementDeclEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #14
  %41 = load ptr, ptr %35, align 8, !tbaa !191
  %42 = load i32, ptr %4, align 4, !tbaa !132
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !153
  %45 = load i32, ptr %9, align 8, !tbaa !194
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !194
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !246 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !247
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !249 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !250 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !251
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !257
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !258 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !251
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !257
  %8 = and i8 %7, 16
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !259 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !260

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !154
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !261

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !154
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !262

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
  %23 = load i16, ptr %22, align 2, !tbaa !154
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !263, !llvm.loop !264

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !265 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !178
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !266

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !180
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !267 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !247
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !268

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !269
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !270
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 !prof !271 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanAttValueEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 2 dereferenceable(2) %4) #14
  br i1 %10, label %11, label %108

11:                                               ; preds = %3
  %12 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  br label %13

13:                                               ; preds = %84, %11
  %14 = phi i8 [ 0, %11 ], [ %85, %84 ]
  %15 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %16 unwind label %23

16:                                               ; preds = %13
  store i16 %15, ptr %5, align 2, !tbaa !154
  %17 = icmp eq i16 %15, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %20 = call ptr @__cxa_allocate_exception(i64 48) #12
  %21 = load ptr, ptr %19, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1634, i32 noundef 47, ptr noundef %21) #14
          to label %22 unwind label %27

22:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %110 unwind label %25

23:                                               ; preds = %60, %13, %32, %36, %46, %58, %93, %99, %104
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %76

25:                                               ; preds = %22, %40
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %76

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %20) #12
  br label %76

29:                                               ; preds = %16
  %30 = load i16, ptr %4, align 2, !tbaa !154
  %31 = icmp eq i16 %15, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %34 unwind label %23

34:                                               ; preds = %32
  %35 = icmp eq i32 %12, %33
  br i1 %35, label %106, label %36

36:                                               ; preds = %34
  %37 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
          to label %38 unwind label %23

38:                                               ; preds = %36
  %39 = icmp ugt i32 %12, %37
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %106 unwind label %25

41:                                               ; preds = %38
  %42 = load i16, ptr %5, align 2
  br label %43

43:                                               ; preds = %41, %29
  %44 = phi i16 [ %42, %41 ], [ %15, %29 ]
  store i8 0, ptr %7, align 1, !tbaa !125
  %45 = icmp eq i16 %44, 38
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 8, !tbaa !87
  %48 = getelementptr inbounds ptr, ptr %47, i64 13
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef i32 %49(ptr noundef nonnull align 8 dereferenceable(824) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %51 unwind label %23

51:                                               ; preds = %46
  %52 = icmp eq i32 %50, 1
  br i1 %52, label %86, label %84

53:                                               ; preds = %43
  %54 = and i16 %44, -1024
  %55 = and i8 %14, 1
  %56 = icmp eq i8 %55, 0
  switch i16 %54, label %62 [
    i16 -10240, label %57
    i16 -9216, label %59
  ]

57:                                               ; preds = %53
  br i1 %56, label %86, label %58

58:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %86 unwind label %23

59:                                               ; preds = %53
  br i1 %56, label %60, label %86

60:                                               ; preds = %62, %59
  %61 = phi i32 [ 282, %59 ], [ 249, %62 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %61) #14
          to label %86 unwind label %23

62:                                               ; preds = %53
  br i1 %56, label %63, label %60

63:                                               ; preds = %62
  %64 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %65 = load i16, ptr %5, align 2, !tbaa !154
  %66 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %64, i16 noundef zeroext %65) #14
  br i1 %66, label %86, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %8) #12
  %69 = load i16, ptr %5, align 2, !tbaa !154
  %70 = zext i16 %69 to i32
  %71 = load ptr, ptr %68, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %70, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %71) #14
          to label %72 unwind label %74

72:                                               ; preds = %67
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #14
          to label %73 unwind label %74

73:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #12
  br label %86

74:                                               ; preds = %72, %67
  %75 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #12
  br label %76

76:                                               ; preds = %23, %25, %74, %27
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %28, %27 ], [ %24, %23 ], [ %26, %25 ]
  %78 = extractvalue { ptr, i32 } %77, 1
  %79 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #12
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %76
  %82 = extractvalue { ptr, i32 } %77, 0
  %83 = call ptr @__cxa_begin_catch(ptr %82) #12
  store i8 0, ptr %7, align 1, !tbaa !125
  call void @__cxa_end_catch()
  br label %84

84:                                               ; preds = %81, %101, %105, %51
  %85 = phi i8 [ 0, %81 ], [ 0, %51 ], [ %87, %105 ], [ %87, %101 ]
  br label %13, !llvm.loop !275

86:                                               ; preds = %60, %59, %63, %73, %57, %58, %51
  %87 = phi i8 [ %14, %51 ], [ %14, %58 ], [ 1, %57 ], [ 0, %73 ], [ 0, %63 ], [ 0, %59 ], [ 0, %60 ]
  %88 = load i8, ptr %7, align 1, !tbaa !125, !range !131, !noundef !117
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i16, ptr %5, align 2, !tbaa !154
  %92 = icmp eq i16 %91, 60
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %99 unwind label %23

94:                                               ; preds = %90
  %95 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %96 = load i16, ptr %5, align 2, !tbaa !154
  %97 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %95, i16 noundef zeroext %96) #14
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i16 32, ptr %5, align 2, !tbaa !154
  br label %99

99:                                               ; preds = %93, %98, %94, %86
  %100 = load i16, ptr %5, align 2, !tbaa !154
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %100) #14
          to label %101 unwind label %23

101:                                              ; preds = %99
  %102 = load i16, ptr %6, align 2, !tbaa !154
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %84, label %104

104:                                              ; preds = %101
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %102) #14
          to label %105 unwind label %23

105:                                              ; preds = %104
  store i16 0, ptr %6, align 2, !tbaa !154
  br label %84

106:                                              ; preds = %40, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %108

107:                                              ; preds = %76
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  resume { ptr, i32 } %77

108:                                              ; preds = %3, %106
  %109 = phi i1 [ %35, %106 ], [ false, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i1 %109

110:                                              ; preds = %22
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !276 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !270
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !247
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !153
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !247
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 !prof !277 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #14
  %3 = load i32, ptr %1, align 4, !tbaa !132
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !178
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !132
  %10 = load i32, ptr %6, align 4, !tbaa !178
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #2 comdat align 2 !prof !278 {
  %9 = zext i1 %7 to i8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !272
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %3, ptr noundef %2, i32 noundef %1) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %12, align 4, !tbaa !279
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %9, ptr %13, align 8, !tbaa !280
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %6, ptr %14, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !278 {
  %3 = zext i1 %1 to i8
  store i8 %3, ptr %0, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !178
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 126, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = load i32, ptr %1, align 4, !tbaa !132
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !180
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  store i32 %15, ptr %19, align 4, !tbaa !132
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !283 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #14
  ret i1 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %8 = zext i1 %6 to i8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !272
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %2, i32 noundef %1) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %3) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %4, ptr %11, align 4, !tbaa !279
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %8, ptr %12, align 8, !tbaa !280
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %5, ptr %13, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #5 comdat align 2 !prof !284 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #14
  %3 = load ptr, ptr %1, align 8, !tbaa !153
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !186
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !184
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !153
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !184
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !184
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !184
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !186
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %4 = load i32, ptr %1, align 4, !tbaa !132
  %5 = icmp ugt i32 %4, 100
  br i1 %5, label %6, label %30, !prof !286

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !125
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12) #14
  %14 = load i32, ptr %1, align 4, !tbaa !132
  %15 = shl i32 %14, 1
  %16 = or disjoint i32 %15, 1
  %17 = load ptr, ptr %11, align 8, !tbaa !116
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %17) #14
          to label %19 unwind label %23

19:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #14
          to label %20 unwind label %25

20:                                               ; preds = %19
  %21 = load ptr, ptr %11, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %16, i1 noundef zeroext false, ptr noundef nonnull %18, ptr noundef %21) #14
          to label %22 unwind label %23

22:                                               ; preds = %20
  store ptr %13, ptr %7, align 8, !tbaa !162
  br label %30

23:                                               ; preds = %20, %10
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #16
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %26, %25 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #16
  resume { ptr, i32 } %28

29:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  br label %30

30:                                               ; preds = %22, %29, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 !prof !287 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp ne ptr %5, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !288
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !290
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !291, !range !131, !noundef !117
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !292
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %21) #16
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !292
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !294
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !295
  br label %45

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !296
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32) #14
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !297
  %35 = load i32, ptr %5, align 4, !tbaa !132
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !153
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38) #14
  %39 = load ptr, ptr %33, align 8, !tbaa !297
  %40 = load i32, ptr %5, align 4, !tbaa !132
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %32, ptr %42, align 8, !tbaa !153
  %43 = load i32, ptr %9, align 4, !tbaa !290
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4, !tbaa !290
  br label %45

45:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !233
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !143
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 13
  store i32 %1, ptr %11, align 8, !tbaa !234
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712WFXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 !prof !86 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #14
  store i32 %8, ptr %4, align 4, !tbaa !132
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1, !tbaa !125
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = sext i16 %3 to i32
  %13 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %36

14:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i32 noundef %8) #14
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = icmp eq i16 %3, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %17
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %22 = load i32, ptr %21, align 8, !tbaa !158
  br label %36

23:                                               ; preds = %14
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 4, !tbaa !156
  br label %36

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1, !tbaa !125
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %30 = sext i16 %3 to i32
  %31 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %29, ptr noundef %15, i32 noundef %30, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  %32 = load i8, ptr %7, align 1, !tbaa !125, !range !131, !noundef !117
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %35

35:                                               ; preds = %34, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  br label %36

36:                                               ; preds = %20, %25, %35, %10
  %37 = phi i32 [ %13, %10 ], [ %22, %20 ], [ %27, %25 ], [ %31, %35 ]
  ret i32 %37
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !299 {
  store i32 0, ptr %0, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !300 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !251
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !257
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !301 {
  %3 = load i32, ptr %0, align 8, !tbaa !226
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !302
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !303

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %8 = load i32, ptr %0, align 8, !tbaa !226
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !228
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !226
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !154
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca [9 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #14
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261) #14
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #14
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #14
  br i1 %8, label %9, label %77

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  br label %12

12:                                               ; preds = %71, %9
  %13 = phi i8 [ 0, %9 ], [ %72, %71 ]
  %14 = phi i8 [ 0, %9 ], [ %73, %71 ]
  %15 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
          to label %16 unwind label %23

16:                                               ; preds = %12
  %17 = icmp eq i16 %15, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264) #14
          to label %19 unwind label %25

19:                                               ; preds = %18
  %20 = call ptr @__cxa_allocate_exception(i64 48) #12
  %21 = load ptr, ptr %11, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1781, i32 noundef 47, ptr noundef %21) #14
          to label %22 unwind label %27

22:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %78 unwind label %25

23:                                               ; preds = %59, %12, %32, %57, %71
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %74

25:                                               ; preds = %18, %22, %38, %43
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %74

27:                                               ; preds = %19
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %20) #12
  br label %74

29:                                               ; preds = %16
  %30 = zext i16 %15 to i32
  %31 = icmp eq i16 %15, 93
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner13scanCDSectionEvE10CDataClose) #14
          to label %34 unwind label %23

34:                                               ; preds = %32
  br i1 %33, label %35, label %49

35:                                               ; preds = %34
  %36 = and i8 %13, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %39 unwind label %25

39:                                               ; preds = %38, %35
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %41 = load ptr, ptr %40, align 8, !tbaa !119
  %42 = icmp eq ptr %41, null
  br i1 %42, label %76, label %43

43:                                               ; preds = %39
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %45 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %46 = load ptr, ptr %41, align 8, !tbaa !87
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %44, i32 noundef %45, i1 noundef zeroext true) #14
          to label %76 unwind label %25

49:                                               ; preds = %34, %29
  %50 = and i8 %14, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = and i16 %15, -1024
  %54 = and i8 %13, 1
  %55 = icmp eq i8 %54, 0
  switch i16 %53, label %61 [
    i16 -10240, label %56
    i16 -9216, label %58
  ]

56:                                               ; preds = %52
  br i1 %55, label %71, label %57

57:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %71 unwind label %23

58:                                               ; preds = %52
  br i1 %55, label %59, label %71

59:                                               ; preds = %61, %58
  %60 = phi i32 [ 282, %58 ], [ 249, %61 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %60) #14
          to label %71 unwind label %23

61:                                               ; preds = %52
  br i1 %55, label %62, label %59

62:                                               ; preds = %61
  %63 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %64 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %63, i16 noundef zeroext %15) #14
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #12
  %66 = load ptr, ptr %11, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %30, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 16, ptr noundef %66) #14
          to label %67 unwind label %69

67:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %68 unwind label %69

68:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #12
  br label %71

69:                                               ; preds = %67, %65
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #12
  br label %74

71:                                               ; preds = %59, %58, %62, %68, %56, %57, %49
  %72 = phi i8 [ %13, %49 ], [ %13, %57 ], [ 1, %56 ], [ 0, %68 ], [ 0, %62 ], [ 0, %58 ], [ 0, %59 ]
  %73 = phi i8 [ %14, %49 ], [ %14, %57 ], [ %14, %56 ], [ 1, %68 ], [ %14, %62 ], [ %14, %58 ], [ %14, %59 ]
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext %15) #14
          to label %12 unwind label %23

74:                                               ; preds = %23, %25, %69, %27
  %75 = phi { ptr, i32 } [ %70, %69 ], [ %28, %27 ], [ %24, %23 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %75

76:                                               ; preds = %43, %39
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br label %77

77:                                               ; preds = %6, %76
  ret void

78:                                               ; preds = %22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !304 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !276 {
  %2 = load ptr, ptr %0, align 8, !tbaa !307
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  %5 = load i32, ptr %2, align 8, !tbaa !226
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !154
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !308 {
  %2 = load ptr, ptr %0, align 8, !tbaa !307
  %3 = load i32, ptr %2, align 8, !tbaa !226
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !307
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !305
  %4 = load ptr, ptr %0, align 8, !tbaa !307
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %8 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1, !tbaa !125
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

22:                                               ; preds = %59, %119, %113, %110, %56
  %23 = phi i32 [ %115, %119 ], [ %115, %113 ], [ 2, %110 ], [ %12, %56 ], [ %12, %59 ]
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
  store i8 0, ptr %6, align 1, !tbaa !125
  %33 = load i16, ptr %4, align 2
  %34 = icmp eq i16 %33, 38
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8, !tbaa !87
  %37 = getelementptr inbounds ptr, ptr %36, i64 16
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %39 unwind label %20

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  invoke void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %9, i1 noundef zeroext false) #14
          to label %40 unwind label %47

40:                                               ; preds = %39
  %41 = load ptr, ptr %0, align 8, !tbaa !87
  %42 = getelementptr inbounds ptr, ptr %41, i64 13
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(824) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %45 unwind label %49

45:                                               ; preds = %40
  %46 = icmp eq i32 %44, 1
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
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
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %74

53:                                               ; preds = %32
  %54 = and i16 %33, -1024
  switch i16 %54, label %58 [
    i16 -10240, label %55
    i16 -9216, label %57
  ]

55:                                               ; preds = %53
  br i1 %17, label %98, label %56

56:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %95 unwind label %22

57:                                               ; preds = %53
  br i1 %17, label %59, label %98

58:                                               ; preds = %53
  br i1 %17, label %61, label %59

59:                                               ; preds = %58, %57
  %60 = phi i32 [ 282, %57 ], [ 249, %58 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %60) #14
          to label %95 unwind label %22

61:                                               ; preds = %58
  %62 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %63 = load i16, ptr %4, align 2, !tbaa !154
  %64 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %62, i16 noundef zeroext %63) #14
  br i1 %64, label %95, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %8) #12
  %67 = load i16, ptr %4, align 2, !tbaa !154
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr %66, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %68, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %69) #14
          to label %70 unwind label %72

70:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %71 unwind label %72

71:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #12
  br label %95

72:                                               ; preds = %70, %65
  %73 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #12
  br label %74

74:                                               ; preds = %25, %22, %20, %72, %51
  %75 = phi { ptr, i32 } [ %52, %51 ], [ %73, %72 ], [ %26, %25 ], [ %21, %20 ], [ %24, %22 ]
  %76 = phi i32 [ %12, %51 ], [ %12, %72 ], [ %12, %25 ], [ %12, %20 ], [ %23, %22 ]
  %77 = extractvalue { ptr, i32 } %75, 1
  %78 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #12
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %136

80:                                               ; preds = %74
  %81 = extractvalue { ptr, i32 } %75, 0
  %82 = call ptr @__cxa_begin_catch(ptr %81) #12
  %83 = load ptr, ptr %0, align 8, !tbaa !87
  %84 = getelementptr inbounds ptr, ptr %83, i64 16
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %86 unwind label %124

86:                                               ; preds = %80
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %88 = load ptr, ptr %87, align 8, !tbaa !119
  %89 = icmp eq ptr %88, null
  br i1 %89, label %126, label %90

90:                                               ; preds = %86
  %91 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %82) #14
  %92 = load ptr, ptr %88, align 8, !tbaa !87
  %93 = getelementptr inbounds ptr, ptr %92, i64 7
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(72) %91) #14
          to label %126 unwind label %124

95:                                               ; preds = %45, %59, %56, %71, %61
  %96 = phi i8 [ 0, %61 ], [ 0, %71 ], [ %15, %56 ], [ 0, %59 ], [ %15, %45 ]
  %97 = load i16, ptr %4, align 2, !tbaa !154
  br label %98

98:                                               ; preds = %95, %57, %55
  %99 = phi i16 [ %97, %95 ], [ %33, %57 ], [ %33, %55 ]
  %100 = phi i8 [ %96, %95 ], [ 0, %57 ], [ 1, %55 ]
  %101 = load i8, ptr %6, align 1, !tbaa !125, !range !131, !noundef !117
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
  %112 = load i16, ptr %4, align 2, !tbaa !154
  br label %113

113:                                              ; preds = %111, %98, %103, %108, %104, %105
  %114 = phi i16 [ 93, %105 ], [ 93, %104 ], [ %112, %111 ], [ 62, %108 ], [ %99, %103 ], [ %99, %98 ]
  %115 = phi i32 [ %107, %105 ], [ 1, %104 ], [ 0, %111 ], [ 0, %108 ], [ 0, %103 ], [ 0, %98 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %114) #14
          to label %116 unwind label %22

116:                                              ; preds = %113
  %117 = load i16, ptr %5, align 2, !tbaa !154
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %117) #14
          to label %120 unwind label %22

120:                                              ; preds = %119
  store i16 0, ptr %5, align 2, !tbaa !154
  br label %121

121:                                              ; preds = %120, %116, %126
  %122 = phi i8 [ %100, %120 ], [ %100, %116 ], [ 0, %126 ]
  %123 = phi i32 [ %115, %120 ], [ %115, %116 ], [ %76, %126 ]
  br label %10, !llvm.loop !309

124:                                              ; preds = %90, %80
  %125 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %136 unwind label %138

126:                                              ; preds = %90, %86
  invoke void @__cxa_end_catch()
          to label %121 unwind label %127

127:                                              ; preds = %126
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %136

129:                                              ; preds = %30, %31
  %130 = load ptr, ptr %0, align 8, !tbaa !87
  %131 = getelementptr inbounds ptr, ptr %130, i64 16
  %132 = load ptr, ptr %131, align 8
  invoke void %132(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %133 unwind label %134

133:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret void

134:                                              ; preds = %129
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %136

136:                                              ; preds = %74, %127, %124, %134
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %128, %127 ], [ %125, %124 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  resume { ptr, i32 } %137

138:                                              ; preds = %124
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %0, align 8, !tbaa !311
  %6 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !313
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 !prof !314 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  tail call void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #2 comdat align 2 !prof !314 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) #14
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = load i8, ptr %0, align 8, !tbaa !311, !range !131, !noundef !117
  %5 = icmp ne i8 %4, 0
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %5) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712WFXMLScanner15resolveSystemIdEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 !prof !86 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712WFXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(824) %0, i1 zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !154
  store i8 0, ptr %4, align 1, !tbaa !125
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #14
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext 35) #14
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) #14
  br i1 %12, label %13, label %80

13:                                               ; preds = %11
  store i8 1, ptr %4, align 1, !tbaa !125
  %14 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #14
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %80, label %16

16:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
  br label %80

17:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %18) #14
  %19 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %20 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(40) %19) #14
          to label %21 unwind label %23

21:                                               ; preds = %17
  br i1 %20, label %25, label %22

22:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226) #14
          to label %76 unwind label %23

23:                                               ; preds = %69, %49, %35, %34, %30, %28, %25, %22, %17
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %78

25:                                               ; preds = %21
  %26 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext 59) #14
          to label %27 unwind label %23

27:                                               ; preds = %25
  br i1 %26, label %30, label %28

28:                                               ; preds = %27
  %29 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %29, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %30 unwind label %23

30:                                               ; preds = %28, %27
  %31 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #14
          to label %32 unwind label %23

32:                                               ; preds = %30
  %33 = icmp eq i32 %9, %31
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %35 unwind label %23

35:                                               ; preds = %34, %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %39 = invoke noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef %38) #14
          to label %40 unwind label %23

40:                                               ; preds = %35
  br i1 %39, label %51, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %43 = load i8, ptr %42, align 2, !tbaa !213, !range !131, !noundef !117
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %46 = load i8, ptr %45, align 1, !range !131
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %76, label %49

49:                                               ; preds = %41
  %50 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 227, ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %76 unwind label %23

51:                                               ; preds = %40
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %53 = load ptr, ptr %52, align 8, !tbaa !217
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %57 = load i32, ptr %56, align 8, !tbaa !219
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !219
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %60 = load i32, ptr %59, align 4, !tbaa !218
  %61 = icmp ugt i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %64 = load ptr, ptr %63, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %60, ptr noundef nonnull %7, i32 noundef 15, i32 noundef 10, ptr noundef %64) #14
          to label %65 unwind label %67

65:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %66 unwind label %67

66:                                               ; preds = %65
  store i32 0, ptr %56, align 8, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  br label %69

67:                                               ; preds = %65, %62
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  br label %78

69:                                               ; preds = %66, %55, %51
  %70 = load ptr, ptr %36, align 8, !tbaa !108
  %71 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %72 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !153
  %73 = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef %71, ptr noundef %72) #14
          to label %74 unwind label %23

74:                                               ; preds = %69
  %75 = load i16, ptr %73, align 2, !tbaa !154
  store i16 %75, ptr %2, align 2, !tbaa !154
  store i8 1, ptr %4, align 1, !tbaa !125
  br label %76

76:                                               ; preds = %49, %41, %22, %74
  %77 = phi i32 [ 1, %74 ], [ 2, %22 ], [ 2, %41 ], [ 2, %49 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %80

78:                                               ; preds = %67, %23
  %79 = phi { ptr, i32 } [ %24, %23 ], [ %68, %67 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  resume { ptr, i32 } %79

80:                                               ; preds = %13, %16, %11, %76
  %81 = phi i32 [ %77, %76 ], [ 2, %11 ], [ 1, %16 ], [ 1, %13 ]
  ret i32 %81
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !315 {
  %2 = load ptr, ptr %0, align 8, !tbaa !307
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZNK11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !316 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !317

7:                                                ; preds = %3
  %8 = call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 153, i32 noundef 50, ptr noundef %2) #14
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712WFXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i16 signext %2, i1 zeroext %3) unnamed_addr #7 align 2 !prof !86 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret i32 2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712WFXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #5 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !319
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !320 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 !prof !86 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !296
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !291
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !297
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !288
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !290
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !322
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #14
  store ptr %3, ptr %11, align 8, !tbaa !322
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !288
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !290
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !297
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !323
  %23 = load i8, ptr %9, align 8, !tbaa !291, !range !131, !noundef !117
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !292
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %26) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #16
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !296
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !324

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !297
  %37 = load i32, ptr %4, align 8, !tbaa !288
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !153
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !325

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !326 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !296
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 93, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !296
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !288
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !87
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !297
  %21 = load i32, ptr %12, align 8, !tbaa !288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !297
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !153
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !327
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !290
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !276 {
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %0) #14
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !328 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !329
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !330 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !331

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !226
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !302
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !332

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #14
  %12 = load i32, ptr %0, align 8, !tbaa !226
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !228
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !226
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !226
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #14
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !333 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !334

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !154
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !335

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !154
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !336, !llvm.loop !337

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !226
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !302
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !338

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #14
  %21 = load i32, ptr %0, align 8, !tbaa !226
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !228
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !226
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !226
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !339, !range !131, !noundef !117
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !340 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 %3, ptr %4, align 8, !tbaa !339
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 !prof !314 {
  %3 = load i32, ptr %0, align 8, !tbaa !341
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !342
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %29, !prof !343

7:                                                ; preds = %2, %14
  %8 = phi i32 [ %15, %14 ], [ %3, %2 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !154
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %11) #14
  %13 = load i32, ptr %0, align 8, !tbaa !341
  br i1 %12, label %14, label %18, !prof !344

14:                                               ; preds = %7
  %15 = add i32 %13, 1
  store i32 %15, ptr %0, align 8, !tbaa !341
  %16 = load i32, ptr %4, align 4, !tbaa !342
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %7, label %18, !prof !345, !llvm.loop !346

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %13, %7 ], [ %15, %14 ]
  %20 = icmp eq i32 %3, %19
  br i1 %20, label %29, label %21, !prof !347

21:                                               ; preds = %18
  %22 = sub i32 %19, %3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !348
  %26 = add nsw i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !348
  %27 = zext i32 %3 to i64
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %27
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %28, i32 noundef %22) #14
  br label %29

29:                                               ; preds = %2, %21, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !349 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !251
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !257
  %8 = and i8 %7, 8
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #2 comdat align 2 !prof !314 {
  %4 = load i32, ptr %0, align 8, !tbaa !341
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !342
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %16, label %8, !prof !350

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !351, !range !131, !noundef !117
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %31, !prof !352

12:                                               ; preds = %8
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #14
  br i1 %13, label %14, label %31, !prof !352

14:                                               ; preds = %12
  %15 = load i32, ptr %0, align 8, !tbaa !341
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ %4, %3 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !154
  %21 = icmp eq i16 %20, %1
  br i1 %21, label %31, label %22, !prof !353

22:                                               ; preds = %16
  %23 = add i32 %17, 1
  store i32 %23, ptr %0, align 8, !tbaa !341
  store i16 %20, ptr %2, align 2, !tbaa !154
  %24 = and i16 %20, -8368
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26, !prof !354

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !348
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !348
  br label %31

30:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false) #14
  br label %31

31:                                               ; preds = %26, %30, %16, %12, %8
  %32 = phi i1 [ false, %8 ], [ false, %12 ], [ false, %16 ], [ true, %30 ], [ true, %26 ]
  ret i1 %32
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !355

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !170
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !170
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !173
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !87
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !172
  %21 = load i32, ptr %12, align 8, !tbaa !173
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !356

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !172
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !153
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !357, !llvm.loop !358
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !86 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !359
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !241
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !360
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !244
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !243
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !87
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !244
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !244
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !153
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !361
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !359, !range !131, !noundef !117
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
  %14 = load ptr, ptr %10, align 8, !tbaa !244
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !87
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(33) %16) #16
  %22 = load i32, ptr %6, align 4, !tbaa !241
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !362

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !243
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !244
  %33 = load ptr, ptr %30, align 8, !tbaa !87
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !241
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !359, !range !131, !noundef !117
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !244
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !153
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !87
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(33) %25) #16
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !244
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !86 {
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
  %12 = load i8, ptr %6, align 8, !tbaa !359, !range !131, !noundef !117
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !244
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !87
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(33) %17) #16
  %23 = load ptr, ptr %7, align 8, !tbaa !244
  %24 = load i32, ptr %2, align 4, !tbaa !241
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !153
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !363
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !359, !range !131, !noundef !117
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !244
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !87
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(33) %22) #16
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
  %43 = load ptr, ptr %42, align 8, !tbaa !244
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !244
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !244
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !153
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !153
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !364

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !153
  store i32 %31, ptr %3, align 4, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !241
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !359, !range !131, !noundef !117
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !244
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !87
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(33) %15) #16
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !359, !range !131, !noundef !117
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
  %14 = load ptr, ptr %10, align 8, !tbaa !244
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !87
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(33) %16) #16
  %22 = load i32, ptr %6, align 4, !tbaa !241
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !365

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !243
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !244
  %33 = load ptr, ptr %30, align 8, !tbaa !87
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !188
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.4, i32 noundef 99, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !188
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !192
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !87
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !191
  %21 = load i32, ptr %12, align 8, !tbaa !192
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !191
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !153
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !366
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !367 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !173
  %8 = load ptr, ptr %0, align 8, !tbaa !170
  %9 = load ptr, ptr %5, align 8, !tbaa !87
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !132
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !172
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !368

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !174
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  %23 = load ptr, ptr %20, align 8, !tbaa !87
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !369

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !153
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !370, !llvm.loop !371

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !196 {
  %5 = load i16, ptr %2, align 2, !tbaa !154
  store i16 %5, ptr %0, align 8, !tbaa !198
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !372
  %7 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !173
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !356

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %8

7:                                                ; preds = %27, %1
  ret void

8:                                                ; preds = %5, %27
  %9 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %10 = phi i64 [ 0, %5 ], [ %31, %27 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !172
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15, !prof !373

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %8 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !372
  %19 = load ptr, ptr %0, align 8, !tbaa !170
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %16) #14
  %23 = icmp eq ptr %18, null
  br i1 %23, label %24, label %15, !prof !374, !llvm.loop !375

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 8, !tbaa !172
  %26 = load i32, ptr %2, align 8, !tbaa !173
  br label %27

27:                                               ; preds = %24, %8
  %28 = phi i32 [ %26, %24 ], [ %9, %8 ]
  %29 = phi ptr [ %25, %24 ], [ %11, %8 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 %10
  store ptr null, ptr %30, align 8, !tbaa !153
  %31 = add nuw nsw i64 %10, 1
  %32 = zext i32 %28 to i64
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %8, label %7, !prof !376, !llvm.loop !377
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !188
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = load ptr, ptr %2, align 8, !tbaa !87
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !191
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !87
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !194
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !192
  %8 = load ptr, ptr %0, align 8, !tbaa !188
  %9 = load ptr, ptr %5, align 8, !tbaa !87
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !132
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !191
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !195
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !245
  %23 = load ptr, ptr %20, align 8, !tbaa !87
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !153
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !378

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !360
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !243
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !87
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !153
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !244
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !153
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !153
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !379

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !243
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !244
  %49 = load ptr, ptr %46, align 8, !tbaa !87
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !244
  store i32 %12, ptr %6, align 8, !tbaa !360
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !192
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !188
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !87
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !188
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !191
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !191
  store i32 %5, ptr %3, align 8, !tbaa !192
  %23 = load ptr, ptr %0, align 8, !tbaa !188
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !191
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !153
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !220
  %38 = load ptr, ptr %18, align 8, !tbaa !195
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !245
  %41 = load ptr, ptr %0, align 8, !tbaa !188
  %42 = load ptr, ptr %38, align 8, !tbaa !87
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !153
  store ptr %48, ptr %36, align 8, !tbaa !220
  store ptr %35, ptr %47, align 8, !tbaa !153
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !380

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !192
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !381

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_14XMLElementDeclEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !86 {
  store ptr %2, ptr %0, align 8, !tbaa !222
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !220
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !245
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !382
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !382
  store ptr null, ptr %0, align 8, !tbaa !382
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !382
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !384
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !87
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !382
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !384
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !276 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !247
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !385
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !386

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !269
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !87
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !247
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !153
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !270
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !153
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !153
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !387

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !269
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !270
  %49 = load ptr, ptr %46, align 8, !tbaa !87
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !270
  store i32 %12, ptr %6, align 8, !tbaa !385
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !277 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !178
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !179
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !388

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !87
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #14
  %22 = load i32, ptr %3, align 4, !tbaa !178
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !180
  br i1 %23, label %26, label %32, !prof !389

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !181
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !87
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #14
  store ptr %21, ptr %28, align 8, !tbaa !180
  store i32 %13, ptr %6, align 8, !tbaa !179
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !132
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !132
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !178
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !390, !llvm.loop !391

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !184
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !185
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !187
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !87
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #14
  %22 = load i32, ptr %3, align 4, !tbaa !184
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !187
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !186
  %31 = load ptr, ptr %28, align 8, !tbaa !87
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #14
  store ptr %21, ptr %29, align 8, !tbaa !186
  store i32 %13, ptr %6, align 8, !tbaa !185
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !186
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !153
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !153
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !392

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !288
  %9 = load ptr, ptr %0, align 8, !tbaa !296
  %10 = load ptr, ptr %6, align 8, !tbaa !87
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !132
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !297
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !322
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !294
  %24 = load ptr, ptr %21, align 8, !tbaa !87
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23) #14
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !295
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !153
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !393

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %28 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.4", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !288
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !296
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !87
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %14 = load ptr, ptr %0, align 8, !tbaa !296
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !297
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %23, ptr %21, align 8, !tbaa !297
  store i32 %6, ptr %3, align 8, !tbaa !288
  %24 = load ptr, ptr %0, align 8, !tbaa !296
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #14
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !297
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !153
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !323
  %39 = load ptr, ptr %19, align 8, !tbaa !322
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !294
  %42 = load ptr, ptr %0, align 8, !tbaa !296
  %43 = load ptr, ptr %39, align 8, !tbaa !87
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #14
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !153
  store ptr %49, ptr %37, align 8, !tbaa !323
  store ptr %36, ptr %48, align 8, !tbaa !153
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !394

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !288
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !395

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !288
  %9 = load ptr, ptr %0, align 8, !tbaa !296
  %10 = load ptr, ptr %6, align 8, !tbaa !87
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !132
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !297
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !295
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !322
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !294
  %28 = load ptr, ptr %25, align 8, !tbaa !87
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #14
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !153
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !396

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 !prof !86 {
  store ptr %3, ptr %0, align 8, !tbaa !292
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !323
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !294
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !295
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !397
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !399
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !397
  store ptr null, ptr %0, align 8, !tbaa !397
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !397
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !399
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !87
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !397
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !399
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !173
  %8 = load ptr, ptr %0, align 8, !tbaa !170
  %9 = load ptr, ptr %5, align 8, !tbaa !87
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !132
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !172
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !174
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  %23 = load ptr, ptr %20, align 8, !tbaa !87
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !153
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !400

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { optsize }
attributes #15 = { noreturn }
attributes #16 = { nounwind optsize }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!85}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!36 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!37 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!38 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, i64 2}
!39 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!40 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 2}
!41 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 12}
!42 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj, i64 46}
!43 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, ptr @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_, i64 45}
!44 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItED2Ev, ptr @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv, i64 2}
!45 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!46 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 612}
!47 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, i64 612}
!48 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!52 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!53 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 10}
!54 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj, ptr @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj, i64 833040}
!55 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 201775}
!56 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 201775}
!57 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1025276}
!58 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 1025276}
!59 = !{ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, ptr @_ZN11xercesc_2_75QName9getPrefixEv, i64 200913}
!60 = !{ptr @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv, i64 1}
!61 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!62 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!63 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!64 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!65 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!66 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!67 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv, i64 4539474}
!68 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!69 = !{ptr @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, i64 2534293}
!70 = !{ptr @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, i64 2534293}
!71 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!72 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj, i64 917}
!73 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!74 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!75 = !{ptr @_ZN11xercesc_2_77XMLAttrD2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!76 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!77 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!78 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!79 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt, i64 41950389}
!80 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 596891}
!81 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2493}
!82 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1019518}
!83 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!84 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"vtable pointer", !89, i64 0}
!89 = !{!"Simple C++ TBAA"}
!90 = !{!91, !97, i64 776}
!91 = !{!"_ZTSN11xercesc_2_712WFXMLScannerE", !92, i64 0, !97, i64 776, !98, i64 784, !98, i64 792, !98, i64 800, !98, i64 808, !98, i64 816}
!92 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !93, i64 0, !94, i64 8, !96, i64 16, !96, i64 17, !96, i64 18, !96, i64 19, !96, i64 20, !96, i64 21, !96, i64 22, !96, i64 23, !96, i64 24, !96, i64 25, !96, i64 26, !96, i64 27, !96, i64 28, !96, i64 29, !96, i64 30, !96, i64 31, !96, i64 32, !96, i64 33, !96, i64 34, !96, i64 35, !96, i64 36, !96, i64 37, !96, i64 38, !97, i64 40, !97, i64 44, !97, i64 48, !97, i64 52, !97, i64 56, !97, i64 60, !97, i64 64, !97, i64 68, !98, i64 72, !97, i64 80, !97, i64 84, !97, i64 88, !97, i64 92, !97, i64 96, !98, i64 104, !98, i64 112, !98, i64 120, !98, i64 128, !98, i64 136, !98, i64 144, !98, i64 152, !98, i64 160, !98, i64 168, !96, i64 176, !99, i64 184, !98, i64 264, !102, i64 272, !98, i64 280, !98, i64 288, !98, i64 296, !98, i64 304, !98, i64 312, !98, i64 320, !98, i64 328, !98, i64 336, !98, i64 344, !101, i64 352, !98, i64 360, !103, i64 368, !104, i64 392, !104, i64 432, !104, i64 472, !104, i64 512, !104, i64 552, !104, i64 592, !104, i64 632, !105, i64 672}
!93 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!94 = !{!"long", !95, i64 0}
!95 = !{!"omnipotent char", !89, i64 0}
!96 = !{!"bool", !95, i64 0}
!97 = !{!"int", !95, i64 0}
!98 = !{!"any pointer", !95, i64 0}
!99 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !100, i64 0, !98, i64 8, !98, i64 16, !98, i64 24, !98, i64 32, !97, i64 40, !98, i64 48, !96, i64 56, !101, i64 60, !96, i64 64, !98, i64 72}
!100 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!101 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !95, i64 0}
!102 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !95, i64 0}
!103 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !97, i64 0, !98, i64 8, !98, i64 16}
!104 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !97, i64 0, !97, i64 4, !97, i64 8, !96, i64 12, !98, i64 16, !98, i64 24, !98, i64 32}
!105 = !{!"_ZTSN11xercesc_2_79ElemStackE", !97, i64 0, !97, i64 4, !106, i64 8, !98, i64 48, !97, i64 56, !97, i64 60, !97, i64 64, !97, i64 68, !97, i64 72, !97, i64 76, !97, i64 80, !98, i64 88, !98, i64 96}
!106 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !107, i64 0, !98, i64 8, !98, i64 16, !98, i64 24, !97, i64 32, !97, i64 36}
!107 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!108 = !{!91, !98, i64 792}
!109 = !{!91, !98, i64 800}
!110 = !{!91, !98, i64 808}
!111 = !{!91, !98, i64 816}
!112 = !{!91, !98, i64 784}
!113 = !{!114, !98, i64 0}
!114 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_12WFXMLScannerEEE", !98, i64 0, !95, i64 8}
!115 = !{!114, !95, i64 8}
!116 = !{!92, !98, i64 360}
!117 = !{}
!118 = !{!92, !97, i64 96}
!119 = !{!92, !98, i64 120}
!120 = !{!92, !96, i64 21}
!121 = !{!"function_entry_count", i64 3}
!122 = !{!123, !98, i64 0}
!123 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEE", !98, i64 0, !95, i64 8}
!124 = !{!123, !95, i64 8}
!125 = !{!96, !96, i64 0}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!129, !98, i64 0}
!129 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !98, i64 0, !97, i64 8, !97, i64 12, !97, i64 16, !98, i64 24, !98, i64 32, !97, i64 40, !97, i64 44, !96, i64 48, !96, i64 49, !96, i64 50, !97, i64 52, !98, i64 56, !97, i64 64, !98, i64 72, !97, i64 80, !97, i64 84}
!130 = !{!92, !96, i64 18}
!131 = !{i8 0, i8 2}
!132 = !{!97, !97, i64 0}
!133 = distinct !{!133, !127}
!134 = !{!135, !136, i64 8}
!135 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !136, i64 8, !98, i64 16, !97, i64 24, !98, i64 32, !98, i64 40}
!136 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !95, i64 0}
!137 = !{!135, !98, i64 32}
!138 = !{!"branch_weights", i32 1, i32 4}
!139 = distinct !{!139, !127}
!140 = !{!141, !98, i64 0}
!141 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !98, i64 0, !97, i64 8}
!142 = !{!"function_entry_count", i64 2194501}
!143 = !{!105, !97, i64 60}
!144 = !{!"function_entry_count", i64 1668291}
!145 = !{!146, !98, i64 16}
!146 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !107, i64 0, !98, i64 8, !98, i64 16, !147, i64 24, !97, i64 28, !96, i64 32}
!147 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !95, i64 0}
!148 = !{!92, !97, i64 52}
!149 = !{!129, !97, i64 8}
!150 = !{!92, !98, i64 288}
!151 = !{!92, !98, i64 104}
!152 = distinct !{!152, !127}
!153 = !{!98, !98, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"short", !95, i64 0}
!156 = !{!92, !97, i64 60}
!157 = !{!92, !98, i64 312}
!158 = !{!92, !97, i64 64}
!159 = distinct !{!159, !127}
!160 = distinct !{!160, !127}
!161 = distinct !{!161, !127}
!162 = !{!92, !98, i64 112}
!163 = distinct !{!163, !127}
!164 = distinct !{!164, !127}
!165 = distinct !{!165, !127}
!166 = distinct !{!166, !127}
!167 = !{!"function_entry_count", i64 4926602}
!168 = !{!99, !98, i64 16}
!169 = !{!"function_entry_count", i64 2}
!170 = !{!171, !98, i64 0}
!171 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfItEE", !98, i64 0, !98, i64 8, !97, i64 16, !98, i64 24}
!172 = !{!171, !98, i64 8}
!173 = !{!171, !97, i64 16}
!174 = !{!171, !98, i64 24}
!175 = !{!"function_entry_count", i64 12}
!176 = !{!177, !96, i64 0}
!177 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !96, i64 0, !97, i64 4, !97, i64 8, !98, i64 16, !98, i64 24}
!178 = !{!177, !97, i64 4}
!179 = !{!177, !97, i64 8}
!180 = !{!177, !98, i64 16}
!181 = !{!177, !98, i64 24}
!182 = !{!183, !96, i64 0}
!183 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEE", !96, i64 0, !97, i64 4, !97, i64 8, !98, i64 16, !98, i64 24}
!184 = !{!183, !97, i64 4}
!185 = !{!183, !97, i64 8}
!186 = !{!183, !98, i64 16}
!187 = !{!183, !98, i64 24}
!188 = !{!189, !98, i64 0}
!189 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEE", !98, i64 0, !96, i64 8, !98, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !98, i64 40}
!190 = !{!189, !96, i64 8}
!191 = !{!189, !98, i64 16}
!192 = !{!189, !97, i64 24}
!193 = !{!189, !97, i64 28}
!194 = !{!189, !97, i64 32}
!195 = !{!189, !98, i64 40}
!196 = !{!"function_entry_count", i64 46}
!197 = !{!"branch_weights", i32 47, i32 1}
!198 = !{!199, !155, i64 0}
!199 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemItEE", !155, i64 0, !98, i64 8, !98, i64 16}
!200 = !{!199, !98, i64 16}
!201 = !{!"function_entry_count", i64 1231717351}
!202 = !{!"branch_weights", i32 621, i32 -1469098093}
!203 = !{!"branch_weights", i32 408901017, i32 1}
!204 = !{!"branch_weights", i32 267, i32 4}
!205 = !{!"branch_weights", i32 156, i32 112}
!206 = !{!"branch_weights", i32 1, i32 112}
!207 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!208 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!209 = distinct !{!209, !127}
!210 = !{!92, !98, i64 136}
!211 = !{!92, !98, i64 144}
!212 = !{!92, !97, i64 56}
!213 = !{!92, !96, i64 22}
!214 = !{!92, !97, i64 40}
!215 = !{!92, !96, i64 23}
!216 = !{!92, !96, i64 17}
!217 = !{!92, !98, i64 344}
!218 = !{!92, !97, i64 44}
!219 = !{!92, !97, i64 48}
!220 = !{!221, !98, i64 8}
!221 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_14XMLElementDeclEEE", !98, i64 0, !98, i64 8, !98, i64 16}
!222 = !{!221, !98, i64 0}
!223 = distinct !{!223, !127}
!224 = distinct !{!224, !127}
!225 = !{!"function_entry_count", i64 2728090}
!226 = !{!104, !97, i64 0}
!227 = !{!"function_entry_count", i64 10769804}
!228 = !{!104, !98, i64 32}
!229 = !{!"function_entry_count", i64 3529098}
!230 = !{!"function_entry_count", i64 8985736}
!231 = distinct !{!231, !127}
!232 = !{!"function_entry_count", i64 680084}
!233 = !{!105, !98, i64 48}
!234 = !{!129, !97, i64 64}
!235 = !{!"function_entry_count", i64 680336}
!236 = !{!"function_entry_count", i64 833744}
!237 = !{!"function_entry_count", i64 211020}
!238 = !{!239, !98, i64 24}
!239 = !{!"_ZTSN11xercesc_2_75QNameE", !107, i64 0, !97, i64 8, !97, i64 12, !97, i64 16, !97, i64 20, !98, i64 24, !98, i64 32, !98, i64 40, !98, i64 48}
!240 = !{!"function_entry_count", i64 612}
!241 = !{!242, !97, i64 12}
!242 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE", !96, i64 8, !97, i64 12, !97, i64 16, !98, i64 24, !98, i64 32}
!243 = !{!242, !98, i64 32}
!244 = !{!242, !98, i64 24}
!245 = !{!221, !98, i64 16}
!246 = !{!"function_entry_count", i64 190440}
!247 = !{!248, !97, i64 12}
!248 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !96, i64 8, !97, i64 12, !97, i64 16, !98, i64 24, !98, i64 32}
!249 = !{!"function_entry_count", i64 7478295}
!250 = !{!"function_entry_count", i64 5190970}
!251 = !{!252, !98, i64 163968}
!252 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !97, i64 0, !95, i64 4, !97, i64 32772, !95, i64 32776, !95, i64 49160, !94, i64 114696, !94, i64 114704, !253, i64 114712, !98, i64 114720, !96, i64 114728, !96, i64 114729, !98, i64 114736, !97, i64 114744, !95, i64 114748, !97, i64 163900, !97, i64 163904, !254, i64 163908, !96, i64 163912, !255, i64 163916, !97, i64 163920, !96, i64 163924, !96, i64 163925, !98, i64 163928, !98, i64 163936, !96, i64 163944, !96, i64 163945, !98, i64 163952, !256, i64 163960, !98, i64 163968, !96, i64 163976, !101, i64 163980, !98, i64 163984}
!253 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !95, i64 0}
!254 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !95, i64 0}
!255 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !95, i64 0}
!256 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !95, i64 0}
!257 = !{!95, !95, i64 0}
!258 = !{!"function_entry_count", i64 1025888}
!259 = !{!"function_entry_count", i64 4646679}
!260 = !{!"branch_weights", i32 1, i32 4646680}
!261 = !{!"branch_weights", i32 1216534, i32 3430147}
!262 = !{!"branch_weights", i32 1, i32 3430146}
!263 = !{!"branch_weights", i32 3430146, i32 42249130}
!264 = distinct !{!264, !127}
!265 = !{!"function_entry_count", i64 832914}
!266 = !{!"branch_weights", i32 832915, i32 1}
!267 = !{!"function_entry_count", i64 201935}
!268 = !{!"branch_weights", i32 201936, i32 1}
!269 = !{!248, !98, i64 32}
!270 = !{!248, !98, i64 24}
!271 = !{!"function_entry_count", i64 159625}
!272 = !{!273, !98, i64 24}
!273 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !96, i64 0, !274, i64 4, !97, i64 8, !98, i64 16, !98, i64 24, !98, i64 32, !98, i64 40, !96, i64 48}
!274 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !95, i64 0}
!275 = distinct !{!275, !127}
!276 = !{!"function_entry_count", i64 10}
!277 = !{!"function_entry_count", i64 833040}
!278 = !{!"function_entry_count", i64 201775}
!279 = !{!273, !274, i64 4}
!280 = !{!273, !96, i64 48}
!281 = !{!273, !98, i64 40}
!282 = !{!273, !96, i64 0}
!283 = !{!"function_entry_count", i64 1025276}
!284 = !{!"function_entry_count", i64 200913}
!285 = !{!"function_entry_count", i64 514}
!286 = !{!"branch_weights", i32 1, i32 515}
!287 = !{!"function_entry_count", i64 360316}
!288 = !{!289, !97, i64 24}
!289 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !98, i64 0, !96, i64 8, !98, i64 16, !97, i64 24, !97, i64 28, !98, i64 32}
!290 = !{!289, !97, i64 28}
!291 = !{!289, !96, i64 8}
!292 = !{!293, !98, i64 0}
!293 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !98, i64 0, !98, i64 8, !98, i64 16, !97, i64 24}
!294 = !{!293, !98, i64 16}
!295 = !{!293, !97, i64 24}
!296 = !{!289, !98, i64 0}
!297 = !{!289, !98, i64 16}
!298 = !{!"function_entry_count", i64 833461}
!299 = !{!"function_entry_count", i64 695}
!300 = !{!"function_entry_count", i64 3115354}
!301 = !{!"function_entry_count", i64 7992849}
!302 = !{!104, !97, i64 4}
!303 = !{!"branch_weights", i32 1, i32 7992850}
!304 = !{!"function_entry_count", i64 379609}
!305 = !{!306, !98, i64 8}
!306 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !98, i64 0, !98, i64 8}
!307 = !{!306, !98, i64 0}
!308 = !{!"function_entry_count", i64 4}
!309 = distinct !{!309, !127}
!310 = !{!"function_entry_count", i64 4539474}
!311 = !{!312, !96, i64 0}
!312 = !{!"_ZTSN11xercesc_2_715ThrowEOEJanitorE", !96, i64 0, !98, i64 8}
!313 = !{!312, !98, i64 8}
!314 = !{!"function_entry_count", i64 2534293}
!315 = !{!"function_entry_count", i64 379607}
!316 = !{!"function_entry_count", i64 917}
!317 = !{!"branch_weights", i32 1, i32 918}
!318 = !{!135, !98, i64 40}
!319 = !{!252, !97, i64 163904}
!320 = !{!"function_entry_count", i64 2192223}
!321 = !{!239, !98, i64 32}
!322 = !{!289, !98, i64 32}
!323 = !{!293, !98, i64 8}
!324 = distinct !{!324, !127}
!325 = distinct !{!325, !127}
!326 = !{!"function_entry_count", i64 5836268}
!327 = distinct !{!327, !127}
!328 = !{!"function_entry_count", i64 6553673}
!329 = !{!239, !97, i64 20}
!330 = !{!"function_entry_count", i64 2718768}
!331 = !{!"branch_weights", i32 1, i32 2718769}
!332 = !{!"branch_weights", i32 2718765, i32 5}
!333 = !{!"function_entry_count", i64 789922}
!334 = !{!"branch_weights", i32 1, i32 789923}
!335 = !{!"branch_weights", i32 285, i32 789639}
!336 = !{!"branch_weights", i32 789639, i32 41628304}
!337 = distinct !{!337, !127}
!338 = !{!"branch_weights", i32 789637, i32 3}
!339 = !{!99, !96, i64 56}
!340 = !{!"function_entry_count", i64 9078948}
!341 = !{!252, !97, i64 0}
!342 = !{!252, !97, i64 32772}
!343 = !{!"branch_weights", i32 2493, i32 1}
!344 = !{!"branch_weights", i32 39432941, i32 2531801}
!345 = !{!"branch_weights", i32 41962248, i32 2493}
!346 = distinct !{!346, !127}
!347 = !{!"branch_weights", i32 1641493687, i32 505989961}
!348 = !{!252, !94, i64 114696}
!349 = !{!"function_entry_count", i64 41964740}
!350 = !{!"branch_weights", i32 2531801, i32 2494}
!351 = !{!252, !96, i64 114729}
!352 = !{!"branch_weights", i32 2494, i32 1}
!353 = !{!"branch_weights", i32 1512650, i32 1021645}
!354 = !{!"branch_weights", i32 1019521, i32 2125}
!355 = !{!"branch_weights", i32 1, i32 3}
!356 = !{!"branch_weights", i32 1, i32 191}
!357 = !{!"branch_weights", i32 191, i32 2881}
!358 = distinct !{!358, !127}
!359 = !{!242, !96, i64 8}
!360 = !{!242, !97, i64 16}
!361 = distinct !{!361, !127}
!362 = distinct !{!362, !127}
!363 = distinct !{!363, !127}
!364 = distinct !{!364, !127}
!365 = distinct !{!365, !127}
!366 = distinct !{!366, !127}
!367 = !{!"function_entry_count", i64 963}
!368 = !{!"branch_weights", i32 1, i32 187}
!369 = !{!"branch_weights", i32 918, i32 335}
!370 = !{!"branch_weights", i32 187, i32 4821}
!371 = distinct !{!371, !127}
!372 = !{!199, !98, i64 8}
!373 = !{!"branch_weights", i32 1, i32 47}
!374 = !{!"branch_weights", i32 47, i32 0}
!375 = distinct !{!375, !127}
!376 = !{!"branch_weights", i32 2881, i32 191}
!377 = distinct !{!377, !127}
!378 = distinct !{!378, !127}
!379 = distinct !{!379, !127}
!380 = distinct !{!380, !127}
!381 = distinct !{!381, !127}
!382 = !{!383, !98, i64 0}
!383 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEEE", !98, i64 0, !98, i64 8}
!384 = !{!383, !98, i64 8}
!385 = !{!248, !97, i64 16}
!386 = !{!"branch_weights", i32 1, i32 11}
!387 = distinct !{!387, !127}
!388 = !{!"branch_weights", i32 18, i32 833024}
!389 = !{!"branch_weights", i32 1, i32 143}
!390 = !{!"branch_weights", i32 2177, i32 143}
!391 = distinct !{!391, !127}
!392 = distinct !{!392, !127}
!393 = distinct !{!393, !127}
!394 = distinct !{!394, !127}
!395 = distinct !{!395, !127}
!396 = distinct !{!396, !127}
!397 = !{!398, !98, i64 0}
!398 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEE", !98, i64 0, !98, i64 8}
!399 = !{!398, !98, i64 8}
!400 = distinct !{!400, !127}
