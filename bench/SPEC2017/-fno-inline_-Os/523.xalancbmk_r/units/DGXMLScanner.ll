; ModuleID = 'DGXMLScanner.cpp'
source_filename = "DGXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::DGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", ptr, ptr, ptr, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::JanitorMemFunCall.0" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::DTDScanner" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::Janitor.1" = type { ptr }
%"class.xercesc_2_7::Janitor.2" = type { ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::ThrowEOEJanitor" = type { i8, ptr }
%"class.xercesc_2_7::NameIdPool.3" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem.5" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.6" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.7" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEED2Ev = comdat any

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

$_ZN11xercesc_2_79ReaderMgr12skipPastCharEt = comdat any

$_ZN11xercesc_2_79ElemStack13getCurrentURIEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt = comdat any

$_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi = comdat any

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

$_ZNK11xercesc_2_79XMLBuffer7isEmptyEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_712XMLValidator16checkRootElementEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_77XMLAttr12setSpecifiedEb = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZNK11xercesc_2_77XMLAttr9getPrefixEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner22resetValidationContextEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjED2Ev = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef10isExternalEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZNK11xercesc_2_79XMLBuffer6getLenEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierD2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ElemStack19setReferenceEscapedEv = comdat any

$_ZNK11xercesc_2_79XMLReader9isXMLCharEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl10isExternalEv = comdat any

$_ZNK11xercesc_2_79XMLBufBid6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb = comdat any

$_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorD2Ev = comdat any

$_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl8getValueEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712DGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712DGXMLScanner7getNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

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

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv = comdat any

$_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb = comdat any

$_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt = comdat any

$_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj = comdat any

$_ZNK11xercesc_2_714DTDElementDecl6getKeyEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_ = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_ = comdat any

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

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_712DGXMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DGXMLScannerE, ptr @_ZN11xercesc_2_712DGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712DGXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712DGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712DGXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712DGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712DGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712DGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712DGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712DGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712DGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712DGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712DGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712DGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712DGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712DGXMLScanner15resolveSystemIdEPKtS2_] }, align 8
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
@.str = private unnamed_addr constant [17 x i8] c"DGXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZZN11xercesc_2_712DGXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTSN11xercesc_2_712DGXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712DGXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712DGXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DGXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1

@_ZN11xercesc_2_712DGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712DGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712DGXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DGXMLScannerD2Ev

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712DGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %6 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_712DGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(832) %0) #14
          to label %18 unwind label %8

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = call ptr @__cxa_begin_catch(ptr %14) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #15
          to label %24 unwind label %16

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

18:                                               ; preds = %4
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void

19:                                               ; preds = %16, %8
  %20 = phi { ptr, i32 } [ %9, %8 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  resume { ptr, i32 } %20

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #12
  unreachable

24:                                               ; preds = %13
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(832) %0) #3 align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !130
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !109
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %16) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #13
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !132
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %21) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #13
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !133
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %26) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #13
  br label %29

29:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #3 comdat align 2 !prof !108 {
  store ptr %1, ptr %0, align 8, !tbaa !134
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !136
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %3) #14
  %5 = load ptr, ptr %2, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8, ptr noundef %5, i1 noundef zeroext false) #14
          to label %6 unwind label %47

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  store ptr %4, ptr %7, align 8, !tbaa !112
  %8 = load ptr, ptr %2, align 8, !tbaa !137
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %8) #14
  invoke void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef null) #14
          to label %10 unwind label %49

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  store ptr %9, ptr %11, align 8, !tbaa !130
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %9) #14
  %12 = load ptr, ptr %2, align 8, !tbaa !137
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12) #14
  %14 = load ptr, ptr %2, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 29, i32 noundef 128, ptr noundef %14) #14
          to label %15 unwind label %51

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  store ptr %13, ptr %16, align 8, !tbaa !131
  %17 = load ptr, ptr %2, align 8, !tbaa !137
  %18 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %17) #14
  %19 = load ptr, ptr %2, align 8, !tbaa !137
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %19) #14
          to label %21 unwind label %53

21:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #14
          to label %22 unwind label %55

22:                                               ; preds = %21
  %23 = load ptr, ptr %2, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, i32 noundef 131, i1 noundef zeroext false, ptr noundef nonnull %20, ptr noundef %23) #14
          to label %24 unwind label %53

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  store ptr %18, ptr %25, align 8, !tbaa !132
  %26 = load ptr, ptr %2, align 8, !tbaa !137
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %26) #14
  %28 = load ptr, ptr %2, align 8, !tbaa !137
  %29 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %28) #14
          to label %30 unwind label %59

30:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #14
          to label %31 unwind label %61

31:                                               ; preds = %30
  %32 = load ptr, ptr %2, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, i32 noundef 7, i1 noundef zeroext false, ptr noundef nonnull %29, ptr noundef %32) #14
          to label %33 unwind label %59

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  store ptr %27, ptr %34, align 8, !tbaa !133
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %36 = load ptr, ptr %35, align 8, !tbaa !138
  %37 = icmp eq ptr %36, null
  br i1 %37, label %67, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %36, align 8, !tbaa !109
  %40 = getelementptr inbounds ptr, ptr %39, i64 12
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(40) %36) #14
  br i1 %42, label %69, label %43

43:                                               ; preds = %38
  %44 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %45 = load ptr, ptr %2, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull @.str, i32 noundef 1860, i32 noundef 44, ptr noundef %45) #14
          to label %46 unwind label %65

46:                                               ; preds = %43
  tail call void @__cxa_throw(ptr nonnull %44, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

47:                                               ; preds = %1
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  br label %70

49:                                               ; preds = %6
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #13
  br label %70

51:                                               ; preds = %10
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #13
  br label %70

53:                                               ; preds = %22, %15
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %57

55:                                               ; preds = %21
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #13
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi { ptr, i32 } [ %54, %53 ], [ %56, %55 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #13
  br label %70

59:                                               ; preds = %31, %24
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %63

61:                                               ; preds = %30
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #13
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi { ptr, i32 } [ %60, %59 ], [ %62, %61 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #13
  br label %70

65:                                               ; preds = %43
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %44) #11
  br label %70

67:                                               ; preds = %33
  %68 = load ptr, ptr %11, align 8, !tbaa !130
  store ptr %68, ptr %35, align 8, !tbaa !138
  br label %69

69:                                               ; preds = %38, %67
  ret void

70:                                               ; preds = %65, %63, %57, %51, %49, %47
  %71 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ], [ %58, %57 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ]
  resume { ptr, i32 } %71
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !134
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !136
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !136
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !109
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !139
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(832) %11) #14
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %9 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712DGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %10 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %10, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_712DGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(832) %0) #14
          to label %22 unwind label %12

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %14 = extractvalue { ptr, i32 } %13, 1
  %15 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = extractvalue { ptr, i32 } %13, 0
  %19 = call ptr @__cxa_begin_catch(ptr %18) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14
  invoke void @__cxa_rethrow() #15
          to label %28 unwind label %20

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %25

22:                                               ; preds = %8
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  ret void

23:                                               ; preds = %20, %12
  %24 = phi { ptr, i32 } [ %13, %12 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  resume { ptr, i32 } %24

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #12
  unreachable

28:                                               ; preds = %17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712DGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(832) %0) #14
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_712DGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(832) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(832) %0) unnamed_addr #3 align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(61) %3) #14
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(61) %0) local_unnamed_addr #3 comdat align 2 !prof !141 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(832) %0) unnamed_addr #3 align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_710DTDGrammar17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(61) %3) #14
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !145
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !109
  %9 = getelementptr inbounds ptr, ptr %8, i64 15
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %11 unwind label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !109
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
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #11
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %28
  %26 = call ptr @__cxa_begin_catch(ptr %21) #11
  call void @__cxa_end_catch() #11
  br label %27

27:                                               ; preds = %25, %104, %65, %68
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void

28:                                               ; preds = %19
  %29 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #11
  %30 = icmp eq i32 %22, %29
  br i1 %30, label %25, label %31

31:                                               ; preds = %28
  %32 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %33 = icmp eq i32 %22, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call ptr @__cxa_begin_catch(ptr %21) #11
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %36, align 1, !tbaa !147
  %37 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !109
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
          to label %95 unwind label %77

44:                                               ; preds = %31
  %45 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %46 = icmp eq i32 %22, %45
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = call ptr @__cxa_begin_catch(ptr %21) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #15
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
  %55 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(832) %0) #14
          to label %56 unwind label %19

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %58 = load i8, ptr %57, align 8, !tbaa !148, !range !149, !noundef !139
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
  %66 = load ptr, ptr %12, align 8, !tbaa !146
  %67 = icmp eq ptr %66, null
  br i1 %67, label %27, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !109
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
  %81 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %77
  %84 = call ptr @__cxa_begin_catch(ptr %79) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #15
          to label %120 unwind label %99

85:                                               ; preds = %34
  %86 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %35) #14
  %87 = icmp sgt i32 %86, 1
  %88 = load ptr, ptr %35, align 8, !tbaa !109
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
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %115 = insertvalue { ptr, i32 } poison, ptr %114, 0
  %116 = insertvalue { ptr, i32 } %115, i32 %113, 1
  resume { ptr, i32 } %116

117:                                              ; preds = %109, %99, %72
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  call void @__clang_call_terminate(ptr %119) #12
  unreachable

120:                                              ; preds = %83, %47
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #3 comdat align 2 !prof !150 {
  store ptr %1, ptr %0, align 8, !tbaa !151
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 1, ptr %2, align 1, !tbaa !154
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %6

6:                                                ; preds = %50, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %7 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
          to label %8 unwind label %14

8:                                                ; preds = %6
  switch i32 %7, label %40 [
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
  %11 = load ptr, ptr %0, align 8, !tbaa !109
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %10) #14
          to label %47 unwind label %14, !llvm.loop !155

14:                                               ; preds = %46, %41, %40, %38, %37, %36, %35, %31, %30, %9, %6
  %15 = phi i1 [ false, %9 ], [ true, %46 ], [ true, %41 ], [ true, %40 ], [ true, %38 ], [ true, %37 ], [ true, %36 ], [ true, %35 ], [ true, %31 ], [ true, %30 ], [ false, %6 ]
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %51

17:                                               ; preds = %8
  %18 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
          to label %21 unwind label %25

21:                                               ; preds = %19
  %22 = load ptr, ptr %20, align 8, !tbaa !157
  %23 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %22) #14
          to label %24 unwind label %25

24:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %27 unwind label %25

25:                                               ; preds = %24, %21, %19
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %51

27:                                               ; preds = %17, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %75

28:                                               ; preds = %8
  %29 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #14
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280) #14
          to label %31 unwind label %14

31:                                               ; preds = %30, %28
  %32 = load ptr, ptr %0, align 8, !tbaa !109
  %33 = getelementptr inbounds ptr, ptr %32, i64 11
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(832) %0) #14
          to label %41 unwind label %14

35:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %41 unwind label %14

36:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_712DGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
          to label %41 unwind label %14

37:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %41 unwind label %14

38:                                               ; preds = %8
  %39 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
          to label %41 unwind label %14

40:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 60) #14
          to label %41 unwind label %14

41:                                               ; preds = %40, %38, %37, %36, %35, %31
  %42 = load i32, ptr %3, align 4, !tbaa !159
  %43 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #14
          to label %44 unwind label %14

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, %43
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %47 unwind label %14

47:                                               ; preds = %44, %46, %9
  %48 = load i8, ptr %2, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %47, %72
  br label %6, !llvm.loop !160

51:                                               ; preds = %25, %14
  %52 = phi { ptr, i32 } [ %16, %14 ], [ %26, %25 ]
  %53 = phi i1 [ %15, %14 ], [ false, %25 ]
  %54 = extractvalue { ptr, i32 } %52, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %55 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = extractvalue { ptr, i32 } %52, 0
  %59 = call ptr @__cxa_begin_catch(ptr %58) #11
  br i1 %53, label %60, label %63

60:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %63 unwind label %61

61:                                               ; preds = %67, %60
  %62 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %76 unwind label %78

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %65 = load ptr, ptr %64, align 8, !tbaa !146
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %59) #14
  %69 = load ptr, ptr %65, align 8, !tbaa !109
  %70 = getelementptr inbounds ptr, ptr %69, i64 7
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 8 dereferenceable(72) %68) #14
          to label %72 unwind label %61

72:                                               ; preds = %63, %67
  call void @__cxa_end_catch()
  %73 = load i8, ptr %2, align 1, !tbaa !154
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %50

75:                                               ; preds = %72, %47, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret i1 true

76:                                               ; preds = %51, %61
  %77 = phi { ptr, i32 } [ %62, %61 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  resume { ptr, i32 } %77

78:                                               ; preds = %61
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #12
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !161
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
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !150 {
  %2 = load ptr, ptr %0, align 8, !tbaa !151
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !165

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !153
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !165

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !153
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !109
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !139
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
  tail call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %5 = alloca i8, align 1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #14
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 78, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #11
  br label %186

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
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
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = call ptr @__cxa_begin_catch(ptr %24) #11
  %30 = load ptr, ptr %18, align 8, !tbaa !146
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %29) #14
  %34 = load ptr, ptr %30, align 8, !tbaa !109
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
          to label %42 unwind label %191

39:                                               ; preds = %32, %28
  invoke void @__cxa_end_catch()
          to label %19 unwind label %40, !llvm.loop !166

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
  %48 = load ptr, ptr %0, align 8, !tbaa !109
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %47) #14
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
  br i1 %57, label %181, label %58

58:                                               ; preds = %55
  %59 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %56) #14
          to label %60 unwind label %64

60:                                               ; preds = %58
  %61 = load ptr, ptr %59, align 8, !tbaa !157
  %62 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %61) #14
          to label %63 unwind label %64

63:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %62, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %181 unwind label %64

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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 1, ptr %5, align 1, !tbaa !154
  switch i32 %20, label %117 [
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

73:                                               ; preds = %136, %132, %131, %123, %118, %117, %115, %114, %113, %112, %108, %72
  %74 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %75 = extractvalue { ptr, i32 } %74, 0
  %76 = extractvalue { ptr, i32 } %74, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %77

77:                                               ; preds = %22, %73, %64, %51, %42
  %78 = phi i32 [ %54, %51 ], [ %67, %64 ], [ %76, %73 ], [ %45, %42 ], [ %25, %22 ]
  %79 = phi ptr [ %53, %51 ], [ %66, %64 ], [ %75, %73 ], [ %44, %42 ], [ %24, %22 ]
  %80 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #11
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = call ptr @__cxa_begin_catch(ptr %79) #11
  call void @__cxa_end_catch() #11
  br label %181

84:                                               ; preds = %140, %46
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  br label %181

85:                                               ; preds = %77
  %86 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #11
  %87 = icmp eq i32 %78, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call ptr @__cxa_begin_catch(ptr %79) #11
  call void @__cxa_end_catch() #11
  br label %181

90:                                               ; preds = %85
  %91 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %92 = icmp eq i32 %78, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = call ptr @__cxa_begin_catch(ptr %79) #11
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %95, align 1, !tbaa !147
  %96 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %154

98:                                               ; preds = %93
  %99 = load ptr, ptr %94, align 8, !tbaa !109
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %164 unwind label %146

103:                                              ; preds = %90
  %104 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %105 = icmp eq i32 %78, %104
  br i1 %105, label %106, label %183

106:                                              ; preds = %103
  %107 = call ptr @__cxa_begin_catch(ptr %79) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  invoke void @__cxa_rethrow() #15
          to label %194 unwind label %141

108:                                              ; preds = %72, %69
  %109 = load ptr, ptr %0, align 8, !tbaa !109
  %110 = getelementptr inbounds ptr, ptr %109, i64 11
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr noundef nonnull align 8 dereferenceable(832) %0) #14
          to label %118 unwind label %73

112:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %118 unwind label %73

113:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_712DGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %118 unwind label %73

114:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %118 unwind label %73

115:                                              ; preds = %68
  %116 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %118 unwind label %73

117:                                              ; preds = %68
  invoke void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 60) #14
          to label %118 unwind label %73

118:                                              ; preds = %117, %115, %114, %113, %112, %108
  %119 = load i32, ptr %3, align 4, !tbaa !159
  %120 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %17) #14
          to label %121 unwind label %73

121:                                              ; preds = %118
  %122 = icmp eq i32 %119, %120
  br i1 %122, label %124, label %123

123:                                              ; preds = %121
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %124 unwind label %73

124:                                              ; preds = %123, %121
  %125 = load i8, ptr %5, align 1, !tbaa !154, !range !149, !noundef !139
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %129 = load i8, ptr %128, align 8, !tbaa !148, !range !149, !noundef !139
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %132 unwind label %73

132:                                              ; preds = %131, %127
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
          to label %133 unwind label %73

133:                                              ; preds = %132
  %134 = load ptr, ptr %18, align 8, !tbaa !146
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %134, align 8, !tbaa !109
  %138 = getelementptr inbounds ptr, ptr %137, i64 5
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(8) %134) #14
          to label %140 unwind label %73

140:                                              ; preds = %133, %136, %124
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %84

141:                                              ; preds = %106
  %142 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %143 unwind label %191

143:                                              ; preds = %141
  %144 = extractvalue { ptr, i32 } %142, 1
  %145 = extractvalue { ptr, i32 } %142, 0
  br label %183

146:                                              ; preds = %164, %162, %160, %98
  %147 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %148 = extractvalue { ptr, i32 } %147, 0
  %149 = extractvalue { ptr, i32 } %147, 1
  %150 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %146
  %153 = call ptr @__cxa_begin_catch(ptr %148) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  invoke void @__cxa_rethrow() #15
          to label %194 unwind label %168

154:                                              ; preds = %93
  %155 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  %156 = icmp sgt i32 %155, 1
  %157 = load ptr, ptr %94, align 8, !tbaa !109
  %158 = getelementptr inbounds ptr, ptr %157, i64 2
  %159 = load ptr, ptr %158, align 8
  br i1 %156, label %160, label %162

160:                                              ; preds = %154
  %161 = invoke noundef ptr %159(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %164 unwind label %146

162:                                              ; preds = %154
  %163 = invoke noundef ptr %159(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
          to label %164 unwind label %146

164:                                              ; preds = %162, %160, %98
  %165 = phi i32 [ 7, %98 ], [ 292, %160 ], [ 157, %162 ]
  %166 = phi ptr [ %102, %98 ], [ %161, %160 ], [ %163, %162 ]
  %167 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %94) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %165, ptr noundef %166, ptr noundef %167, ptr noundef null, ptr noundef null) #14
          to label %173 unwind label %146

168:                                              ; preds = %152
  %169 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %170 unwind label %191

170:                                              ; preds = %168
  %171 = extractvalue { ptr, i32 } %169, 1
  %172 = extractvalue { ptr, i32 } %169, 0
  br label %178

173:                                              ; preds = %164
  invoke void @__cxa_end_catch()
          to label %181 unwind label %174

174:                                              ; preds = %173
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = extractvalue { ptr, i32 } %175, 0
  %177 = extractvalue { ptr, i32 } %175, 1
  br label %183

178:                                              ; preds = %170, %146
  %179 = phi i32 [ %171, %170 ], [ %149, %146 ]
  %180 = phi ptr [ %172, %170 ], [ %148, %146 ]
  invoke void @__cxa_end_catch()
          to label %183 unwind label %191

181:                                              ; preds = %173, %55, %63, %88, %82, %84
  %182 = phi i1 [ true, %84 ], [ false, %82 ], [ false, %88 ], [ false, %63 ], [ false, %55 ], [ false, %173 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i1 %182

183:                                              ; preds = %174, %178, %143, %103
  %184 = phi i32 [ %144, %143 ], [ %78, %103 ], [ %177, %174 ], [ %179, %178 ]
  %185 = phi ptr [ %145, %143 ], [ %79, %103 ], [ %176, %174 ], [ %180, %178 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %186

186:                                              ; preds = %183, %12
  %187 = phi i32 [ %184, %183 ], [ %15, %12 ]
  %188 = phi ptr [ %185, %183 ], [ %14, %12 ]
  %189 = insertvalue { ptr, i32 } poison, ptr %188, 0
  %190 = insertvalue { ptr, i32 } %189, i32 %187, 1
  resume { ptr, i32 } %190

191:                                              ; preds = %178, %168, %141, %37
  %192 = landingpad { ptr, i32 }
          catch ptr null
  %193 = extractvalue { ptr, i32 } %192, 0
  call void @__clang_call_terminate(ptr %193) #12
  unreachable

194:                                              ; preds = %152, %106
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
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
declare noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !170
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  store i8 1, ptr %1, align 1, !tbaa !154
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 62) #14
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 77, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 2, !tbaa !175, !range !149, !noundef !139
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  br label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %21 = load i32, ptr %20, align 4, !tbaa !176
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  %24 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  %25 = load ptr, ptr %24, align 8, !tbaa !157
  %26 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %28 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %25) #14
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef %28) #14
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %25) #14
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %31, ptr noundef null, ptr noundef null, ptr noundef null) #14
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %27, i16 noundef zeroext 62) #14
  br label %136

32:                                               ; preds = %22
  %33 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !177
  %35 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %27) #14
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278) #14
  br label %38

38:                                               ; preds = %37, %32
  %39 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %27, i1 noundef zeroext false) #14
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %27, i16 noundef zeroext 62) #14
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %24, align 8, !tbaa !157
  %43 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %42) #14
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %44

44:                                               ; preds = %41, %38
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %46 = load i8, ptr %45, align 8, !tbaa !148, !range !149, !noundef !139
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %117, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 9
  %50 = load i8, ptr %49, align 1, !tbaa !178, !range !149, !noundef !139
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %24, align 8, !tbaa !157
  %54 = tail call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %53) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %58 = load ptr, ptr %57, align 8, !tbaa !138
  %59 = load ptr, ptr %24, align 8, !tbaa !157
  %60 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %59) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %58, i32 noundef 110, ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %61

61:                                               ; preds = %56, %52, %48
  %62 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 10
  %63 = load i8, ptr %62, align 2, !tbaa !179, !range !149, !noundef !139
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %24, align 8, !tbaa !157
  %67 = tail call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %66) #14
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %71 = load ptr, ptr %70, align 8, !tbaa !138
  %72 = load ptr, ptr %24, align 8, !tbaa !157
  %73 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %72) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %71, i32 noundef 113, ptr noundef %73, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %74

74:                                               ; preds = %69, %65, %61
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %76 = load ptr, ptr %75, align 8, !tbaa !138
  %77 = load ptr, ptr %24, align 8, !tbaa !157
  %78 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !180
  %80 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !181
  %82 = load ptr, ptr %76, align 8, !tbaa !109
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef i32 %84(ptr noundef nonnull align 8 dereferenceable(40) %76, ptr noundef %77, ptr noundef %79, i32 noundef %81) #14
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %117

87:                                               ; preds = %74
  %88 = load i32, ptr %80, align 8, !tbaa !181
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load ptr, ptr %75, align 8, !tbaa !138
  %92 = load ptr, ptr %24, align 8, !tbaa !157
  %93 = load ptr, ptr %92, align 8, !tbaa !109
  %94 = getelementptr inbounds ptr, ptr %93, i64 15
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(33) %92) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %91, i32 noundef 16, ptr noundef %96, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %117

97:                                               ; preds = %87
  %98 = icmp ult i32 %85, %88
  %99 = load ptr, ptr %75, align 8, !tbaa !138
  br i1 %98, label %106, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %24, align 8, !tbaa !157
  %102 = load ptr, ptr %101, align 8, !tbaa !109
  %103 = getelementptr inbounds ptr, ptr %102, i64 15
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(33) %101) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %99, i32 noundef 21, ptr noundef %105, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %117

106:                                              ; preds = %97
  %107 = load ptr, ptr %78, align 8, !tbaa !180
  %108 = zext nneg i32 %85 to i64
  %109 = getelementptr inbounds ptr, ptr %107, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !182
  %111 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %110) #14
  %112 = load ptr, ptr %24, align 8, !tbaa !157
  %113 = load ptr, ptr %112, align 8, !tbaa !109
  %114 = getelementptr inbounds ptr, ptr %113, i64 15
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(33) %112) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %99, i32 noundef 7, ptr noundef %111, ptr noundef %116, ptr noundef null, ptr noundef null) #14
  br label %117

117:                                              ; preds = %74, %100, %106, %90, %44
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %119 = load ptr, ptr %118, align 8, !tbaa !146
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %24, align 8, !tbaa !157
  %123 = load i8, ptr %14, align 2, !tbaa !175, !range !149, !noundef !139
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %122) #14
  %127 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %126) #14
  br label %128

128:                                              ; preds = %121, %125
  %129 = phi ptr [ %127, %125 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %121 ]
  %130 = load ptr, ptr %119, align 8, !tbaa !109
  %131 = getelementptr inbounds ptr, ptr %130, i64 6
  %132 = load ptr, ptr %131, align 8
  tail call void %132(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(33) %122, i32 noundef %23, i1 noundef zeroext %26, ptr noundef %129) #14
  br label %133

133:                                              ; preds = %128, %117
  %134 = xor i1 %26, true
  %135 = zext i1 %134 to i8
  store i8 %135, ptr %1, align 1, !tbaa !154
  br label %136

136:                                              ; preds = %133, %30
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i8 1, ptr %1, align 1, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 2, !tbaa !175, !range !149, !noundef !139
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  br i1 %7, label %12, label %10

10:                                               ; preds = %2
  %11 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %3) #14
  br i1 %11, label %22, label %14

12:                                               ; preds = %2
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %16 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #14
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183) #14
  br label %20

18:                                               ; preds = %14
  %19 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %20

20:                                               ; preds = %18, %17
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %21, i16 noundef zeroext 60) #14
  br label %383

22:                                               ; preds = %10, %12
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %24 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %23) #14
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %26 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %25) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %28 = load ptr, ptr %27, align 8, !tbaa !140
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %30 = load i32, ptr %29, align 4, !tbaa !176
  %31 = load ptr, ptr %28, align 8, !tbaa !109
  %32 = getelementptr inbounds ptr, ptr %31, i64 11
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef %30, ptr noundef null, ptr noundef %26, i32 noundef -2) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %22
  %37 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !131
  %39 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef %26) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %43 = load ptr, ptr %42, align 8, !tbaa !137
  %44 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %43) #14
  %45 = load i32, ptr %29, align 4, !tbaa !176
  %46 = load ptr, ptr %42, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %44, ptr noundef %26, i32 noundef %45, i32 noundef 1, ptr noundef %46) #14
          to label %49 unwind label %47

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %43) #13
  br label %381

49:                                               ; preds = %41
  %50 = load ptr, ptr %37, align 8, !tbaa !131
  %51 = call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull %44) #14
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %44, i32 noundef %51) #14
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %53 = load i8, ptr %52, align 8, !tbaa !148, !range !149, !noundef !139
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %81, label %63

55:                                               ; preds = %36
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %57 = load i8, ptr %56, align 8, !tbaa !148, !range !149, !noundef !139
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %81, label %64

59:                                               ; preds = %22
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %61 = load i8, ptr %60, align 8, !tbaa !148, !range !149, !noundef !139
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %81, label %64

63:                                               ; preds = %49
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %44, i32 noundef 5) #14
  br label %68

64:                                               ; preds = %55, %59
  %65 = phi ptr [ %34, %59 ], [ %39, %55 ]
  %66 = phi ptr [ %60, %59 ], [ %56, %55 ]
  %67 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %65) #14
  br i1 %67, label %73, label %68

68:                                               ; preds = %64, %63
  %69 = phi ptr [ %44, %63 ], [ %65, %64 ]
  %70 = phi ptr [ %52, %63 ], [ %66, %64 ]
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %72 = load ptr, ptr %71, align 8, !tbaa !138
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %72, i32 noundef 2, ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi ptr [ %65, %64 ], [ %69, %68 ]
  %75 = phi ptr [ %66, %64 ], [ %70, %68 ]
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %77 = load ptr, ptr %76, align 8, !tbaa !138
  %78 = load ptr, ptr %77, align 8, !tbaa !109
  %79 = getelementptr inbounds ptr, ptr %78, i64 9
  %80 = load ptr, ptr %79, align 8
  call void %80(ptr noundef nonnull align 8 dereferenceable(40) %77, ptr noundef nonnull %74) #14
  br label %81

81:                                               ; preds = %55, %59, %73, %49
  %82 = phi ptr [ %60, %59 ], [ %75, %73 ], [ %52, %49 ], [ %56, %55 ]
  %83 = phi ptr [ %34, %59 ], [ %74, %73 ], [ %44, %49 ], [ %39, %55 ]
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %85 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  %86 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull %83, i32 noundef %85) #14
  br i1 %24, label %87, label %112

87:                                               ; preds = %81
  %88 = load ptr, ptr %27, align 8, !tbaa !140
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %88, ptr %89, align 8, !tbaa !183
  %90 = load i8, ptr %82, align 8, !tbaa !148, !range !149, !noundef !139
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %94 = load ptr, ptr %93, align 8, !tbaa !184
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %26, ptr noundef nonnull %94) #14
  br i1 %97, label %101, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %100 = load ptr, ptr %99, align 8, !tbaa !138
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %100, i32 noundef 5) #14
  br label %101

101:                                              ; preds = %98, %96, %92
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %103 = load i8, ptr %102, align 1, !tbaa !185, !range !149, !noundef !139
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %107 = load ptr, ptr %106, align 8, !tbaa !138
  %108 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  %109 = call noundef zeroext i1 @_ZN11xercesc_2_712XMLValidator16checkRootElementEj(ptr noundef nonnull align 8 dereferenceable(40) %107, i32 noundef %108) #14
  br i1 %109, label %118, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %106, align 8, !tbaa !138
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %111, i32 noundef 5) #14
  br label %118

112:                                              ; preds = %81
  %113 = load i8, ptr %82, align 8, !tbaa !148, !range !149, !noundef !139
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  %117 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef %116, i1 noundef zeroext true) #14
  br label %118

118:                                              ; preds = %112, %115, %87, %110, %105, %101
  %119 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %84, i1 noundef zeroext false) #14
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %121 = load ptr, ptr %120, align 8, !tbaa !186
  %122 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %121) #14
  %123 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !187
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !187
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %129 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %131

131:                                              ; preds = %285, %118
  %132 = phi i32 [ %287, %285 ], [ 0, %118 ]
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %165, %131
  %135 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  br i1 %133, label %144, label %136

136:                                              ; preds = %134
  switch i16 %135, label %137 [
    i16 62, label %144
    i16 47, label %144
  ]

137:                                              ; preds = %136
  %138 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  %139 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %138, i16 noundef zeroext %135) #14
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %84, i1 noundef zeroext false) #14
  %142 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  br label %144

143:                                              ; preds = %137
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #14
  br label %144

144:                                              ; preds = %136, %136, %143, %140, %134
  %145 = phi i16 [ %142, %140 ], [ %135, %143 ], [ %135, %136 ], [ %135, %134 ], [ %135, %136 ]
  %146 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  %147 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %146, i16 noundef zeroext %145) #14
  br i1 %147, label %288, label %148

148:                                              ; preds = %144
  %149 = load i8, ptr %5, align 2, !tbaa !175, !range !149, !noundef !139
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %84, ptr noundef nonnull align 8 dereferenceable(40) %126, ptr noundef nonnull %3) #14
  br i1 %152, label %161, label %155

153:                                              ; preds = %148
  %154 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %84, ptr noundef nonnull align 8 dereferenceable(40) %126) #14
  br i1 %154, label %161, label %155

155:                                              ; preds = %151, %153
  %156 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %126) #14
  br i1 %156, label %157, label %158

157:                                              ; preds = %155
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  br label %160

158:                                              ; preds = %155
  %159 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %126) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %160

160:                                              ; preds = %158, %157
  call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %84, i16 noundef zeroext 62) #14
  br label %383

161:                                              ; preds = %151, %153
  %162 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false) #14
  br i1 %162, label %173, label %163

163:                                              ; preds = %161
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180) #14
  %164 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %84, ptr noundef nonnull @_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList) #14
  switch i16 %164, label %166 [
    i16 62, label %165
    i16 47, label %165
    i16 39, label %173
    i16 34, label %173
  ]

165:                                              ; preds = %163, %163, %288, %304
  br label %134, !llvm.loop !188

166:                                              ; preds = %163
  %167 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  %168 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %167, i16 noundef zeroext %164) #14
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = icmp eq i16 %164, 60
  br i1 %170, label %171, label %383

171:                                              ; preds = %169
  %172 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %172, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %383

173:                                              ; preds = %163, %163, %161, %166
  %174 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %126) #14
  %175 = call noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %83, ptr noundef %174) #14
  %176 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %84, i1 noundef zeroext false) #14
  %177 = call noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %175, ptr noundef %174, ptr noundef nonnull align 8 dereferenceable(40) %127) #14
  br i1 %177, label %187, label %178

178:                                              ; preds = %173
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199) #14
  %179 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %84, ptr noundef nonnull @_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList_0) #14
  switch i16 %179, label %180 [
    i16 62, label %187
    i16 47, label %187
  ]

180:                                              ; preds = %178
  %181 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  %182 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %181, i16 noundef zeroext %179) #14
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = icmp eq i16 %179, 60
  br i1 %184, label %185, label %383

185:                                              ; preds = %183
  %186 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %186, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %383

187:                                              ; preds = %178, %178, %180, %173
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %188 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %127) #14
  %189 = icmp ult i32 %132, %122
  br i1 %189, label %199, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %128, align 8, !tbaa !137
  %192 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %191) #14
  %193 = load ptr, ptr %128, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49) %192, ptr noundef %193) #14
          to label %194 unwind label %197

194:                                              ; preds = %190
  store ptr %192, ptr %4, align 8, !tbaa !182
  %195 = load ptr, ptr %120, align 8, !tbaa !186
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %195, ptr noundef nonnull %192) #14
  %196 = load ptr, ptr %4, align 8, !tbaa !182
  br label %202

197:                                              ; preds = %190
  %198 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %192, ptr noundef %191) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %381

199:                                              ; preds = %187
  %200 = load ptr, ptr %120, align 8, !tbaa !186
  %201 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %200, i32 noundef %132) #14
  store ptr %201, ptr %4, align 8, !tbaa !182
  br label %202

202:                                              ; preds = %199, %194
  %203 = phi ptr [ %201, %199 ], [ %196, %194 ]
  call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %203, i1 noundef zeroext true) #14
  %204 = load i8, ptr %5, align 2, !tbaa !175, !range !149, !noundef !139
  %205 = icmp eq i8 %204, 0
  %206 = load ptr, ptr %4, align 8, !tbaa !182
  br i1 %205, label %240, label %207

207:                                              ; preds = %202
  %208 = load i32, ptr %29, align 4, !tbaa !176
  %209 = icmp eq ptr %175, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %207
  %211 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %175) #14
  br label %212

212:                                              ; preds = %207, %210
  %213 = phi i32 [ %211, %210 ], [ 0, %207 ]
  call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %206, i32 noundef %208, ptr noundef %174, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %213, ptr noundef null, i1 noundef zeroext false) #14
  %214 = load ptr, ptr %4, align 8, !tbaa !182
  %215 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %214) #14
  %216 = load ptr, ptr %4, align 8, !tbaa !182
  %217 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %216) #14
  %218 = icmp eq ptr %215, null
  br i1 %218, label %237, label %219

219:                                              ; preds = %212
  %220 = load i16, ptr %215, align 2, !tbaa !189
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %219
  %223 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %215, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %223, label %224, label %228

224:                                              ; preds = %222
  %225 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %226 = load ptr, ptr %4, align 8, !tbaa !182
  %227 = load i32, ptr %225, align 4, !tbaa !191
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %226, i32 noundef %227) #14
  br label %272

228:                                              ; preds = %222
  %229 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %215, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %229, label %230, label %234

230:                                              ; preds = %228
  %231 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %232 = load ptr, ptr %4, align 8, !tbaa !182
  %233 = load i32, ptr %231, align 8, !tbaa !192
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %232, i32 noundef %233) #14
  call void @_ZN11xercesc_2_712DGXMLScanner11updateNSMapEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %215, ptr noundef %217, ptr noundef %188) #14
  br label %272

234:                                              ; preds = %228
  %235 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !112
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %236, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %272

237:                                              ; preds = %219, %212
  %238 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, ptr noundef %217) #14
  br i1 %238, label %239, label %272

239:                                              ; preds = %237
  call void @_ZN11xercesc_2_712DGXMLScanner11updateNSMapEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %215, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %188) #14
  br label %272

240:                                              ; preds = %202
  %241 = icmp eq ptr %175, null
  br i1 %241, label %263, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %244 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %175) #14
  call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %206, i32 noundef 0, ptr noundef %174, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %244, ptr noundef null, i1 noundef zeroext false) #14
  %245 = load ptr, ptr %243, align 8, !tbaa !132
  %246 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %245, ptr noundef nonnull %175) #14
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = call noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %250 = load i32, ptr %123, align 8, !tbaa !187
  store i32 %250, ptr %249, align 4, !tbaa !159
  %251 = load ptr, ptr %243, align 8, !tbaa !132
  call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %251, ptr noundef nonnull %175, ptr noundef nonnull %249) #14
  br label %272

252:                                              ; preds = %242
  %253 = load i32, ptr %246, align 4, !tbaa !159
  %254 = load i32, ptr %123, align 8, !tbaa !187
  %255 = icmp ult i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store i32 %254, ptr %246, align 4, !tbaa !159
  br label %272

257:                                              ; preds = %252
  %258 = load ptr, ptr %175, align 8, !tbaa !109
  %259 = getelementptr inbounds ptr, ptr %258, i64 5
  %260 = load ptr, ptr %259, align 8
  %261 = call noundef ptr %260(ptr noundef nonnull align 8 dereferenceable(56) %175) #14
  %262 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %261, ptr noundef %262, ptr noundef null, ptr noundef null) #14
  br label %272

263:                                              ; preds = %240
  call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %206, i32 noundef 0, ptr noundef %174, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14
  %264 = load ptr, ptr %4, align 8, !tbaa !182
  %265 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %264) #14
  %266 = load ptr, ptr %129, align 8, !tbaa !133
  %267 = call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %266, ptr noundef %265) #14
  br i1 %267, label %270, label %268

268:                                              ; preds = %263
  %269 = load ptr, ptr %129, align 8, !tbaa !133
  call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %269, ptr noundef %265, ptr noundef null) #14
  br label %272

270:                                              ; preds = %263
  %271 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %265, ptr noundef %271, ptr noundef null, ptr noundef null) #14
  br label %272

272:                                              ; preds = %248, %257, %256, %230, %234, %224, %239, %237, %270, %268
  %273 = load i8, ptr %82, align 8, !tbaa !148, !range !149, !noundef !139
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %272
  %276 = icmp eq ptr %175, null
  %277 = load ptr, ptr %130, align 8, !tbaa !138
  br i1 %276, label %283, label %278

278:                                              ; preds = %275
  %279 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %127) #14
  %280 = load ptr, ptr %277, align 8, !tbaa !109
  %281 = getelementptr inbounds ptr, ptr %280, i64 8
  %282 = load ptr, ptr %281, align 8
  call void %282(ptr noundef nonnull align 8 dereferenceable(40) %277, ptr noundef nonnull %175, ptr noundef %279, i1 noundef zeroext false, ptr noundef nonnull %83) #14
  br label %285

283:                                              ; preds = %275
  %284 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %126) #14
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %277, i32 noundef 17, ptr noundef %284, ptr noundef %26, ptr noundef null, ptr noundef null) #14
  br label %285

285:                                              ; preds = %278, %283, %272
  %286 = load ptr, ptr %4, align 8, !tbaa !182
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %286, ptr noundef %188) #14
  %287 = add i32 %132, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %131

288:                                              ; preds = %144
  switch i16 %145, label %165 [
    i16 0, label %289
    i16 47, label %295
    i16 62, label %300
    i16 60, label %302
    i16 39, label %304
    i16 34, label %304
  ]

289:                                              ; preds = %288
  %290 = call ptr @__cxa_allocate_exception(i64 48) #11
  %291 = load ptr, ptr %128, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %290, ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 47, ptr noundef %291) #14
          to label %292 unwind label %293

292:                                              ; preds = %289
  call void @__cxa_throw(ptr nonnull %290, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

293:                                              ; preds = %289
  %294 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %290) #11
  br label %381

295:                                              ; preds = %288
  %296 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  %297 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %84, i16 noundef zeroext 62) #14
  br i1 %297, label %307, label %298

298:                                              ; preds = %295
  %299 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %299, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %307

300:                                              ; preds = %288
  %301 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  br label %307

302:                                              ; preds = %288
  %303 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %303, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %307

304:                                              ; preds = %288, %288
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174) #14
  %305 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %84, i16 noundef zeroext %145) #14
  %306 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %84, i1 noundef zeroext false) #14
  br label %165

307:                                              ; preds = %295, %298, %302, %300
  %308 = phi i1 [ false, %295 ], [ false, %298 ], [ true, %302 ], [ true, %300 ]
  %309 = load i8, ptr %5, align 2, !tbaa !175, !range !149, !noundef !139
  %310 = icmp ne i8 %309, 0
  %311 = icmp ne i32 %132, 0
  %312 = select i1 %310, i1 %311, i1 false
  br i1 %312, label %313, label %315

313:                                              ; preds = %307
  %314 = load ptr, ptr %120, align 8, !tbaa !186
  call void @_ZN11xercesc_2_712DGXMLScanner25scanAttrListforNameSpacesEPNS_11RefVectorOfINS_7XMLAttrEEEiPNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %314, i32 noundef %132, ptr noundef nonnull %83) #14
  br label %316

315:                                              ; preds = %307
  br i1 %311, label %316, label %318

316:                                              ; preds = %313, %315
  %317 = load ptr, ptr %129, align 8, !tbaa !133
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %317) #14
  br label %318

318:                                              ; preds = %316, %315
  %319 = load ptr, ptr %120, align 8, !tbaa !186
  %320 = call noundef i32 @_ZN11xercesc_2_712DGXMLScanner12buildAttListEjPNS_14XMLElementDeclERNS_11RefVectorOfINS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(832) %0, i32 noundef %132, ptr noundef nonnull %83, ptr noundef nonnull align 8 dereferenceable(40) %319) #14
  %321 = load i32, ptr %29, align 4, !tbaa !176
  %322 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %323 = load ptr, ptr %322, align 8, !tbaa !146
  %324 = icmp eq ptr %323, null
  br i1 %324, label %346, label %325

325:                                              ; preds = %318
  %326 = load i8, ptr %5, align 2, !tbaa !175, !range !149, !noundef !139
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %338, label %328

328:                                              ; preds = %325
  %329 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  %330 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %329) #14
  %331 = call noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %330, i32 noundef 1) #14
  %332 = load i8, ptr %5, align 2, !tbaa !175
  %333 = load ptr, ptr %322, align 8, !tbaa !146
  %334 = icmp eq i8 %332, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %328
  %336 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  %337 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %336) #14
  br label %338

338:                                              ; preds = %325, %328, %335
  %339 = phi ptr [ %333, %335 ], [ %333, %328 ], [ %323, %325 ]
  %340 = phi i32 [ %331, %335 ], [ %331, %328 ], [ %321, %325 ]
  %341 = phi ptr [ %337, %335 ], [ null, %328 ], [ null, %325 ]
  %342 = load ptr, ptr %120, align 8, !tbaa !186
  %343 = load ptr, ptr %339, align 8, !tbaa !109
  %344 = getelementptr inbounds ptr, ptr %343, i64 11
  %345 = load ptr, ptr %344, align 8
  call void %345(ptr noundef nonnull align 8 dereferenceable(8) %339, ptr noundef nonnull align 8 dereferenceable(33) %83, i32 noundef %340, ptr noundef %341, ptr noundef nonnull align 8 dereferenceable(40) %342, i32 noundef %320, i1 noundef zeroext false, i1 noundef zeroext %24) #14
  br label %346

346:                                              ; preds = %338, %318
  %347 = phi i32 [ %340, %338 ], [ %321, %318 ]
  br i1 %308, label %383, label %348

348:                                              ; preds = %346
  %349 = load i8, ptr %82, align 8, !tbaa !148, !range !149, !noundef !139
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %364, label %351

351:                                              ; preds = %348
  %352 = load ptr, ptr %130, align 8, !tbaa !138
  %353 = load ptr, ptr %352, align 8, !tbaa !109
  %354 = getelementptr inbounds ptr, ptr %353, i64 2
  %355 = load ptr, ptr %354, align 8
  %356 = call noundef i32 %355(ptr noundef nonnull align 8 dereferenceable(40) %352, ptr noundef nonnull %83, ptr noundef null, i32 noundef 0) #14
  %357 = icmp sgt i32 %356, -1
  br i1 %357, label %358, label %364

358:                                              ; preds = %351
  %359 = load ptr, ptr %130, align 8, !tbaa !138
  %360 = load ptr, ptr %83, align 8, !tbaa !109
  %361 = getelementptr inbounds ptr, ptr %360, i64 15
  %362 = load ptr, ptr %361, align 8
  %363 = call noundef ptr %362(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %359, i32 noundef 7, ptr noundef %26, ptr noundef %363, ptr noundef null, ptr noundef null) #14
  br label %364

364:                                              ; preds = %351, %358, %348
  %365 = load ptr, ptr %322, align 8, !tbaa !146
  %366 = icmp eq ptr %365, null
  br i1 %366, label %378, label %367

367:                                              ; preds = %364
  %368 = load i8, ptr %5, align 2, !tbaa !175, !range !149, !noundef !139
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  %372 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %371) #14
  br label %373

373:                                              ; preds = %367, %370
  %374 = phi ptr [ %372, %370 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %367 ]
  %375 = load ptr, ptr %365, align 8, !tbaa !109
  %376 = getelementptr inbounds ptr, ptr %375, i64 6
  %377 = load ptr, ptr %376, align 8
  call void %377(ptr noundef nonnull align 8 dereferenceable(8) %365, ptr noundef nonnull align 8 dereferenceable(33) %83, i32 noundef %347, i1 noundef zeroext %24, ptr noundef %374) #14
  br label %378

378:                                              ; preds = %373, %364
  %379 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %23) #14
  br i1 %24, label %380, label %383

380:                                              ; preds = %378
  store i8 0, ptr %1, align 1, !tbaa !154
  br label %383

381:                                              ; preds = %197, %293, %47
  %382 = phi { ptr, i32 } [ %48, %47 ], [ %294, %293 ], [ %198, %197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  resume { ptr, i32 } %382

383:                                              ; preds = %171, %169, %185, %183, %160, %378, %380, %346, %20
  %384 = phi i1 [ false, %20 ], [ true, %378 ], [ true, %380 ], [ true, %346 ], [ false, %160 ], [ false, %183 ], [ false, %185 ], [ false, %169 ], [ false, %171 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i1 %384
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !193

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 !prof !194 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !196

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !197 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !170
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !199
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !200 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #14
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !201
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !204 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::Janitor", align 8
  %5 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"class.xercesc_2_7::Janitor.1", align 8
  %12 = alloca [4 x i16], align 8
  %13 = alloca %"class.xercesc_2_7::Janitor.2", align 8
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %15 = load ptr, ptr %14, align 8, !tbaa !208
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %15, align 8, !tbaa !109
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #14
  br label %21

21:                                               ; preds = %17, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %22, i1 noundef zeroext false) #14
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #14
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
  br label %381

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %28 = load i8, ptr %27, align 2, !tbaa !175, !range !149, !noundef !139
  %29 = icmp eq i8 %28, 0
  %30 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  br i1 %29, label %33, label %31

31:                                               ; preds = %25
  %32 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull %3) #14
          to label %35 unwind label %40

33:                                               ; preds = %25
  %34 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull align 8 dereferenceable(40) %30) #14
          to label %35 unwind label %40

35:                                               ; preds = %33, %31
  %36 = phi i1 [ %32, %31 ], [ %34, %33 ]
  br i1 %36, label %45, label %37

37:                                               ; preds = %35
  %38 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 208) #14
          to label %44 unwind label %40

40:                                               ; preds = %45, %44, %42, %39, %33, %31
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %390

42:                                               ; preds = %37
  %43 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 307, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %44 unwind label %40

44:                                               ; preds = %42, %39
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
          to label %380 unwind label %40

45:                                               ; preds = %35
  %46 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  invoke void @_ZN11xercesc_2_710XMLScanner15setRootElemNameEPt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %46) #14
          to label %47 unwind label %40

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %49 = load i8, ptr %48, align 2, !tbaa !209, !range !149, !noundef !139
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %51, align 8
  %55 = select i1 %50, ptr %53, ptr %54
  %56 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %55) #14
          to label %57 unwind label %73

57:                                               ; preds = %47
  %58 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %60 = load i32, ptr %59, align 4, !tbaa !176
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %56, ptr noundef %58, i32 noundef %60, i32 noundef 1, ptr noundef %55) #14
          to label %61 unwind label %75

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %56) #14
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %56, i32 noundef 4) #14
  call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %56, i1 noundef zeroext true) #14
  %62 = load i8, ptr %48, align 2, !tbaa !209, !range !149, !noundef !139
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %66 = load ptr, ptr %65, align 8, !tbaa !140
  %67 = load ptr, ptr %66, align 8, !tbaa !109
  %68 = getelementptr inbounds ptr, ptr %67, i64 17
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef i32 %69(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull %56, i1 noundef zeroext false) #14
          to label %71 unwind label %77

71:                                               ; preds = %64
  call void @_ZN11xercesc_2_710DTDGrammar13setRootElemIdEj(ptr noundef nonnull align 8 dereferenceable(61) %66, i32 noundef %70) #14
  %72 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %95

73:                                               ; preds = %47
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %390

75:                                               ; preds = %57
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %56, ptr noundef %55) #13
  br label %390

77:                                               ; preds = %103, %97, %95, %64
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %388

79:                                               ; preds = %61
  %80 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !131
  %82 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %83 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %81, ptr noundef %82) #14
          to label %84 unwind label %88

84:                                               ; preds = %79
  %85 = icmp eq ptr %83, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %83) #14
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %56, i32 noundef %87) #14
  br label %95

88:                                               ; preds = %90, %79
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %388

90:                                               ; preds = %84
  %91 = load ptr, ptr %80, align 8, !tbaa !131
  %92 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %91, ptr noundef nonnull %56) #14
          to label %93 unwind label %88

93:                                               ; preds = %90
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %56, i32 noundef %92) #14
  %94 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %95

95:                                               ; preds = %86, %93, %71
  %96 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %22, i1 noundef zeroext false) #14
          to label %97 unwind label %77

97:                                               ; preds = %95
  %98 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
          to label %99 unwind label %77

99:                                               ; preds = %97
  br i1 %98, label %100, label %107

100:                                              ; preds = %99
  %101 = load ptr, ptr %14, align 8, !tbaa !208
  %102 = icmp eq ptr %101, null
  br i1 %102, label %379, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %101, align 8, !tbaa !109
  %105 = getelementptr inbounds ptr, ptr %104, i64 4
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull align 8 dereferenceable(80) %56, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
          to label %379 unwind label %77

107:                                              ; preds = %99
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %109 = load i32, ptr %108, align 8, !tbaa !210
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %113 = load i8, ptr %112, align 8, !tbaa !148, !range !149, !noundef !139
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i8 1, ptr %112, align 8, !tbaa !148
  br label %116

116:                                              ; preds = %115, %111, %107
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #11
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %118 = load ptr, ptr %117, align 8, !tbaa !140
  %119 = load ptr, ptr %14, align 8, !tbaa !208
  %120 = load ptr, ptr %52, align 8, !tbaa !211
  %121 = load ptr, ptr %51, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %121) #14
          to label %122 unwind label %127

122:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %0, ptr noundef nonnull %22, ptr noundef nonnull %26) #14
          to label %123 unwind label %129

123:                                              ; preds = %122
  %124 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %22) #14
          to label %125 unwind label %129

125:                                              ; preds = %123
  %126 = icmp ne i16 %124, 91
  br i1 %126, label %131, label %169

127:                                              ; preds = %116
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %386

129:                                              ; preds = %123, %122
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %384

131:                                              ; preds = %125
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 0, ptr %132, align 1, !tbaa !212
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %26) #14
          to label %133 unwind label %140

133:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %26) #14
          to label %134 unwind label %142

134:                                              ; preds = %133
  %135 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %136 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  %137 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(40) %135, ptr noundef nonnull align 8 dereferenceable(40) %136, i32 noundef 1) #14
          to label %138 unwind label %144

138:                                              ; preds = %134
  br i1 %137, label %146, label %139

139:                                              ; preds = %138
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
          to label %161 unwind label %144

140:                                              ; preds = %131
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %167

142:                                              ; preds = %133
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %165

144:                                              ; preds = %156, %154, %150, %146, %139, %134
  %145 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  br label %165

146:                                              ; preds = %138
  %147 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %148 = load ptr, ptr %51, align 8, !tbaa !137
  %149 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %147, ptr noundef %148) #14
          to label %150 unwind label %144

150:                                              ; preds = %146
  %151 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  %152 = load ptr, ptr %51, align 8, !tbaa !137
  %153 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %151, ptr noundef %152) #14
          to label %154 unwind label %144

154:                                              ; preds = %150
  %155 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %22, i1 noundef zeroext false) #14
          to label %156 unwind label %144

156:                                              ; preds = %154
  %157 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %22) #14
          to label %158 unwind label %144

158:                                              ; preds = %156
  %159 = icmp eq i16 %157, 91
  %160 = zext i1 %159 to i8
  br label %161

161:                                              ; preds = %139, %158
  %162 = phi ptr [ %153, %158 ], [ null, %139 ]
  %163 = phi ptr [ %149, %158 ], [ null, %139 ]
  %164 = phi i8 [ %160, %158 ], [ 0, %139 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br i1 %137, label %169, label %378

165:                                              ; preds = %144, %142
  %166 = phi { ptr, i32 } [ %145, %144 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br label %167

167:                                              ; preds = %165, %140
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %384

169:                                              ; preds = %125, %161
  %170 = phi ptr [ %162, %161 ], [ null, %125 ]
  %171 = phi ptr [ %163, %161 ], [ null, %125 ]
  %172 = phi i8 [ %164, %161 ], [ 1, %125 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %173 = load ptr, ptr %51, align 8, !tbaa !137
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %170, ptr noundef %173) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %174 = load ptr, ptr %51, align 8, !tbaa !137
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %171, ptr noundef %174) #14
  %175 = load ptr, ptr %14, align 8, !tbaa !208
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %169
  %178 = icmp ne i8 %172, 0
  %179 = load ptr, ptr %175, align 8, !tbaa !109
  %180 = getelementptr inbounds ptr, ptr %179, i64 4
  %181 = load ptr, ptr %180, align 8
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(8) %175, ptr noundef nonnull align 8 dereferenceable(80) %56, ptr noundef %171, ptr noundef %170, i1 noundef zeroext %178, i1 noundef zeroext %126) #14
          to label %184 unwind label %182

182:                                              ; preds = %212, %211, %210, %207, %204, %201, %199, %198, %197, %193, %192, %189, %188, %186, %177
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %382

184:                                              ; preds = %177, %169
  %185 = icmp ne i8 %172, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %184
  %187 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %22) #14
          to label %188 unwind label %182

188:                                              ; preds = %186
  invoke void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %126, ptr noundef %170, ptr noundef %171) #14
          to label %189 unwind label %182

189:                                              ; preds = %188
  %190 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112) %5) #14
          to label %191 unwind label %182

191:                                              ; preds = %189
  br i1 %190, label %193, label %192

192:                                              ; preds = %191
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
          to label %377 unwind label %182

193:                                              ; preds = %191
  %194 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80) %22) #14
          to label %195 unwind label %182

195:                                              ; preds = %193
  %196 = icmp ugt i32 %194, 1
  br i1 %196, label %197, label %199

197:                                              ; preds = %195
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 256) #14
          to label %198 unwind label %182

198:                                              ; preds = %197
  invoke void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80) %22, i32 noundef 1) #14
          to label %199 unwind label %182

199:                                              ; preds = %198, %195
  %200 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %22, i1 noundef zeroext false) #14
          to label %201 unwind label %182

201:                                              ; preds = %199, %184
  %202 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
          to label %203 unwind label %182

203:                                              ; preds = %201
  br i1 %202, label %213, label %204

204:                                              ; preds = %203
  %205 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 93) #14
          to label %206 unwind label %182

206:                                              ; preds = %204
  br i1 %205, label %207, label %211

207:                                              ; preds = %206
  %208 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
          to label %209 unwind label %182

209:                                              ; preds = %207
  br i1 %208, label %210, label %211

210:                                              ; preds = %209
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 257) #14
          to label %213 unwind label %182

211:                                              ; preds = %209, %206
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 212) #14
          to label %212 unwind label %182

212:                                              ; preds = %211
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #14
          to label %213 unwind label %182

213:                                              ; preds = %210, %212, %203
  br i1 %126, label %214, label %377

214:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  store ptr null, ptr %10, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #14
  %215 = load i8, ptr %48, align 2, !tbaa !209, !range !149, !noundef !139
  %216 = icmp eq i8 %215, 0
  %217 = or i1 %185, %216
  br i1 %217, label %267, label %218

218:                                              ; preds = %214
  %219 = load ptr, ptr %0, align 8, !tbaa !109
  %220 = getelementptr inbounds ptr, ptr %219, i64 17
  %221 = load ptr, ptr %220, align 8
  %222 = invoke noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %170, ptr noundef %171) #14
          to label %223 unwind label %263

223:                                              ; preds = %218
  store ptr %222, ptr %10, align 8, !tbaa !182
  %224 = icmp eq ptr %222, null
  br i1 %224, label %267, label %225

225:                                              ; preds = %223
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %222) #14
  %226 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %227 = load ptr, ptr %226, align 8, !tbaa !213
  %228 = load ptr, ptr %10, align 8, !tbaa !182
  %229 = load ptr, ptr %228, align 8, !tbaa !109
  %230 = getelementptr inbounds ptr, ptr %229, i64 5
  %231 = load ptr, ptr %230, align 8
  %232 = invoke noundef ptr %231(ptr noundef nonnull align 8 dereferenceable(41) %228) #14
          to label %233 unwind label %265

233:                                              ; preds = %225
  %234 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %227, ptr noundef %232) #14
          to label %235 unwind label %265

235:                                              ; preds = %233
  %236 = icmp eq ptr %234, null
  br i1 %236, label %267, label %237

237:                                              ; preds = %235
  %238 = load ptr, ptr %234, align 8, !tbaa !109
  %239 = getelementptr inbounds ptr, ptr %238, i64 5
  %240 = load ptr, ptr %239, align 8
  %241 = invoke noundef i32 %240(ptr noundef nonnull align 8 dereferenceable(8) %234) #14
          to label %242 unwind label %265

242:                                              ; preds = %237
  %243 = icmp eq i32 %241, 0
  br i1 %243, label %244, label %267

244:                                              ; preds = %242
  %245 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  store ptr %234, ptr %245, align 8, !tbaa !214
  store ptr %234, ptr %117, align 8, !tbaa !140
  %246 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %247 = load ptr, ptr %246, align 8, !tbaa !138
  %248 = load ptr, ptr %247, align 8, !tbaa !109
  %249 = getelementptr inbounds ptr, ptr %248, i64 11
  %250 = load ptr, ptr %249, align 8
  invoke void %250(ptr noundef nonnull align 8 dereferenceable(40) %247, ptr noundef nonnull %234) #14
          to label %251 unwind label %265

251:                                              ; preds = %244
  %252 = load ptr, ptr %14, align 8, !tbaa !208
  %253 = icmp eq ptr %252, null
  br i1 %253, label %373, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %252, align 8, !tbaa !109
  %256 = getelementptr inbounds ptr, ptr %255, i64 16
  %257 = load ptr, ptr %256, align 8
  invoke void %257(ptr noundef nonnull align 8 dereferenceable(8) %252) #14
          to label %258 unwind label %265

258:                                              ; preds = %254
  %259 = load ptr, ptr %14, align 8, !tbaa !208
  %260 = load ptr, ptr %259, align 8, !tbaa !109
  %261 = getelementptr inbounds ptr, ptr %260, i64 10
  %262 = load ptr, ptr %261, align 8
  invoke void %262(ptr noundef nonnull align 8 dereferenceable(8) %259) #14
          to label %373 unwind label %265

263:                                              ; preds = %218
  %264 = landingpad { ptr, i32 }
          cleanup
  br label %374

265:                                              ; preds = %258, %254, %244, %237, %233, %225
  %266 = landingpad { ptr, i32 }
          cleanup
  br label %374

267:                                              ; preds = %242, %235, %214, %223
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %269 = load i8, ptr %268, align 1, !tbaa !215, !range !149, !noundef !139
  %270 = icmp eq i8 %269, 0
  %271 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %272 = load i8, ptr %271, align 8, !range !149
  %273 = icmp eq i8 %272, 0
  %274 = select i1 %270, i1 %273, i1 false
  br i1 %274, label %376, label %275

275:                                              ; preds = %267
  %276 = load ptr, ptr %10, align 8, !tbaa !182
  %277 = icmp eq ptr %276, null
  %278 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %279 = load i8, ptr %278, align 1, !tbaa !216, !range !149, !noundef !139
  %280 = icmp ne i8 %279, 0
  br i1 %277, label %285, label %281

281:                                              ; preds = %275
  %282 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull align 8 dereferenceable(41) %276, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %280) #14
          to label %292 unwind label %283

283:                                              ; preds = %307, %285, %281
  %284 = landingpad { ptr, i32 }
          cleanup
  br label %374

285:                                              ; preds = %275
  %286 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %287 = load i8, ptr %286, align 1, !tbaa !217, !range !149, !noundef !139
  %288 = icmp ne i8 %287, 0
  %289 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef %170, ptr noundef %171, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext %280, i1 noundef zeroext %288) #14
          to label %290 unwind label %283

290:                                              ; preds = %285
  %291 = load ptr, ptr %10, align 8, !tbaa !182
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %291) #14
  br label %292

292:                                              ; preds = %281, %290
  %293 = phi ptr [ %289, %290 ], [ %282, %281 ]
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %310

295:                                              ; preds = %292
  %296 = call ptr @__cxa_allocate_exception(i64 48) #11
  %297 = load ptr, ptr %10, align 8, !tbaa !182
  %298 = icmp eq ptr %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %297, align 8, !tbaa !109
  %301 = getelementptr inbounds ptr, ptr %300, i64 5
  %302 = load ptr, ptr %301, align 8
  %303 = invoke noundef ptr %302(ptr noundef nonnull align 8 dereferenceable(41) %297) #14
          to label %304 unwind label %308

304:                                              ; preds = %295, %299
  %305 = phi ptr [ %303, %299 ], [ %170, %295 ]
  %306 = load ptr, ptr %51, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %296, ptr noundef nonnull @.str, i32 noundef 1025, i32 noundef 45, ptr noundef %305, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %306) #14
          to label %307 unwind label %308

307:                                              ; preds = %304
  invoke void @__cxa_throw(ptr nonnull %296, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %392 unwind label %283

308:                                              ; preds = %304, %299
  %309 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %296) #11
  br label %374

310:                                              ; preds = %292
  %311 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %312 = load i8, ptr %311, align 1, !tbaa !218, !range !149, !noundef !139
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %355, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %316 = load ptr, ptr %315, align 8, !tbaa !213
  %317 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %316) #14
  %318 = load ptr, ptr %10, align 8, !tbaa !182
  %319 = load ptr, ptr %318, align 8, !tbaa !109
  %320 = getelementptr inbounds ptr, ptr %319, i64 5
  %321 = load ptr, ptr %320, align 8
  %322 = invoke noundef ptr %321(ptr noundef nonnull align 8 dereferenceable(41) %318) #14
          to label %323 unwind label %351

323:                                              ; preds = %314
  %324 = load ptr, ptr %317, align 8, !tbaa !109
  %325 = getelementptr inbounds ptr, ptr %324, i64 5
  %326 = load ptr, ptr %325, align 8
  %327 = invoke noundef i32 %326(ptr noundef nonnull align 8 dereferenceable(40) %317, ptr noundef %322) #14
          to label %328 unwind label %351

328:                                              ; preds = %323
  %329 = load ptr, ptr %315, align 8, !tbaa !213
  %330 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %329) #14
  %331 = load ptr, ptr %330, align 8, !tbaa !109
  %332 = getelementptr inbounds ptr, ptr %331, i64 10
  %333 = load ptr, ptr %332, align 8
  %334 = invoke noundef ptr %333(ptr noundef nonnull align 8 dereferenceable(40) %330, i32 noundef %327) #14
          to label %335 unwind label %353

335:                                              ; preds = %328
  %336 = load ptr, ptr %315, align 8, !tbaa !213
  %337 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %336, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE) #14
          to label %338 unwind label %353

338:                                              ; preds = %335
  %339 = load ptr, ptr %117, align 8, !tbaa !140
  %340 = load ptr, ptr %339, align 8, !tbaa !109
  %341 = getelementptr inbounds ptr, ptr %340, i64 22
  %342 = load ptr, ptr %341, align 8
  %343 = invoke noundef ptr %342(ptr noundef nonnull align 8 dereferenceable(8) %339) #14
          to label %344 unwind label %353

344:                                              ; preds = %338
  %345 = load ptr, ptr %343, align 8, !tbaa !109
  %346 = getelementptr inbounds ptr, ptr %345, i64 10
  %347 = load ptr, ptr %346, align 8
  invoke void %347(ptr noundef nonnull align 8 dereferenceable(16) %343, ptr noundef %334) #14
          to label %348 unwind label %353

348:                                              ; preds = %344
  %349 = load ptr, ptr %315, align 8, !tbaa !213
  %350 = load ptr, ptr %117, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %349, ptr noundef %350) #14
          to label %355 unwind label %353

351:                                              ; preds = %323, %314
  %352 = landingpad { ptr, i32 }
          cleanup
  br label %374

353:                                              ; preds = %348, %344, %338, %335, %328
  %354 = landingpad { ptr, i32 }
          cleanup
  br label %374

355:                                              ; preds = %348, %310
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  store i64 292063281220, ptr %12, align 8
  %356 = load ptr, ptr %51, align 8, !tbaa !137
  %357 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %356) #14
          to label %358 unwind label %365

358:                                              ; preds = %355
  %359 = load ptr, ptr %51, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %357, ptr noundef nonnull %12, i1 noundef zeroext false, ptr noundef %359) #14
          to label %360 unwind label %367

360:                                              ; preds = %358
  invoke void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %357, ptr noundef %170) #14
          to label %361 unwind label %365

361:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %357) #14
  call void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %293, i1 noundef zeroext true) #14
  %362 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull %293, ptr noundef nonnull %357) #14
          to label %363 unwind label %369

363:                                              ; preds = %361
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %5, i1 noundef zeroext false, i1 noundef zeroext true) #14
          to label %364 unwind label %369

364:                                              ; preds = %363
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %376

365:                                              ; preds = %360, %355
  %366 = landingpad { ptr, i32 }
          cleanup
  br label %371

367:                                              ; preds = %358
  %368 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %357, ptr noundef %356) #13
  br label %371

369:                                              ; preds = %363, %361
  %370 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %371

371:                                              ; preds = %369, %367, %365
  %372 = phi { ptr, i32 } [ %370, %369 ], [ %366, %365 ], [ %368, %367 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %374

373:                                              ; preds = %258, %251
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %377

374:                                              ; preds = %283, %308, %371, %353, %351, %265, %263
  %375 = phi { ptr, i32 } [ %266, %265 ], [ %264, %263 ], [ %372, %371 ], [ %284, %283 ], [ %309, %308 ], [ %354, %353 ], [ %352, %351 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %382

376:                                              ; preds = %364, %267
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %377

377:                                              ; preds = %213, %376, %373, %192
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %378

378:                                              ; preds = %161, %377
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #13
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #11
  br label %379

379:                                              ; preds = %100, %103, %378
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %380

380:                                              ; preds = %44, %379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %381

381:                                              ; preds = %380, %24
  ret void

382:                                              ; preds = %374, %182
  %383 = phi { ptr, i32 } [ %375, %374 ], [ %183, %182 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %384

384:                                              ; preds = %382, %167, %129
  %385 = phi { ptr, i32 } [ %383, %382 ], [ %168, %167 ], [ %130, %129 ]
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #13
  br label %386

386:                                              ; preds = %384, %127
  %387 = phi { ptr, i32 } [ %385, %384 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #11
  br label %388

388:                                              ; preds = %386, %88, %77
  %389 = phi { ptr, i32 } [ %78, %77 ], [ %387, %386 ], [ %89, %88 ]
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %390

390:                                              ; preds = %73, %75, %388, %40
  %391 = phi { ptr, i32 } [ %41, %40 ], [ %389, %388 ], [ %76, %75 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %391

392:                                              ; preds = %307
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !219 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !182
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !222 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #14
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !223 {
  %2 = load ptr, ptr %0, align 8, !tbaa !224
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 !prof !225 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext false) #14
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !224
  %3 = load i32, ptr %2, align 8, !tbaa !226
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !227 {
  %2 = load ptr, ptr %0, align 8, !tbaa !224
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  %5 = load i32, ptr %2, align 8, !tbaa !226
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !189
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setRootElemNameEPt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = load ptr, ptr %4, align 8, !tbaa !109
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #14
  %10 = load ptr, ptr %3, align 8, !tbaa !137
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #14
  store ptr %11, ptr %5, align 8, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !231 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDGrammar13setRootElemIdEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 8, !tbaa !234
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !229
  store ptr null, ptr %0, align 8, !tbaa !229
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !235 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !236

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !237
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !239 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !240
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !240
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !241 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !242

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = invoke noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14
          to label %10 unwind label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !243
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11) #14
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

13:                                               ; preds = %10, %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !243
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16) #14
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !245
  %23 = load i32, ptr %3, align 4, !tbaa !159
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !182
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %1, ptr noundef %26) #14
  %27 = load ptr, ptr %21, align 8, !tbaa !245
  %28 = load i32, ptr %3, align 4, !tbaa !159
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %20, ptr %30, align 8, !tbaa !182
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !246
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !247
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %40, label %37, !prof !248

37:                                               ; preds = %15
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !249
  br label %63

40:                                               ; preds = %15
  %41 = uitofp i32 %33 to double
  %42 = fmul double %41, 1.500000e+00
  %43 = fptoui double %42 to i32
  %44 = load ptr, ptr %0, align 8, !tbaa !243
  %45 = zext i32 %43 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !109
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46) #14
  %51 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !249
  %53 = load i32, ptr %34, align 8, !tbaa !247
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr align 8 %52, i64 %55, i1 false)
  %56 = load ptr, ptr %0, align 8, !tbaa !243
  %57 = load ptr, ptr %51, align 8, !tbaa !249
  %58 = load ptr, ptr %56, align 8, !tbaa !109
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57) #14
  store ptr %50, ptr %51, align 8, !tbaa !249
  store i32 %43, ptr %34, align 8, !tbaa !247
  %61 = load i32, ptr %31, align 4, !tbaa !246
  %62 = add i32 %61, 1
  br label %63

63:                                               ; preds = %37, %40
  %64 = phi i32 [ %33, %37 ], [ %62, %40 ]
  %65 = phi ptr [ %39, %37 ], [ %50, %40 ]
  store i32 %64, ptr %31, align 4, !tbaa !246
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %1, ptr %67, align 8, !tbaa !182
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %64) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %64
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !250 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !251

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #14
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !109
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !219 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  %4 = load ptr, ptr %0, align 8, !tbaa !224
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #14
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !252 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !253
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !255
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !141 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !141 {
  %3 = load ptr, ptr %0, align 8, !tbaa !256
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !258

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !109
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(41) %3) #13
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !256
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !259 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !260
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !108 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !262
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  store i8 0, ptr %7, align 1, !tbaa !265
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  store i8 0, ptr %8, align 2, !tbaa !266
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !268
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #14
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !268
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #14
  store ptr %15, ptr %3, align 8, !tbaa !267
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %3, ptr %4, align 1, !tbaa !271
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !277 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !278 {
  %2 = load i32, ptr %0, align 8, !tbaa !226
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !279 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  %4 = load i32, ptr %0, align 8, !tbaa !226
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !189
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !280 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !232
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !281 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !282

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !189
  %8 = load i16, ptr %1, align 2, !tbaa !189
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !283

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !284

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !189
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !165

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !285

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !189
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !286

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !287

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !189
  %28 = load i16, ptr %26, align 2, !tbaa !189
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !288, !llvm.loop !289

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712XMLValidator16checkRootElementEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !108 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !291
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !294 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !296
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader21isSpecialStartTagCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !297 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !296
  %8 = and i8 %7, 16
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca [9 x i16], align 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi i1 [ %13, %11 ], [ true, %4 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %17 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 2 dereferenceable(2) %5) #14
  br i1 %17, label %18, label %205

18:                                               ; preds = %14
  %19 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  br i1 %10, label %23, label %20

20:                                               ; preds = %18
  %21 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %20
  %24 = phi i1 [ %22, %20 ], [ true, %18 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 0, ptr %7, align 2, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  br label %27

27:                                               ; preds = %123, %23
  %28 = phi i32 [ 1, %23 ], [ %124, %123 ]
  %29 = phi i8 [ 0, %23 ], [ %125, %123 ]
  %30 = phi i8 [ 0, %23 ], [ %126, %123 ]
  %31 = and i8 %29, 1
  %32 = icmp eq i8 %31, 0
  br label %33

33:                                               ; preds = %193, %27
  %34 = phi i32 [ %28, %27 ], [ 0, %193 ]
  %35 = phi i8 [ %30, %27 ], [ %128, %193 ]
  br label %36

36:                                               ; preds = %33, %81
  %37 = phi i8 [ 0, %81 ], [ %35, %33 ]
  %38 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
          to label %39 unwind label %46

39:                                               ; preds = %36
  store i16 %38, ptr %6, align 2, !tbaa !189
  %40 = icmp eq i16 %38, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %39
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %43 = call ptr @__cxa_allocate_exception(i64 48) #11
  %44 = load ptr, ptr %42, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull @.str, i32 noundef 2490, i32 noundef 47, ptr noundef %44) #14
          to label %45 unwind label %57

45:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %207 unwind label %55

46:                                               ; preds = %76, %66, %62, %36
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %113

48:                                               ; preds = %95, %97, %99, %134, %187, %190
  %49 = phi i32 [ %34, %99 ], [ %34, %97 ], [ %34, %95 ], [ %34, %134 ], [ 0, %187 ], [ 0, %190 ]
  %50 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %113

51:                                               ; preds = %148, %165, %194, %201
  %52 = phi i32 [ 0, %165 ], [ %28, %148 ], [ %195, %194 ], [ %195, %201 ]
  %53 = phi i8 [ %29, %165 ], [ %29, %148 ], [ %196, %194 ], [ %196, %201 ]
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %113

55:                                               ; preds = %45, %70
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %113

57:                                               ; preds = %41
  %58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %43) #11
  br label %113

59:                                               ; preds = %39
  %60 = load i16, ptr %5, align 2, !tbaa !189
  %61 = icmp eq i16 %38, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
          to label %64 unwind label %46

64:                                               ; preds = %62
  %65 = icmp eq i32 %19, %63
  br i1 %65, label %203, label %66

66:                                               ; preds = %64
  %67 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
          to label %68 unwind label %46

68:                                               ; preds = %66
  %69 = icmp ugt i32 %19, %67
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %203 unwind label %55

71:                                               ; preds = %68
  %72 = load i16, ptr %6, align 2
  br label %73

73:                                               ; preds = %71, %59
  %74 = phi i16 [ %72, %71 ], [ %38, %59 ]
  store i8 0, ptr %8, align 1, !tbaa !154
  %75 = icmp eq i16 %74, 38
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load ptr, ptr %0, align 8, !tbaa !109
  %78 = getelementptr inbounds ptr, ptr %77, i64 13
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef i32 %79(ptr noundef nonnull align 8 dereferenceable(832) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #14
          to label %81 unwind label %46

81:                                               ; preds = %76
  %82 = icmp eq i32 %80, 1
  br i1 %82, label %83, label %36, !llvm.loop !298

83:                                               ; preds = %81
  %84 = load i8, ptr %8, align 1, !tbaa !154, !range !149, !noundef !139
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %127, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %88 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %87) #14
  br i1 %88, label %127, label %89

89:                                               ; preds = %86
  call void @_ZN11xercesc_2_79ElemStack19setReferenceEscapedEv(ptr noundef nonnull align 8 dereferenceable(104) %87) #14
  br label %127

90:                                               ; preds = %73
  %91 = and i16 %74, -1024
  %92 = and i8 %37, 1
  %93 = icmp eq i8 %92, 0
  switch i16 %91, label %98 [
    i16 -10240, label %94
    i16 -9216, label %96
  ]

94:                                               ; preds = %90
  br i1 %93, label %127, label %95

95:                                               ; preds = %94
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %127 unwind label %48

96:                                               ; preds = %90
  br i1 %93, label %97, label %127

97:                                               ; preds = %96
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282) #14
          to label %127 unwind label %48

98:                                               ; preds = %90
  br i1 %93, label %100, label %99

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %100 unwind label %48

100:                                              ; preds = %99, %98
  %101 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  %102 = load i16, ptr %6, align 2, !tbaa !189
  %103 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %101, i16 noundef zeroext %102) #14
  br i1 %103, label %127, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %9) #11
  %106 = load i16, ptr %6, align 2, !tbaa !189
  %107 = zext i16 %106 to i32
  %108 = load ptr, ptr %105, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %107, ptr noundef nonnull %9, i32 noundef 8, i32 noundef 16, ptr noundef %108) #14
          to label %109 unwind label %111

109:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %2, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #14
          to label %110 unwind label %111

110:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #11
  br label %127

111:                                              ; preds = %109, %104
  %112 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #11
  br label %113

113:                                              ; preds = %55, %48, %51, %46, %111, %57
  %114 = phi i32 [ %34, %111 ], [ %34, %57 ], [ %34, %55 ], [ %34, %46 ], [ %49, %48 ], [ %52, %51 ]
  %115 = phi i8 [ %29, %111 ], [ %29, %57 ], [ %29, %55 ], [ %29, %46 ], [ %29, %48 ], [ %53, %51 ]
  %116 = phi { ptr, i32 } [ %112, %111 ], [ %58, %57 ], [ %56, %55 ], [ %47, %46 ], [ %50, %48 ], [ %54, %51 ]
  %117 = extractvalue { ptr, i32 } %116, 1
  %118 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %204

120:                                              ; preds = %113
  %121 = extractvalue { ptr, i32 } %116, 0
  %122 = call ptr @__cxa_begin_catch(ptr %121) #11
  store i8 0, ptr %8, align 1, !tbaa !154
  call void @__cxa_end_catch()
  br label %123

123:                                              ; preds = %120, %202, %198
  %124 = phi i32 [ %114, %120 ], [ %195, %202 ], [ %195, %198 ]
  %125 = phi i8 [ %115, %120 ], [ %196, %202 ], [ %196, %198 ]
  %126 = phi i8 [ 0, %120 ], [ %128, %202 ], [ %128, %198 ]
  br label %27, !llvm.loop !298

127:                                              ; preds = %97, %96, %110, %100, %94, %95, %89, %86, %83
  %128 = phi i8 [ %37, %86 ], [ %37, %89 ], [ %37, %83 ], [ %37, %95 ], [ 1, %94 ], [ 0, %100 ], [ 0, %110 ], [ 0, %96 ], [ 0, %97 ]
  %129 = load i8, ptr %8, align 1, !tbaa !154, !range !149, !noundef !139
  %130 = icmp eq i8 %129, 0
  %131 = load i16, ptr %6, align 2
  %132 = icmp eq i16 %131, 60
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %135 unwind label %48

135:                                              ; preds = %134, %127
  br i1 %15, label %136, label %152

136:                                              ; preds = %135
  %137 = load i8, ptr %8, align 1, !tbaa !154, !range !149, !noundef !139
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %194

139:                                              ; preds = %136
  %140 = load i16, ptr %6, align 2
  switch i16 %140, label %194 [
    i16 13, label %141
    i16 10, label %141
    i16 9, label %141
  ]

141:                                              ; preds = %139, %139, %139
  %142 = load i8, ptr %25, align 2, !tbaa !299, !range !149, !noundef !139
  %143 = icmp eq i8 %142, 0
  %144 = load i8, ptr %26, align 8, !range !149
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %143, i1 true, i1 %145
  %147 = or i1 %146, %24
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %150 = load ptr, ptr %149, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %150, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %151 unwind label %51

151:                                              ; preds = %141, %148
  store i16 32, ptr %6, align 2, !tbaa !189
  br label %194

152:                                              ; preds = %135
  %153 = icmp eq i32 %34, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %152
  %155 = load i8, ptr %8, align 1, !tbaa !154, !range !149, !noundef !139
  %156 = icmp ne i8 %155, 0
  %157 = load i16, ptr %6, align 2
  %158 = icmp ne i16 %157, 32
  %159 = select i1 %156, i1 %158, i1 false
  br i1 %159, label %164, label %160

160:                                              ; preds = %154
  %161 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  %162 = load i16, ptr %6, align 2, !tbaa !189
  %163 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %161, i16 noundef zeroext %162) #14
  br i1 %163, label %193, label %164

164:                                              ; preds = %154, %160
  br i1 %32, label %194, label %165

165:                                              ; preds = %164
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext 32) #14
          to label %194 unwind label %51

166:                                              ; preds = %152
  %167 = load i16, ptr %6, align 2, !tbaa !189
  %168 = icmp eq i16 %167, 32
  br i1 %168, label %176, label %169

169:                                              ; preds = %166
  %170 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  %171 = load i16, ptr %6, align 2, !tbaa !189
  %172 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %170, i16 noundef zeroext %171) #14
  %173 = load i8, ptr %8, align 1, !range !149
  %174 = icmp eq i8 %173, 0
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %194

176:                                              ; preds = %169, %166
  %177 = load i8, ptr %25, align 2, !tbaa !299, !range !149, !noundef !139
  %178 = icmp eq i8 %177, 0
  %179 = load i8, ptr %26, align 8, !range !149
  %180 = icmp eq i8 %179, 0
  %181 = select i1 %178, i1 true, i1 %180
  %182 = or i1 %181, %24
  br i1 %182, label %193, label %183

183:                                              ; preds = %176
  %184 = load i16, ptr %6, align 2
  %185 = icmp ne i16 %184, 32
  %186 = select i1 %32, i1 true, i1 %185
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
          to label %189 unwind label %48

189:                                              ; preds = %187
  br i1 %188, label %190, label %193

190:                                              ; preds = %189, %183
  %191 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %192 = load ptr, ptr %191, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %192, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %193 unwind label %48

193:                                              ; preds = %190, %189, %176, %160
  br label %33, !llvm.loop !298

194:                                              ; preds = %169, %164, %165, %139, %136, %151
  %195 = phi i32 [ %28, %136 ], [ %28, %151 ], [ %28, %139 ], [ 1, %165 ], [ 1, %164 ], [ 1, %169 ]
  %196 = phi i8 [ %29, %136 ], [ %29, %151 ], [ %29, %139 ], [ 1, %165 ], [ 1, %164 ], [ 1, %169 ]
  %197 = load i16, ptr %6, align 2, !tbaa !189
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %197) #14
          to label %198 unwind label %51

198:                                              ; preds = %194
  %199 = load i16, ptr %7, align 2, !tbaa !189
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %123, label %201

201:                                              ; preds = %198
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %199) #14
          to label %202 unwind label %51

202:                                              ; preds = %201
  store i16 0, ptr %7, align 2, !tbaa !189
  br label %123

203:                                              ; preds = %70, %64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %205

204:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  resume { ptr, i32 } %116

205:                                              ; preds = %14, %203
  %206 = phi i1 [ %65, %203 ], [ false, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  ret i1 %206

207:                                              ; preds = %45
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !227 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !300
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !291
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !182
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !291
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !291
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !302

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !303
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
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
  %15 = load ptr, ptr %14, align 8, !tbaa !300
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !182
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !304 {
  %3 = zext i1 %1 to i8
  store i8 %3, ptr %0, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %8 = zext i1 %6 to i8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !308
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %2, i32 noundef %1) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %3) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %4, ptr %11, align 4, !tbaa !309
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %8, ptr %12, align 8, !tbaa !310
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %5, ptr %13, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !313
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 !prof !317 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !318 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner11updateNSMapEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !108 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %1, align 2, !tbaa !189
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #14
  br i1 %14, label %17, label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ 301, %9 ], [ 303, %13 ]
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %16) #14
  br label %17

17:                                               ; preds = %15, %11, %13
  %18 = icmp eq ptr %3, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load i16, ptr %3, align 2, !tbaa !189
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %17
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %27

27:                                               ; preds = %26, %19, %6, %4
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #14
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #14
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %32, label %35, label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ 302, %27 ], [ 304, %31 ]
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %34) #14
  br label %35

35:                                               ; preds = %33, %29, %31
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %38 = load ptr, ptr %37, align 8, !tbaa !319
  %39 = load ptr, ptr %38, align 8, !tbaa !109
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef i32 %41(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef %3) #14
  tail call void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %36, ptr noundef %2, i32 noundef %42) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #14
  %3 = load ptr, ptr %1, align 8, !tbaa !182
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !320
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !322
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !182
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !322
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #4 comdat align 2 !prof !304 {
  %9 = zext i1 %7 to i8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !308
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %3, ptr noundef %2, i32 noundef %1) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %12, align 4, !tbaa !309
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %9, ptr %13, align 8, !tbaa !310
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %6, ptr %14, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !323 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !324

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !325
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !327 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !328
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !330
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !331

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !331

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !332, !range !149, !noundef !139
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !325
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !325
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !333
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !334
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !335
  %34 = load i32, ptr %4, align 4, !tbaa !159
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !182
  call void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #14
  %38 = load ptr, ptr %32, align 8, !tbaa !335
  %39 = load i32, ptr %4, align 4, !tbaa !159
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !182
  %42 = load i32, ptr %9, align 8, !tbaa !330
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !330
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !336 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
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
declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner25scanAttrListforNameSpacesEPNS_11RefVectorOfINS_7XMLAttrEEEiPNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !108 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %2, ptr %5, align 4, !tbaa !159
  %7 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %17, %4
  %12 = load ptr, ptr %7, align 8, !tbaa !112
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !tbaa !154
  call void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  %13 = load i32, ptr %5, align 4, !tbaa !159
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  br label %29

17:                                               ; preds = %4, %17
  %18 = phi i32 [ %24, %17 ], [ 0, %4 ]
  %19 = load ptr, ptr %7, align 8, !tbaa !112
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef %18) #14
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %21) #14
  %23 = tail call noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %22, i32 noundef 0) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %21, i32 noundef %23) #14
  %24 = add nuw i32 %18, 1
  %25 = load ptr, ptr %7, align 8, !tbaa !112
  %26 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #14
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %17, label %11, !llvm.loop !337

28:                                               ; preds = %64, %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret void

29:                                               ; preds = %15, %64
  %30 = phi i32 [ 0, %15 ], [ %65, %64 ]
  %31 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %30) #14
  %32 = load i8, ptr %6, align 1, !tbaa !154, !range !149, !noundef !139
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %34, %49
  %37 = phi i32 [ %50, %49 ], [ 0, %34 ]
  %38 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %37) #14
  %39 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %38) #14
  %40 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %38) #14
  %44 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  %45 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %43, ptr noundef %44) #14
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  %48 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %47, ptr noundef %48, ptr noundef null, ptr noundef null) #14
  br label %49

49:                                               ; preds = %36, %42, %46
  %50 = add nuw nsw i32 %37, 1
  %51 = icmp eq i32 %50, %30
  br i1 %51, label %64, label %36, !llvm.loop !338

52:                                               ; preds = %29
  %53 = load ptr, ptr %16, align 8, !tbaa !339
  %54 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  %55 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  %56 = call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %53, ptr noundef %54, i32 noundef %55) #14
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  %59 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %58, ptr noundef %59, ptr noundef null, ptr noundef null) #14
  br label %60

60:                                               ; preds = %57, %52
  %61 = load ptr, ptr %16, align 8, !tbaa !339
  %62 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  %63 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %31) #14
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef %62, i32 noundef %63, ptr noundef nonnull %31) #14
  br label %64

64:                                               ; preds = %49, %34, %60
  %65 = add nuw nsw i32 %30, 1
  %66 = load i32, ptr %5, align 4, !tbaa !159
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %29, label %28, !llvm.loop !340
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !341 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %45, label %3, !prof !342

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !328
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !343

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !330
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !335
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !344

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !345
  %23 = load i8, ptr %9, align 8, !tbaa !332, !range !149, !noundef !139
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !331

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !325
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #16
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !334
  %31 = load ptr, ptr %30, align 8, !tbaa !109
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !346, !llvm.loop !347

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !335
  %37 = load i32, ptr %4, align 8, !tbaa !328
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !182
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !348, !llvm.loop !349

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner12buildAttListEjPNS_14XMLElementDeclERNS_11RefVectorOfINS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(832) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = load ptr, ptr %2, align 8, !tbaa !109
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(33) %2) #14
  %9 = icmp ne i32 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %161

11:                                               ; preds = %4
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  br i1 %8, label %13, label %161

13:                                               ; preds = %11
  %14 = load ptr, ptr %2, align 8, !tbaa !109
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef nonnull align 8 dereferenceable(16) ptr %16(ptr noundef nonnull align 8 dereferenceable(33) %2) #14
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = getelementptr inbounds ptr, ptr %18, i64 13
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(16) %17) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %161, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  br label %33

33:                                               ; preds = %23, %153
  %34 = phi i32 [ %1, %23 ], [ %154, %153 ]
  %35 = phi i32 [ 0, %23 ], [ %155, %153 ]
  %36 = load ptr, ptr %17, align 8, !tbaa !109
  %37 = getelementptr inbounds ptr, ptr %36, i64 14
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef nonnull align 8 dereferenceable(56) ptr %38(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %35) #14
  %40 = load ptr, ptr %24, align 8, !tbaa !132
  %41 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull %39) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load i32, ptr %41, align 4, !tbaa !159
  %45 = load i32, ptr %25, align 8, !tbaa !187
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %153

47:                                               ; preds = %43, %33
  %48 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %49 = load i8, ptr %26, align 8, !tbaa !148, !range !149, !noundef !139
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %47
  %52 = icmp eq i32 %48, 2
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = load ptr, ptr %28, align 8, !tbaa !138
  %55 = load ptr, ptr %39, align 8, !tbaa !109
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %54, i32 noundef 6, ptr noundef %58, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %153

59:                                               ; preds = %51
  %60 = icmp ugt i32 %48, 1
  %61 = load i8, ptr %27, align 2, !range !149
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  br i1 %65, label %66, label %75

66:                                               ; preds = %64
  %67 = load ptr, ptr %28, align 8, !tbaa !138
  %68 = load ptr, ptr %39, align 8, !tbaa !109
  %69 = getelementptr inbounds ptr, ptr %68, i64 5
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %72 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %2) #14
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %67, i32 noundef 82, ptr noundef %71, ptr noundef %72, ptr noundef null, ptr noundef null) #14
  br label %75

73:                                               ; preds = %59, %47
  %74 = icmp ult i32 %48, 2
  br i1 %74, label %75, label %153

75:                                               ; preds = %66, %64, %73
  %76 = load i8, ptr %26, align 8, !tbaa !148, !range !149, !noundef !139
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %28, align 8, !tbaa !138
  %80 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %81 = load ptr, ptr %79, align 8, !tbaa !109
  %82 = getelementptr inbounds ptr, ptr %81, i64 8
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef nonnull %39, ptr noundef %80, i1 noundef zeroext false, ptr noundef nonnull %2) #14
  br label %84

84:                                               ; preds = %78, %75
  %85 = icmp ult i32 %34, %12
  br i1 %85, label %116, label %86

86:                                               ; preds = %84
  %87 = load i8, ptr %29, align 2, !tbaa !175, !range !149, !noundef !139
  %88 = icmp eq i8 %87, 0
  %89 = load ptr, ptr %30, align 8, !tbaa !137
  %90 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %89) #14
  br i1 %88, label %103, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %31, align 4, !tbaa !176
  %93 = load ptr, ptr %39, align 8, !tbaa !109
  %94 = getelementptr inbounds ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = invoke noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
          to label %97 unwind label %101

97:                                               ; preds = %91
  %98 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %99 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %100 = load ptr, ptr %30, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %90, i32 noundef %92, ptr noundef %96, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %98, i32 noundef %99, i1 noundef zeroext false, ptr noundef %100, ptr noundef null, i1 noundef zeroext false) #14
          to label %114 unwind label %101

101:                                              ; preds = %97, %91
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %151

103:                                              ; preds = %86
  %104 = load ptr, ptr %39, align 8, !tbaa !109
  %105 = getelementptr inbounds ptr, ptr %104, i64 5
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
          to label %108 unwind label %112

108:                                              ; preds = %103
  %109 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %110 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %111 = load ptr, ptr %30, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %90, i32 noundef 0, ptr noundef %107, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %109, i32 noundef %110, i1 noundef zeroext false, ptr noundef %111, ptr noundef null, i1 noundef zeroext false) #14
          to label %114 unwind label %112

112:                                              ; preds = %108, %103
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %151

114:                                              ; preds = %108, %97
  %115 = load ptr, ptr %32, align 8, !tbaa !186
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %115, ptr noundef nonnull %90) #14
  br label %137

116:                                              ; preds = %84
  %117 = load ptr, ptr %32, align 8, !tbaa !186
  %118 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %117, i32 noundef %34) #14
  %119 = load i8, ptr %29, align 2, !tbaa !175, !range !149, !noundef !139
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %31, align 4, !tbaa !176
  %123 = load ptr, ptr %39, align 8, !tbaa !109
  %124 = getelementptr inbounds ptr, ptr %123, i64 5
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %127 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %128 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  tail call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %118, i32 noundef %122, ptr noundef %126, ptr noundef %127, i32 noundef %128, ptr noundef null, i1 noundef zeroext false) #14
  br label %136

129:                                              ; preds = %116
  %130 = load ptr, ptr %39, align 8, !tbaa !109
  %131 = getelementptr inbounds ptr, ptr %130, i64 5
  %132 = load ptr, ptr %131, align 8
  %133 = tail call noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %134 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  %135 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #14
  tail call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %118, i32 noundef 0, ptr noundef %133, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %134, i32 noundef %135, ptr noundef null, i1 noundef zeroext false) #14
  br label %136

136:                                              ; preds = %129, %121
  tail call void @_ZN11xercesc_2_77XMLAttr12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(49) %118, i1 noundef zeroext false) #14
  br label %137

137:                                              ; preds = %136, %114
  %138 = phi ptr [ %90, %114 ], [ %118, %136 ]
  %139 = load i8, ptr %29, align 2, !tbaa !175, !range !149, !noundef !139
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %138) #14
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i16, ptr %142, align 2, !tbaa !189
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = tail call noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %142, i32 noundef 0) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %138, i32 noundef %148) #14
  br label %149

149:                                              ; preds = %141, %144, %147, %137
  %150 = add i32 %34, 1
  br label %153

151:                                              ; preds = %112, %101
  %152 = phi { ptr, i32 } [ %102, %101 ], [ %113, %112 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %90, ptr noundef %89) #13
  resume { ptr, i32 } %152

153:                                              ; preds = %53, %149, %73, %43
  %154 = phi i32 [ %34, %43 ], [ %150, %149 ], [ %34, %73 ], [ %34, %53 ]
  %155 = add nuw i32 %35, 1
  %156 = load ptr, ptr %17, align 8, !tbaa !109
  %157 = getelementptr inbounds ptr, ptr %156, i64 13
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef i32 %158(ptr noundef nonnull align 8 dereferenceable(16) %17) #14
  %160 = icmp ult i32 %155, %159
  br i1 %160, label %33, label %161, !llvm.loop !350

161:                                              ; preds = %153, %13, %11, %4
  %162 = phi i32 [ 0, %4 ], [ %1, %11 ], [ %1, %13 ], [ %154, %153 ]
  ret i32 %162
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !108 {
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !192
  br label %21

9:                                                ; preds = %3
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 4, !tbaa !191
  br label %21

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %16 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %17 = load i8, ptr %4, align 1, !tbaa !154, !range !149, !noundef !139
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %21

21:                                               ; preds = %20, %11, %6
  %22 = phi i32 [ %8, %6 ], [ %13, %11 ], [ %16, %20 ]
  ret i32 %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #4 align 2 !prof !108 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #14
  store i32 %8, ptr %4, align 4, !tbaa !159
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !tbaa !154
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = sext i16 %3 to i32
  %13 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
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
  %22 = load i32, ptr %21, align 8, !tbaa !192
  br label %36

23:                                               ; preds = %14
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #14
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 4, !tbaa !191
  br label %36

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !tbaa !154
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %30 = sext i16 %3 to i32
  %31 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %29, ptr noundef %15, i32 noundef %30, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  %32 = load i8, ptr %7, align 1, !tbaa !154, !range !149, !noundef !139
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %35

35:                                               ; preds = %34, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  br label %36

36:                                               ; preds = %20, %25, %35, %10
  %37 = phi i32 [ %13, %10 ], [ %22, %20 ], [ %27, %25 ], [ %31, %35 ]
  ret i32 %37
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !351 {
  store i32 0, ptr %0, align 8, !tbaa !226
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  store i16 0, ptr %3, align 2, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !352 {
  store i32 0, ptr %0, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %6, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false) #14
          to label %9 unwind label %17

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !213
  call void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %10, i1 noundef zeroext false) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %11, align 8, !tbaa !183
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %13 = load i32, ptr %12, align 8, !tbaa !210
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %16, align 8, !tbaa !148
  br label %45

17:                                               ; preds = %51, %4
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #11
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %27
  %24 = call ptr @__cxa_begin_catch(ptr %19) #11
  call void @__cxa_end_catch() #11
  br label %25

25:                                               ; preds = %23, %89, %51, %45
  %26 = phi ptr [ null, %45 ], [ %52, %51 ], [ null, %89 ], [ null, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret ptr %26

27:                                               ; preds = %17
  %28 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #11
  %29 = icmp eq i32 %20, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %27
  %31 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %32 = icmp eq i32 %20, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = call ptr @__cxa_begin_catch(ptr %19) #11
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %35, align 1, !tbaa !147
  %36 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  br label %80

40:                                               ; preds = %30
  %41 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %42 = icmp eq i32 %20, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %40
  %44 = call ptr @__cxa_begin_catch(ptr %19) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #15
          to label %105 unwind label %53

45:                                               ; preds = %15, %9
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %46, align 1, !tbaa !147
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %47, align 2, !tbaa !299
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %48, align 8, !tbaa !353
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %49, align 1, !tbaa !212
  %50 = icmp eq i16 %2, 0
  br i1 %50, label %51, label %25

51:                                               ; preds = %45
  %52 = invoke noundef ptr @_ZN11xercesc_2_712DGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3) #14
          to label %25 unwind label %17

53:                                               ; preds = %43
  %54 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %55 unwind label %102

55:                                               ; preds = %53
  %56 = extractvalue { ptr, i32 } %54, 1
  %57 = extractvalue { ptr, i32 } %54, 0
  br label %97

58:                                               ; preds = %80, %76, %72
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %60 = extractvalue { ptr, i32 } %59, 0
  %61 = extractvalue { ptr, i32 } %59, 1
  %62 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %58
  %65 = call ptr @__cxa_begin_catch(ptr %60) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #15
          to label %105 unwind label %84

66:                                               ; preds = %33
  %67 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  %68 = icmp sgt i32 %67, 1
  %69 = load ptr, ptr %34, align 8, !tbaa !109
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8
  br i1 %68, label %72, label %76

72:                                               ; preds = %66
  %73 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
          to label %74 unwind label %58

74:                                               ; preds = %72
  %75 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  br label %80

76:                                               ; preds = %66
  %77 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
          to label %78 unwind label %58

78:                                               ; preds = %76
  %79 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #14
  br label %80

80:                                               ; preds = %38, %74, %78
  %81 = phi i32 [ 157, %78 ], [ 292, %74 ], [ 156, %38 ]
  %82 = phi ptr [ %77, %78 ], [ %73, %74 ], [ %39, %38 ]
  %83 = phi ptr [ %79, %78 ], [ %75, %74 ], [ null, %38 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef null, ptr noundef null) #14
          to label %89 unwind label %58

84:                                               ; preds = %64
  %85 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %86 unwind label %102

86:                                               ; preds = %84
  %87 = extractvalue { ptr, i32 } %85, 1
  %88 = extractvalue { ptr, i32 } %85, 0
  br label %94

89:                                               ; preds = %80
  invoke void @__cxa_end_catch()
          to label %25 unwind label %90

90:                                               ; preds = %89
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = extractvalue { ptr, i32 } %91, 0
  %93 = extractvalue { ptr, i32 } %91, 1
  br label %97

94:                                               ; preds = %86, %58
  %95 = phi i32 [ %87, %86 ], [ %61, %58 ]
  %96 = phi ptr [ %88, %86 ], [ %60, %58 ]
  invoke void @__cxa_end_catch()
          to label %97 unwind label %102

97:                                               ; preds = %90, %94, %55, %40
  %98 = phi i32 [ %56, %55 ], [ %20, %40 ], [ %93, %90 ], [ %95, %94 ]
  %99 = phi ptr [ %57, %55 ], [ %19, %40 ], [ %92, %90 ], [ %96, %94 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  %100 = insertvalue { ptr, i32 } poison, ptr %99, 0
  %101 = insertvalue { ptr, i32 } %100, i32 %98, 1
  resume { ptr, i32 } %101

102:                                              ; preds = %94, %84, %53
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #12
  unreachable

105:                                              ; preds = %64, %43
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !150 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 1, !tbaa !354
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %4 = alloca [4 x i16], align 8
  %5 = alloca %"class.xercesc_2_7::Janitor.2", align 8
  %6 = alloca %"class.xercesc_2_7::Janitor", align 8
  %7 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(48) %9) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %14 = load i8, ptr %13, align 1, !tbaa !185, !range !149, !noundef !139
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  %19 = load ptr, ptr %18, align 8, !tbaa !109
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %18) #14
  br label %22

22:                                               ; preds = %16, %3
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %24 = load ptr, ptr %23, align 8, !tbaa !211
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %24) #14
  %26 = load ptr, ptr %23, align 8, !tbaa !211
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %25, ptr noundef %26) #14
          to label %27 unwind label %45

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  store ptr %25, ptr %28, align 8, !tbaa !214
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %30 = load ptr, ptr %29, align 8, !tbaa !213
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %30, ptr noundef nonnull %25) #14
  %31 = load ptr, ptr %28, align 8, !tbaa !214
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %31, ptr %32, align 8, !tbaa !140
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %34 = load ptr, ptr %33, align 8, !tbaa !138
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = getelementptr inbounds ptr, ptr %35, i64 11
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef %31) #14
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %39 = load ptr, ptr %38, align 8, !tbaa !146
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %27
  %42 = load ptr, ptr %39, align 8, !tbaa !109
  %43 = getelementptr inbounds ptr, ptr %42, i64 9
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(8) %39) #14
  br label %47

45:                                               ; preds = %22
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #13
  br label %206

47:                                               ; preds = %41, %27
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %49 = load ptr, ptr %48, align 8, !tbaa !355
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %49, align 8, !tbaa !109
  %53 = getelementptr inbounds ptr, ptr %52, i64 4
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49) #14
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %57 = load ptr, ptr %56, align 8, !tbaa !356
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !109
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(8) %57) #14
  br label %63

63:                                               ; preds = %59, %55
  tail call void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br i1 %2, label %64, label %93

64:                                               ; preds = %63
  %65 = load ptr, ptr %29, align 8, !tbaa !213
  %66 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %65) #14
  %67 = load ptr, ptr %1, align 8, !tbaa !109
  %68 = getelementptr inbounds ptr, ptr %67, i64 5
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
  %71 = load ptr, ptr %66, align 8, !tbaa !109
  %72 = getelementptr inbounds ptr, ptr %71, i64 5
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef i32 %73(ptr noundef nonnull align 8 dereferenceable(40) %66, ptr noundef %70) #14
  %75 = load ptr, ptr %29, align 8, !tbaa !213
  %76 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %75) #14
  %77 = load ptr, ptr %76, align 8, !tbaa !109
  %78 = getelementptr inbounds ptr, ptr %77, i64 10
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef %74) #14
  %81 = load ptr, ptr %29, align 8, !tbaa !213
  %82 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %81, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE) #14
  %83 = load ptr, ptr %32, align 8, !tbaa !140
  %84 = load ptr, ptr %83, align 8, !tbaa !109
  %85 = getelementptr inbounds ptr, ptr %84, i64 22
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %83) #14
  %88 = load ptr, ptr %87, align 8, !tbaa !109
  %89 = getelementptr inbounds ptr, ptr %88, i64 10
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef %80) #14
  %91 = load ptr, ptr %29, align 8, !tbaa !213
  %92 = load ptr, ptr %32, align 8, !tbaa !140
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %91, ptr noundef %92) #14
  br label %93

93:                                               ; preds = %64, %63
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %96 = load i8, ptr %95, align 1, !tbaa !216, !range !149, !noundef !139
  %97 = icmp ne i8 %96, 0
  %98 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %94, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %97) #14
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %93
  %101 = load ptr, ptr %1, align 8, !tbaa !109
  %102 = getelementptr inbounds ptr, ptr %101, i64 6
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef zeroext i1 %103(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
  %105 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %106 = load ptr, ptr %1, align 8, !tbaa !109
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  br i1 %104, label %109, label %117

109:                                              ; preds = %100
  %110 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %111 unwind label %115

111:                                              ; preds = %109
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %113 = load ptr, ptr %112, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @.str, i32 noundef 1768, i32 noundef 76, ptr noundef %110, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %113) #14
          to label %114 unwind label %115

114:                                              ; preds = %111
  tail call void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

115:                                              ; preds = %111, %109
  %116 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %105) #11
  br label %206

117:                                              ; preds = %100
  %118 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %119 unwind label %123

119:                                              ; preds = %117
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %121 = load ptr, ptr %120, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @.str, i32 noundef 1770, i32 noundef 2, ptr noundef %118, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %121) #14
          to label %122 unwind label %123

122:                                              ; preds = %119
  tail call void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

123:                                              ; preds = %119, %117
  %124 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %105) #11
  br label %206

125:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 292063281220, ptr %4, align 8
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %127 = load ptr, ptr %126, align 8, !tbaa !137
  %128 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %127) #14
  %129 = load ptr, ptr %126, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %128, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef %129) #14
          to label %130 unwind label %164

130:                                              ; preds = %125
  %131 = load ptr, ptr %1, align 8, !tbaa !109
  %132 = getelementptr inbounds ptr, ptr %131, i64 5
  %133 = load ptr, ptr %132, align 8
  %134 = call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
  call void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %128, ptr noundef %134) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %128) #14
  call void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %98, i1 noundef zeroext true) #14
  %135 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %94, ptr noundef nonnull %98, ptr noundef nonnull %128) #14
          to label %136 unwind label %166

136:                                              ; preds = %130
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %138 = load ptr, ptr %137, align 8, !tbaa !208
  %139 = icmp eq ptr %138, null
  br i1 %139, label %174, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %23, align 8, !tbaa !211
  %142 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %141) #14
          to label %143 unwind label %168

143:                                              ; preds = %140
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %145 = load i32, ptr %144, align 4, !tbaa !176
  %146 = load ptr, ptr %23, align 8, !tbaa !211
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %142, ptr noundef nonnull %4, i32 noundef %145, i32 noundef 1, ptr noundef %146) #14
          to label %147 unwind label %170

147:                                              ; preds = %143
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %142, i32 noundef 4) #14
  call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %142, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %142) #14
  %148 = load ptr, ptr %137, align 8, !tbaa !208
  %149 = load ptr, ptr %1, align 8, !tbaa !109
  %150 = getelementptr inbounds ptr, ptr %149, i64 4
  %151 = load ptr, ptr %150, align 8
  %152 = invoke noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %153 unwind label %172

153:                                              ; preds = %147
  %154 = load ptr, ptr %1, align 8, !tbaa !109
  %155 = getelementptr inbounds ptr, ptr %154, i64 5
  %156 = load ptr, ptr %155, align 8
  %157 = invoke noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %158 unwind label %172

158:                                              ; preds = %153
  %159 = load ptr, ptr %148, align 8, !tbaa !109
  %160 = getelementptr inbounds ptr, ptr %159, i64 4
  %161 = load ptr, ptr %160, align 8
  invoke void %161(ptr noundef nonnull align 8 dereferenceable(8) %148, ptr noundef nonnull align 8 dereferenceable(80) %142, ptr noundef %152, ptr noundef %157, i1 noundef zeroext false, i1 noundef zeroext true) #14
          to label %162 unwind label %172

162:                                              ; preds = %158
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %163 = load ptr, ptr %137, align 8, !tbaa !208
  br label %174

164:                                              ; preds = %125
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %128, ptr noundef %127) #13
  br label %204

166:                                              ; preds = %130
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %202

168:                                              ; preds = %140
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %202

170:                                              ; preds = %143
  %171 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %142, ptr noundef %141) #13
  br label %202

172:                                              ; preds = %158, %153, %147
  %173 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %202

174:                                              ; preds = %162, %136
  %175 = phi ptr [ %163, %162 ], [ null, %136 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #11
  %176 = load ptr, ptr %32, align 8, !tbaa !140
  %177 = load ptr, ptr %23, align 8, !tbaa !211
  %178 = load ptr, ptr %126, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef %176, ptr noundef %175, ptr noundef %177, ptr noundef %178) #14
          to label %179 unwind label %191

179:                                              ; preds = %174
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull %0, ptr noundef nonnull %94, ptr noundef nonnull %180) #14
          to label %181 unwind label %193

181:                                              ; preds = %179
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %7, i1 noundef zeroext false, i1 noundef zeroext true) #14
          to label %182 unwind label %193

182:                                              ; preds = %181
  %183 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %184 = load i8, ptr %183, align 8, !tbaa !148, !range !149, !noundef !139
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load ptr, ptr %33, align 8, !tbaa !138
  %188 = load ptr, ptr %187, align 8, !tbaa !109
  %189 = getelementptr inbounds ptr, ptr %188, i64 4
  %190 = load ptr, ptr %189, align 8
  invoke void %190(ptr noundef nonnull align 8 dereferenceable(40) %187, i1 noundef zeroext false, i1 noundef zeroext true) #14
          to label %195 unwind label %193

191:                                              ; preds = %174
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %200

193:                                              ; preds = %196, %186, %181, %179
  %194 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #13
  br label %200

195:                                              ; preds = %186, %182
  br i1 %2, label %196, label %198

196:                                              ; preds = %195
  %197 = load ptr, ptr %29, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %197) #14
          to label %198 unwind label %193

198:                                              ; preds = %196, %195
  %199 = load ptr, ptr %28, align 8, !tbaa !214
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #13
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %199

200:                                              ; preds = %193, %191
  %201 = phi { ptr, i32 } [ %194, %193 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #11
  br label %202

202:                                              ; preds = %168, %170, %172, %200, %166
  %203 = phi { ptr, i32 } [ %201, %200 ], [ %167, %166 ], [ %173, %172 ], [ %171, %170 ], [ %169, %168 ]
  call void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %204

204:                                              ; preds = %202, %164
  %205 = phi { ptr, i32 } [ %203, %202 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %206

206:                                              ; preds = %115, %123, %204, %45
  %207 = phi { ptr, i32 } [ %46, %45 ], [ %205, %204 ], [ %116, %115 ], [ %124, %123 ]
  resume { ptr, i32 } %207
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !150 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !357
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  %7 = load ptr, ptr %2, align 8, !tbaa !357
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = getelementptr inbounds ptr, ptr %8, i64 9
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %12, align 8, !tbaa !358
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 !prof !108 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i8 %5, ptr %0, align 8, !tbaa !359
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !322
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !360
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !320
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !361
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !109
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #14
  store ptr %15, ptr %8, align 8, !tbaa !320
  %16 = load i32, ptr %7, align 8, !tbaa !360
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %3, ptr %0, align 8, !tbaa !243
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !247
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !246
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !363
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !364

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %12 = load ptr, ptr %0, align 8, !tbaa !243
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 68, ptr noundef %12) #14
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #11
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !109
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #14
  store ptr %22, ptr %5, align 8, !tbaa !245
  %23 = load i32, ptr %8, align 8, !tbaa !363
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !365

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !247
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !364

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !245
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !182
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !366, !llvm.loop !367

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !247
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !243
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !109
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #14
  store ptr %46, ptr %39, align 8, !tbaa !249
  store ptr null, ptr %46, align 8, !tbaa !182
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 !prof !362 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !334
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !332
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !335
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !328
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !368
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !330
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !369
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  store ptr %3, ptr %12, align 8, !tbaa !369
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !320
  %6 = load ptr, ptr %3, align 8, !tbaa !109
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
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  %2 = load ptr, ptr %0, align 8, !tbaa !243
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !249
  %5 = load ptr, ptr %2, align 8, !tbaa !109
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !243
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  %13 = load ptr, ptr %10, align 8, !tbaa !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #14
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !370 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !371
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef10isExternalEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !372 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !373, !range !149, !noundef !139
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !374 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !375
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 1, !tbaa !218, !range !149, !noundef !139
  %7 = icmp ne i8 %6, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext %7) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !213
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %10 = load i8, ptr %9, align 2, !tbaa !209, !range !149, !noundef !139
  %11 = icmp ne i8 %10, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext %11) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %13) #14
  %15 = load ptr, ptr %12, align 8, !tbaa !211
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %14, ptr noundef %15) #14
          to label %16 unwind label %39

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  store ptr %14, ptr %17, align 8, !tbaa !214
  %18 = load ptr, ptr %3, align 8, !tbaa !213
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull %14) #14
  %19 = load ptr, ptr %17, align 8, !tbaa !214
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %19, ptr %20, align 8, !tbaa !140
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %21, align 8, !tbaa !183
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %23 = load ptr, ptr %22, align 8, !tbaa !138
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = getelementptr inbounds ptr, ptr %24, i64 11
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef %19) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %28 = load i32, ptr %27, align 8, !tbaa !210
  %29 = icmp eq i32 %28, 1
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %31 = zext i1 %29 to i8
  store i8 %31, ptr %30, align 8, !tbaa !148
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %33 = load ptr, ptr %32, align 8, !tbaa !146
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %16
  %36 = load ptr, ptr %33, align 8, !tbaa !109
  %37 = getelementptr inbounds ptr, ptr %36, i64 9
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33) #14
  br label %41

39:                                               ; preds = %2
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #13
  br label %146

41:                                               ; preds = %35, %16
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %43 = load ptr, ptr %42, align 8, !tbaa !355
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %43) #14
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %51 = load ptr, ptr %50, align 8, !tbaa !356
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 8, !tbaa !109
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(8) %51) #14
  br label %57

57:                                               ; preds = %53, %49
  tail call void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %59 = load ptr, ptr %58, align 8, !tbaa !137
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %61 = load ptr, ptr %60, align 8, !tbaa !184
  %62 = load ptr, ptr %59, align 8, !tbaa !109
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %61) #14
  store ptr null, ptr %60, align 8, !tbaa !184
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %67 = load i32, ptr %66, align 4, !tbaa !176
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %69 = load i32, ptr %68, align 8, !tbaa !376
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %71 = load i32, ptr %70, align 4, !tbaa !191
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %73 = load i32, ptr %72, align 8, !tbaa !192
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #14
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %74, align 1, !tbaa !147
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %75, align 2, !tbaa !299
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %76, align 8, !tbaa !353
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %77, align 1, !tbaa !212
  %78 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !130
  %80 = load ptr, ptr %79, align 8, !tbaa !109
  %81 = getelementptr inbounds ptr, ptr %80, i64 6
  %82 = load ptr, ptr %81, align 8
  tail call void %82(ptr noundef nonnull align 8 dereferenceable(48) %79) #14
  %83 = load ptr, ptr %78, align 8, !tbaa !130
  %84 = load ptr, ptr %50, align 8, !tbaa !356
  tail call void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %83, ptr noundef %84) #14
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %86 = load i8, ptr %85, align 1, !tbaa !185, !range !149, !noundef !139
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %57
  %89 = load ptr, ptr %22, align 8, !tbaa !138
  %90 = load ptr, ptr %89, align 8, !tbaa !109
  %91 = getelementptr inbounds ptr, ptr %90, i64 6
  %92 = load ptr, ptr %91, align 8
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(40) %89) #14
  br label %93

93:                                               ; preds = %88, %57
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %96 = load i8, ptr %95, align 1, !tbaa !216, !range !149, !noundef !139
  %97 = icmp ne i8 %96, 0
  %98 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %94, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %97) #14
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %93
  %101 = load ptr, ptr %1, align 8, !tbaa !109
  %102 = getelementptr inbounds ptr, ptr %101, i64 6
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef zeroext i1 %103(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
  %105 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %106 = load ptr, ptr %1, align 8, !tbaa !109
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  br i1 %104, label %109, label %116

109:                                              ; preds = %100
  %110 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %111 unwind label %114

111:                                              ; preds = %109
  %112 = load ptr, ptr %58, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @.str, i32 noundef 2148, i32 noundef 76, ptr noundef %110, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %112) #14
          to label %113 unwind label %114

113:                                              ; preds = %111
  tail call void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

114:                                              ; preds = %111, %109
  %115 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %105) #11
  br label %146

116:                                              ; preds = %100
  %117 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(41) %1) #14
          to label %118 unwind label %121

118:                                              ; preds = %116
  %119 = load ptr, ptr %58, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @.str, i32 noundef 2150, i32 noundef 2, ptr noundef %117, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %119) #14
          to label %120 unwind label %121

120:                                              ; preds = %118
  tail call void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

121:                                              ; preds = %118, %116
  %122 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %105) #11
  br label %146

123:                                              ; preds = %93
  %124 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %94, ptr noundef nonnull %98, ptr noundef null) #14
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %126 = load ptr, ptr %125, align 8, !tbaa !377
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %126, align 8, !tbaa !109
  %130 = getelementptr inbounds ptr, ptr %129, i64 3
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef i32 %131(ptr noundef nonnull align 8 dereferenceable(12) %126) #14
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %132, ptr %133, align 4, !tbaa !378
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %134, align 8, !tbaa !379
  br label %135

135:                                              ; preds = %128, %123
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %137 = load i32, ptr %136, align 8, !tbaa !380
  %138 = icmp ugt i32 %137, 31
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !132
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %141) #14
  tail call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %143

142:                                              ; preds = %135
  tail call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #14
  br label %143

143:                                              ; preds = %142, %139
  %144 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %145) #14
  ret void

146:                                              ; preds = %114, %121, %39
  %147 = phi { ptr, i32 } [ %40, %39 ], [ %115, %114 ], [ %122, %121 ]
  resume { ptr, i32 } %147
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !381 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !382
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 align 2 !prof !108 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  br i1 %3, label %67, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 8, !tbaa !148, !range !149, !noundef !139
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = tail call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %11) #14
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(33) %13) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 22) #14
  br label %66

22:                                               ; preds = %8
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %24 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #14
  %25 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %24, ptr noundef %9, i32 noundef %10) #14
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  switch i32 %17, label %66 [
    i32 1, label %27
    i32 2, label %35
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %29 = load ptr, ptr %28, align 8, !tbaa !146
  %30 = icmp eq ptr %29, null
  br i1 %30, label %66, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !109
  %33 = getelementptr inbounds ptr, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #14
  br label %66

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !109
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #14
  br label %66

43:                                               ; preds = %22
  %44 = icmp eq i32 %17, 2
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %47 = load ptr, ptr %46, align 8, !tbaa !146
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !109
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %9, i32 noundef %10, i1 noundef zeroext false) #14
  br label %66

53:                                               ; preds = %43
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %55 = load ptr, ptr %54, align 8, !tbaa !138
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef 22) #14
  br label %66

56:                                               ; preds = %4
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %58 = load ptr, ptr %57, align 8, !tbaa !146
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %62 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %63 = load ptr, ptr %58, align 8, !tbaa !109
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %61, i32 noundef %62, i1 noundef zeroext false) #14
  br label %66

66:                                               ; preds = %19, %53, %49, %45, %31, %27, %35, %39, %26, %56, %60
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  br label %67

67:                                               ; preds = %2, %66
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !384 {
  %2 = load i32, ptr %0, align 8, !tbaa !226
  ret i32 %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !322
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !322
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !361
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
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
  %15 = load ptr, ptr %14, align 8, !tbaa !320
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !322
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !385 {
  %4 = load i32, ptr %1, align 4, !tbaa !159
  %5 = icmp ugt i32 %4, 100
  br i1 %5, label %6, label %30, !prof !386

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !154
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !339
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12) #14
  %14 = load i32, ptr %1, align 4, !tbaa !159
  %15 = shl i32 %14, 1
  %16 = or disjoint i32 %15, 1
  %17 = load ptr, ptr %11, align 8, !tbaa !137
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %17) #14
          to label %19 unwind label %23

19:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #14
          to label %20 unwind label %25

20:                                               ; preds = %19
  %21 = load ptr, ptr %11, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %16, i1 noundef zeroext false, ptr noundef nonnull %18, ptr noundef %21) #14
          to label %22 unwind label %23

22:                                               ; preds = %20
  store ptr %13, ptr %7, align 8, !tbaa !339
  br label %30

23:                                               ; preds = %20, %10
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #13
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %26, %25 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #13
  resume { ptr, i32 } %28

29:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  br label %30

30:                                               ; preds = %22, %29, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !387 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE11containsKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = icmp ne ptr %5, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !388
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !390
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !391, !range !149, !noundef !139
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !392
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %21) #13
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #13
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !392
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !394
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !395
  br label %45

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !396
  %29 = load ptr, ptr %28, align 8, !tbaa !109
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32) #14
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !397
  %35 = load i32, ptr %5, align 4, !tbaa !159
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38) #14
  %39 = load ptr, ptr %33, align 8, !tbaa !397
  %40 = load i32, ptr %5, align 4, !tbaa !159
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %32, ptr %42, align 8, !tbaa !182
  %43 = load i32, ptr %9, align 4, !tbaa !390
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4, !tbaa !390
  br label %45

45:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
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
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %12) #14
  %13 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 -1, ptr %5, align 2, !tbaa !189
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(40) %13) #14
          to label %14 unwind label %28

14:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %15 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %13) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %12) #14
          to label %16 unwind label %30

16:                                               ; preds = %14
  %17 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !109
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
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
          to label %36 unwind label %44

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #11
  %37 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #14
  %38 = load ptr, ptr %7, align 8, !tbaa !398
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 4, ptr noundef %37, ptr noundef null, ptr noundef %2, ptr noundef %38, ptr noundef nonnull %35) #14
  %39 = load ptr, ptr %18, align 8, !tbaa !355
  %40 = load ptr, ptr %39, align 8, !tbaa !109
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  br label %139

50:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %15) #14
          to label %53 unwind label %32

51:                                               ; preds = %36
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  %52 = icmp eq ptr %43, null
  br i1 %52, label %53, label %137

53:                                               ; preds = %50, %51
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %55 = load i8, ptr %54, align 1, !tbaa !217, !range !149, !noundef !139
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %137

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %58, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
          to label %59 unwind label %86

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #11
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %61 = load ptr, ptr %60, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %61) #14
          to label %62 unwind label %88

62:                                               ; preds = %59
  %63 = load ptr, ptr %9, align 8, !tbaa !398
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
  %72 = load i8, ptr %71, align 8, !tbaa !400, !range !149, !noundef !139
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %12) #14
          to label %75 unwind label %92

75:                                               ; preds = %74
  %76 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #14
  %77 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #14
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %77, ptr noundef nonnull align 8 dereferenceable(40) %76) #14
          to label %78 unwind label %94

78:                                               ; preds = %75
  %79 = load ptr, ptr %60, align 8, !tbaa !137
  %80 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %79) #14
          to label %81 unwind label %94

81:                                               ; preds = %78
  %82 = load ptr, ptr %9, align 8, !tbaa !398
  %83 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %76) #14
  %84 = load ptr, ptr %60, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %80, ptr noundef %82, ptr noundef %83, ptr noundef %84) #14
          to label %85 unwind label %96

85:                                               ; preds = %81
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #13
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %131

102:                                              ; preds = %70
  %103 = call ptr @__cxa_allocate_exception(i64 48) #11
  %104 = load ptr, ptr %60, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef 99, ptr noundef %104) #14
          to label %117 unwind label %105

105:                                              ; preds = %102
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %103) #11
  br label %131

107:                                              ; preds = %69
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %109 = load i8, ptr %108, align 8, !tbaa !400, !range !149, !noundef !139
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %10) #14
          to label %113 unwind label %90

113:                                              ; preds = %111
  br i1 %112, label %114, label %122

114:                                              ; preds = %113
  %115 = call ptr @__cxa_allocate_exception(i64 48) #11
  %116 = load ptr, ptr %60, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %115, ptr noundef nonnull @.str, i32 noundef 2429, i32 noundef 99, ptr noundef %116) #14
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
  %123 = load ptr, ptr %60, align 8, !tbaa !137
  %124 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %123) #14
          to label %125 unwind label %90

125:                                              ; preds = %122
  %126 = load ptr, ptr %60, align 8, !tbaa !137
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
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  br label %137

131:                                              ; preds = %127, %120, %105, %100, %90
  %132 = phi { ptr, i32 } [ %91, %90 ], [ %106, %105 ], [ %101, %100 ], [ %121, %120 ], [ %128, %127 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #13
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
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret ptr %138

139:                                              ; preds = %135, %48, %32
  %140 = phi { ptr, i32 } [ %136, %135 ], [ %49, %48 ], [ %33, %32 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br label %141

141:                                              ; preds = %139, %30
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %143

143:                                              ; preds = %141, %28
  %144 = phi { ptr, i32 } [ %142, %141 ], [ %29, %28 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  resume { ptr, i32 } %144
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !401 {
  store i32 0, ptr %0, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 comdat align 2 !prof !108 {
  store i32 %1, ptr %0, align 8, !tbaa !402
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !405
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !406
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 3
  store ptr %5, ptr %10, align 8, !tbaa !407
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !408
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 5
  store ptr %6, ptr %12, align 8, !tbaa !409
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
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
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack19setReferenceEscapedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !170
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 10
  store i8 1, ptr %10, align 2, !tbaa !179
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !410 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !296
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !411 {
  %3 = load i32, ptr %0, align 8, !tbaa !226
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !412
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !413

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
  store i16 %1, ptr %15, align 2, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %2 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %4, i16 noundef zeroext %2) #14
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca [9 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #14
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261) #14
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #14
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 91) #14
  br i1 %8, label %9, label %114

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %11) #14
          to label %13 unwind label %36

13:                                               ; preds = %9
  %14 = load ptr, ptr %12, align 8, !tbaa !157
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(33) %14) #14
          to label %19 unwind label %38

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %22 = icmp eq i32 %18, 1
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  br label %25

25:                                               ; preds = %19, %110
  %26 = phi i8 [ %111, %110 ], [ 0, %19 ]
  %27 = phi i8 [ %112, %110 ], [ 0, %19 ]
  %28 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
          to label %29 unwind label %40

29:                                               ; preds = %25
  %30 = icmp eq i16 %28, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264) #14
          to label %32 unwind label %42

32:                                               ; preds = %31
  %33 = call ptr @__cxa_allocate_exception(i64 48) #11
  %34 = load ptr, ptr %24, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull @.str, i32 noundef 2706, i32 noundef 47, ptr noundef %34) #14
          to label %35 unwind label %44

35:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %117 unwind label %42

36:                                               ; preds = %9
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %115

38:                                               ; preds = %13
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %115

40:                                               ; preds = %98, %25, %59, %64, %96, %110
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %115

42:                                               ; preds = %31, %35, %70, %76, %82
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %115

44:                                               ; preds = %32
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %33) #11
  br label %115

46:                                               ; preds = %29
  %47 = load i8, ptr %20, align 8, !tbaa !148, !range !149, !noundef !139
  %48 = icmp eq i8 %47, 0
  %49 = load i8, ptr %21, align 2, !range !149
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %54 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %53, i16 noundef zeroext %28) #14
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load ptr, ptr %12, align 8, !tbaa !157
  %57 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %56) #14
  %58 = and i1 %22, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load ptr, ptr %23, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %60, i32 noundef 84) #14
          to label %61 unwind label %40

61:                                               ; preds = %55, %59, %52, %46
  %62 = zext i16 %28 to i32
  %63 = icmp eq i16 %28, 93
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712DGXMLScanner13scanCDSectionEvE10CDataClose) #14
          to label %66 unwind label %40

66:                                               ; preds = %64
  br i1 %65, label %67, label %88

67:                                               ; preds = %66
  %68 = and i8 %26, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %71 unwind label %42

71:                                               ; preds = %70, %67
  %72 = load i8, ptr %20, align 8, !tbaa !148, !range !149, !noundef !139
  %73 = icmp ne i8 %72, 0
  %74 = icmp ne i32 %18, 2
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %23, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %77, i32 noundef 22) #14
          to label %78 unwind label %42

78:                                               ; preds = %76, %71
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %80 = load ptr, ptr %79, align 8, !tbaa !146
  %81 = icmp eq ptr %80, null
  br i1 %81, label %113, label %82

82:                                               ; preds = %78
  %83 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %84 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %85 = load ptr, ptr %80, align 8, !tbaa !109
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %83, i32 noundef %84, i1 noundef zeroext true) #14
          to label %113 unwind label %42

88:                                               ; preds = %66, %61
  %89 = and i8 %27, 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = and i16 %28, -1024
  %93 = and i8 %26, 1
  %94 = icmp eq i8 %93, 0
  switch i16 %92, label %100 [
    i16 -10240, label %95
    i16 -9216, label %97
  ]

95:                                               ; preds = %91
  br i1 %94, label %110, label %96

96:                                               ; preds = %95
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #14
          to label %110 unwind label %40

97:                                               ; preds = %91
  br i1 %94, label %98, label %110

98:                                               ; preds = %100, %97
  %99 = phi i32 [ 282, %97 ], [ 249, %100 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %99) #14
          to label %110 unwind label %40

100:                                              ; preds = %91
  br i1 %94, label %101, label %98

101:                                              ; preds = %100
  %102 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %103 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %102, i16 noundef zeroext %28) #14
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #11
  %105 = load ptr, ptr %24, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %62, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 16, ptr noundef %105) #14
          to label %106 unwind label %108

106:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %107 unwind label %108

107:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #11
  br label %110

108:                                              ; preds = %106, %104
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #11
  br label %115

110:                                              ; preds = %98, %97, %101, %107, %95, %96, %88
  %111 = phi i8 [ %26, %88 ], [ %26, %96 ], [ 1, %95 ], [ 0, %107 ], [ 0, %101 ], [ 0, %97 ], [ 0, %98 ]
  %112 = phi i8 [ %27, %88 ], [ %27, %96 ], [ %27, %95 ], [ 1, %107 ], [ %27, %101 ], [ %27, %97 ], [ %27, %98 ]
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext %28) #14
          to label %25 unwind label %40

113:                                              ; preds = %82, %78
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %114

114:                                              ; preds = %6, %113
  ret void

115:                                              ; preds = %40, %42, %38, %108, %44, %36
  %116 = phi { ptr, i32 } [ %37, %36 ], [ %39, %38 ], [ %109, %108 ], [ %45, %44 ], [ %41, %40 ], [ %43, %42 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %116

117:                                              ; preds = %35
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !414 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !233, !range !149, !noundef !139
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !259 {
  %2 = load ptr, ptr %0, align 8, !tbaa !224
  %3 = load i32, ptr %2, align 8, !tbaa !226
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = load ptr, ptr %0, align 8, !tbaa !224
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  %8 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 0, ptr %5, align 2, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !tbaa !154
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
  store i8 0, ptr %6, align 1, !tbaa !154
  %33 = load i16, ptr %4, align 2
  %34 = icmp eq i16 %33, 38
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8, !tbaa !109
  %37 = getelementptr inbounds ptr, ptr %36, i64 16
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %39 unwind label %20

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %9, i1 noundef zeroext false) #14
          to label %40 unwind label %47

40:                                               ; preds = %39
  %41 = load ptr, ptr %0, align 8, !tbaa !109
  %42 = getelementptr inbounds ptr, ptr %41, i64 13
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(832) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %45 unwind label %49

45:                                               ; preds = %40
  %46 = icmp eq i32 %44, 1
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
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
  %63 = load i16, ptr %4, align 2, !tbaa !189
  %64 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %62, i16 noundef zeroext %63) #14
  br i1 %64, label %95, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %8) #11
  %67 = load i16, ptr %4, align 2, !tbaa !189
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr %66, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %68, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %69) #14
          to label %70 unwind label %72

70:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %71 unwind label %72

71:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #11
  br label %95

72:                                               ; preds = %70, %65
  %73 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #11
  br label %74

74:                                               ; preds = %25, %22, %20, %72, %51
  %75 = phi { ptr, i32 } [ %52, %51 ], [ %73, %72 ], [ %26, %25 ], [ %21, %20 ], [ %24, %22 ]
  %76 = phi i32 [ %12, %51 ], [ %12, %72 ], [ %12, %25 ], [ %12, %20 ], [ %23, %22 ]
  %77 = extractvalue { ptr, i32 } %75, 1
  %78 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %173

80:                                               ; preds = %74
  %81 = extractvalue { ptr, i32 } %75, 0
  %82 = call ptr @__cxa_begin_catch(ptr %81) #11
  %83 = load ptr, ptr %0, align 8, !tbaa !109
  %84 = getelementptr inbounds ptr, ptr %83, i64 16
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %86 unwind label %124

86:                                               ; preds = %80
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %88 = load ptr, ptr %87, align 8, !tbaa !146
  %89 = icmp eq ptr %88, null
  br i1 %89, label %126, label %90

90:                                               ; preds = %86
  %91 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK11xercesc_2_720EndOfEntityException9getEntityEv(ptr noundef nonnull align 8 dereferenceable(12) %82) #14
  %92 = load ptr, ptr %88, align 8, !tbaa !109
  %93 = getelementptr inbounds ptr, ptr %92, i64 7
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(72) %91) #14
          to label %126 unwind label %124

95:                                               ; preds = %45, %56, %61, %71, %58
  %96 = phi i8 [ 0, %58 ], [ 0, %71 ], [ 0, %61 ], [ %15, %56 ], [ %15, %45 ]
  %97 = load i16, ptr %4, align 2, !tbaa !189
  br label %98

98:                                               ; preds = %95, %57, %55
  %99 = phi i16 [ %97, %95 ], [ %33, %57 ], [ %33, %55 ]
  %100 = phi i8 [ %96, %95 ], [ 0, %57 ], [ 1, %55 ]
  %101 = load i8, ptr %6, align 1, !tbaa !154, !range !149, !noundef !139
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
  %112 = load i16, ptr %4, align 2, !tbaa !189
  br label %113

113:                                              ; preds = %111, %98, %103, %108, %104, %105
  %114 = phi i16 [ 93, %105 ], [ 93, %104 ], [ %112, %111 ], [ 62, %108 ], [ %99, %103 ], [ %99, %98 ]
  %115 = phi i32 [ %107, %105 ], [ 1, %104 ], [ 0, %111 ], [ 0, %108 ], [ 0, %103 ], [ 0, %98 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %114) #14
          to label %116 unwind label %22

116:                                              ; preds = %113
  %117 = load i16, ptr %5, align 2, !tbaa !189
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %117) #14
          to label %120 unwind label %22

120:                                              ; preds = %119
  store i16 0, ptr %5, align 2, !tbaa !189
  br label %121

121:                                              ; preds = %120, %116, %126
  %122 = phi i8 [ %100, %120 ], [ %100, %116 ], [ 0, %126 ]
  %123 = phi i32 [ %115, %120 ], [ %115, %116 ], [ %76, %126 ]
  br label %10, !llvm.loop !415

124:                                              ; preds = %90, %80
  %125 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %173 unwind label %175

126:                                              ; preds = %90, %86
  invoke void @__cxa_end_catch()
          to label %121 unwind label %127

127:                                              ; preds = %126
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %173

129:                                              ; preds = %30, %31
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %131 = load i8, ptr %130, align 8, !tbaa !148, !range !149, !noundef !139
  %132 = icmp eq i8 %131, 0
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %134 = load i8, ptr %133, align 2, !range !149
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %132, i1 true, i1 %135
  br i1 %136, label %166, label %137

137:                                              ; preds = %129
  %138 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %139 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  %140 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #14
  %141 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %140, ptr noundef %138, i32 noundef %139) #14
          to label %142 unwind label %160

142:                                              ; preds = %137
  br i1 %141, label %143, label %166

143:                                              ; preds = %142
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %145 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %144) #14
          to label %146 unwind label %162

146:                                              ; preds = %143
  %147 = load ptr, ptr %145, align 8, !tbaa !157
  %148 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(33) %147) #14
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load ptr, ptr %145, align 8, !tbaa !157
  %151 = load ptr, ptr %150, align 8, !tbaa !109
  %152 = getelementptr inbounds ptr, ptr %151, i64 7
  %153 = load ptr, ptr %152, align 8
  %154 = invoke noundef i32 %153(ptr noundef nonnull align 8 dereferenceable(33) %150) #14
          to label %155 unwind label %164

155:                                              ; preds = %149
  %156 = icmp eq i32 %154, 1
  br i1 %156, label %157, label %166

157:                                              ; preds = %155
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %159 = load ptr, ptr %158, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %159, i32 noundef 84) #14
          to label %166 unwind label %164

160:                                              ; preds = %137
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %173

162:                                              ; preds = %143
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %173

164:                                              ; preds = %157, %149
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %173

166:                                              ; preds = %142, %155, %157, %146, %129
  %167 = load ptr, ptr %0, align 8, !tbaa !109
  %168 = getelementptr inbounds ptr, ptr %167, i64 16
  %169 = load ptr, ptr %168, align 8
  invoke void %169(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %170 unwind label %171

170:                                              ; preds = %166
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void

171:                                              ; preds = %166
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %173

173:                                              ; preds = %74, %160, %164, %162, %127, %124, %171
  %174 = phi { ptr, i32 } [ %172, %171 ], [ %128, %127 ], [ %125, %124 ], [ %161, %160 ], [ %165, %164 ], [ %163, %162 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %174

175:                                              ; preds = %124
  %176 = landingpad { ptr, i32 }
          catch ptr null
  %177 = extractvalue { ptr, i32 } %176, 0
  call void @__clang_call_terminate(ptr %177) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #4 comdat align 2 !prof !416 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %0, align 8, !tbaa !417
  %6 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !419
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 !prof !420 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  tail call void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 !prof !420 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) #14
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !416 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = load i8, ptr %0, align 8, !tbaa !417, !range !149, !noundef !139
  %5 = icmp ne i8 %4, 0
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %5) #14
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(832) %0, i1 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %"class.xercesc_2_7::Janitor.1", align 8
  %10 = alloca [16 x i16], align 16
  %11 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !189
  store i8 0, ptr %4, align 1, !tbaa !154
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %13 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #14
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 35) #14
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) #14
  br i1 %16, label %17, label %228

17:                                               ; preds = %15
  store i8 1, ptr %4, align 1, !tbaa !154
  %18 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #14
  %19 = icmp eq i32 %13, %18
  br i1 %19, label %228, label %20

20:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
  br label %228

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %22) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %24 = load i8, ptr %23, align 2, !tbaa !175, !range !149, !noundef !139
  %25 = icmp eq i8 %24, 0
  %26 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  br i1 %25, label %29, label %27

27:                                               ; preds = %21
  %28 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull %7) #14
          to label %31 unwind label %36

29:                                               ; preds = %21
  %30 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(40) %26) #14
          to label %31 unwind label %36

31:                                               ; preds = %29, %27
  %32 = phi i1 [ %28, %27 ], [ %30, %29 ]
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  %34 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226) #14
          to label %224 unwind label %36

36:                                               ; preds = %49, %45, %43, %40, %38, %35, %29, %27
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %226

38:                                               ; preds = %33
  %39 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 310, ptr noundef %39, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %224 unwind label %36

40:                                               ; preds = %31
  %41 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 59) #14
          to label %42 unwind label %36

42:                                               ; preds = %40
  br i1 %41, label %45, label %43

43:                                               ; preds = %42
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %44, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %45 unwind label %36

45:                                               ; preds = %43, %42
  %46 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #14
          to label %47 unwind label %36

47:                                               ; preds = %45
  %48 = icmp eq i32 %13, %46
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231) #14
          to label %50 unwind label %36

50:                                               ; preds = %49, %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !214
  %53 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %54 = invoke noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %52, ptr noundef %53) #14
          to label %55 unwind label %65

55:                                               ; preds = %50
  %56 = icmp eq ptr %54, null
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %58 = load i8, ptr %57, align 2, !tbaa !299, !range !149, !noundef !139
  %59 = icmp eq i8 %58, 0
  br i1 %56, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !range !149
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %59, i1 %63, i1 false
  br i1 %64, label %67, label %88

65:                                               ; preds = %88, %171, %92, %82, %76, %71, %50
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %226

67:                                               ; preds = %60
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %69 = load i8, ptr %68, align 8, !tbaa !148, !range !149, !noundef !139
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %224, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %73 = load ptr, ptr %72, align 8, !tbaa !138
  %74 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %73, i32 noundef 85, ptr noundef %74, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %224 unwind label %65

75:                                               ; preds = %55
  br i1 %59, label %84, label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %54, align 8, !tbaa !109
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef zeroext i1 %79(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
          to label %81 unwind label %65

81:                                               ; preds = %76
  br i1 %80, label %84, label %82

82:                                               ; preds = %81
  %83 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 298, ptr noundef %83, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %84 unwind label %65

84:                                               ; preds = %82, %81, %75
  %85 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  br i1 %85, label %86, label %171

86:                                               ; preds = %84
  %87 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  br i1 %87, label %88, label %91

88:                                               ; preds = %86, %60
  %89 = phi i32 [ 227, %60 ], [ 228, %86 ]
  %90 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %89, ptr noundef %90, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %224 unwind label %65

91:                                               ; preds = %86
  br i1 %1, label %92, label %93

92:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 270) #14
          to label %93 unwind label %65

93:                                               ; preds = %92, %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %94 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  %95 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  %96 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !216, !range !149, !noundef !139
  %99 = icmp ne i8 %98, 0
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %101 = load i8, ptr %100, align 1, !tbaa !217, !range !149, !noundef !139
  %102 = icmp ne i8 %101, 0
  %103 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %94, ptr noundef %95, ptr noundef %96, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %99, i1 noundef zeroext %102) #14
          to label %104 unwind label %123

104:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %105 = load ptr, ptr %8, align 8, !tbaa !182
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %105) #14
  %106 = icmp eq ptr %103, null
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = call ptr @__cxa_allocate_exception(i64 48) #11
  %109 = load ptr, ptr %8, align 8, !tbaa !182
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %109, align 8, !tbaa !109
  %113 = getelementptr inbounds ptr, ptr %112, i64 5
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(41) %109) #14
          to label %118 unwind label %125

116:                                              ; preds = %107
  %117 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  br label %118

118:                                              ; preds = %111, %116
  %119 = phi ptr [ %117, %116 ], [ %115, %111 ]
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %121 = load ptr, ptr %120, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull @.str, i32 noundef 3147, i32 noundef 46, ptr noundef %119, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %121) #14
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
  %130 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull %103, ptr noundef nonnull %54) #14
          to label %131 unwind label %127

131:                                              ; preds = %129
  br i1 %130, label %134, label %132

132:                                              ; preds = %131
  %133 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %133, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %166 unwind label %127

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %136 = load ptr, ptr %135, align 8, !tbaa !377
  %137 = icmp eq ptr %136, null
  br i1 %137, label %152, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %140 = load i32, ptr %139, align 8, !tbaa !379
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 8, !tbaa !379
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %143 = load i32, ptr %142, align 4, !tbaa !378
  %144 = icmp ugt i32 %141, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %147 = load ptr, ptr %146, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %143, ptr noundef nonnull %10, i32 noundef 15, i32 noundef 10, ptr noundef %147) #14
          to label %148 unwind label %150

148:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %149 unwind label %150

149:                                              ; preds = %148
  store i32 0, ptr %139, align 8, !tbaa !379
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  br label %152

150:                                              ; preds = %148, %145
  %151 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  br label %167

152:                                              ; preds = %149, %138, %134
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %154 = load ptr, ptr %153, align 8, !tbaa !146
  %155 = icmp eq ptr %154, null
  %156 = or i1 %155, %1
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %154, align 8, !tbaa !109
  %159 = getelementptr inbounds ptr, ptr %158, i64 12
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef nonnull align 8 dereferenceable(72) %54) #14
          to label %161 unwind label %127

161:                                              ; preds = %152, %157
  %162 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true) #14
          to label %163 unwind label %127

163:                                              ; preds = %161
  br i1 %162, label %164, label %165

164:                                              ; preds = %163
  invoke void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 0) #14
          to label %165 unwind label %127

165:                                              ; preds = %163, %164
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %224

166:                                              ; preds = %132
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %224

167:                                              ; preds = %150, %127, %125
  %168 = phi { ptr, i32 } [ %128, %127 ], [ %151, %150 ], [ %126, %125 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %169

169:                                              ; preds = %167, %123
  %170 = phi { ptr, i32 } [ %168, %167 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %226

171:                                              ; preds = %84
  %172 = load ptr, ptr %54, align 8, !tbaa !109
  %173 = getelementptr inbounds ptr, ptr %172, i64 7
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef zeroext i1 %174(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
          to label %176 unwind label %65

176:                                              ; preds = %171
  br i1 %175, label %177, label %180

177:                                              ; preds = %176
  %178 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  %179 = load i16, ptr %178, align 2, !tbaa !189
  store i16 %179, ptr %2, align 2, !tbaa !189
  store i8 1, ptr %4, align 1, !tbaa !154
  br label %224

180:                                              ; preds = %176
  %181 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  %182 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  %183 = call noundef i32 @_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  %184 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %181, i32 noundef 1, i32 noundef 1, ptr noundef %182, i32 noundef %183, i1 noundef zeroext false, i1 noundef zeroext true) #14
          to label %185 unwind label %190

185:                                              ; preds = %180
  %186 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %184, ptr noundef nonnull %54) #14
          to label %187 unwind label %190

187:                                              ; preds = %185
  br i1 %186, label %192, label %188

188:                                              ; preds = %187
  %189 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #14
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %189, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %192 unwind label %190

190:                                              ; preds = %223, %222, %219, %215, %188, %185, %180
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %226

192:                                              ; preds = %188, %187
  %193 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %194 = load ptr, ptr %193, align 8, !tbaa !377
  %195 = icmp eq ptr %194, null
  br i1 %195, label %210, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %198 = load i32, ptr %197, align 8, !tbaa !379
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 8, !tbaa !379
  %200 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %201 = load i32, ptr %200, align 4, !tbaa !378
  %202 = icmp ugt i32 %199, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %205 = load ptr, ptr %204, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %201, ptr noundef nonnull %11, i32 noundef 15, i32 noundef 10, ptr noundef %205) #14
          to label %206 unwind label %208

206:                                              ; preds = %203
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef null) #14
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
  %212 = load ptr, ptr %211, align 8, !tbaa !146
  %213 = icmp eq ptr %212, null
  %214 = or i1 %213, %1
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load ptr, ptr %212, align 8, !tbaa !109
  %217 = getelementptr inbounds ptr, ptr %216, i64 12
  %218 = load ptr, ptr %217, align 8
  invoke void %218(ptr noundef nonnull align 8 dereferenceable(8) %212, ptr noundef nonnull align 8 dereferenceable(72) %54) #14
          to label %219 unwind label %190

219:                                              ; preds = %210, %215
  %220 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true) #14
          to label %221 unwind label %190

221:                                              ; preds = %219
  br i1 %220, label %222, label %224

222:                                              ; preds = %221
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 220) #14
          to label %223 unwind label %190

223:                                              ; preds = %222
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 62) #14
          to label %224 unwind label %190

224:                                              ; preds = %88, %223, %221, %165, %166, %177, %67, %71, %35, %38
  %225 = phi i32 [ 2, %38 ], [ 2, %35 ], [ 2, %166 ], [ 1, %177 ], [ 2, %67 ], [ 2, %71 ], [ 0, %165 ], [ 0, %221 ], [ 0, %223 ], [ 2, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %228

226:                                              ; preds = %65, %169, %208, %190, %36
  %227 = phi { ptr, i32 } [ %37, %36 ], [ %66, %65 ], [ %170, %169 ], [ %191, %190 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %227

228:                                              ; preds = %17, %20, %15, %224
  %229 = phi i32 [ %225, %224 ], [ 2, %15 ], [ 1, %20 ], [ 1, %17 ]
  ret i32 %229

230:                                              ; preds = %122
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !182
  %4 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !142
  %9 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !421
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 true, i1 %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !422
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !423
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !267
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !421
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !424
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !425
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !426
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !262, !range !149, !noundef !139
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !265, !range !149, !noundef !139
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !266, !range !149, !noundef !139
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = load ptr, ptr %0, align 8, !tbaa !109
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712DGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DGXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !427
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #3 comdat align 2 !prof !194 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !428
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !429 {
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !430 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !431

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !189
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !432

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !189
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !433, !llvm.loop !434

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
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !435 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !436
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !427
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !437 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !438

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !226
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !412
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !439

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
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !440 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !441

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !189
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !442

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !189
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !443, !llvm.loop !444

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !226
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !412
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !445

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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 !prof !108 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !396
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !391
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !397
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !388
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !390
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !446
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #14
  store ptr %3, ptr %11, align 8, !tbaa !446
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !388
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !390
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !397
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !447
  %23 = load i8, ptr %9, align 8, !tbaa !391, !range !149, !noundef !139
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !392
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %26) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #13
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !396
  %31 = load ptr, ptr %30, align 8, !tbaa !109
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !448

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !397
  %37 = load i32, ptr %4, align 8, !tbaa !388
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !182
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !449

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !396
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 93, i32 noundef 48, ptr noundef %6) #14
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
  %11 = load ptr, ptr %0, align 8, !tbaa !396
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !388
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !109
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !397
  %21 = load i32, ptr %12, align 8, !tbaa !388
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !397
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !182
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !450
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !427
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !390
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !227 {
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %0) #14
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
declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !451 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !452
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !427
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
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !416 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !453, !range !149, !noundef !139
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !454 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 %3, ptr %4, align 8, !tbaa !453
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 !prof !420 {
  %3 = load i32, ptr %0, align 8, !tbaa !455
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !456
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %29, !prof !457

7:                                                ; preds = %2, %14
  %8 = phi i32 [ %15, %14 ], [ %3, %2 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !189
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %11) #14
  %13 = load i32, ptr %0, align 8, !tbaa !455
  br i1 %12, label %14, label %18, !prof !458

14:                                               ; preds = %7
  %15 = add i32 %13, 1
  store i32 %15, ptr %0, align 8, !tbaa !455
  %16 = load i32, ptr %4, align 4, !tbaa !456
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %7, label %18, !prof !459, !llvm.loop !460

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %13, %7 ], [ %15, %14 ]
  %20 = icmp eq i32 %3, %19
  br i1 %20, label %29, label %21, !prof !461

21:                                               ; preds = %18
  %22 = sub i32 %19, %3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !462
  %26 = add nsw i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !462
  %27 = zext i32 %3 to i64
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %27
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %28, i32 noundef %22) #14
  br label %29

29:                                               ; preds = %2, %21, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !463 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !296
  %8 = and i8 %7, 8
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 !prof !420 {
  %4 = load i32, ptr %0, align 8, !tbaa !455
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !456
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %16, label %8, !prof !464

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !465, !range !149, !noundef !139
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %31, !prof !466

12:                                               ; preds = %8
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #14
  br i1 %13, label %14, label %31, !prof !466

14:                                               ; preds = %12
  %15 = load i32, ptr %0, align 8, !tbaa !455
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ %4, %3 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !189
  %21 = icmp eq i16 %20, %1
  br i1 %21, label %31, label %22, !prof !467

22:                                               ; preds = %16
  %23 = add i32 %17, 1
  store i32 %23, ptr %0, align 8, !tbaa !455
  store i16 %20, ptr %2, align 2, !tbaa !189
  %24 = and i16 %20, -8368
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26, !prof !468

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !462
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !462
  br label %31

30:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false) #14
  br label %31

31:                                               ; preds = %26, %30, %16, %12, %8
  %32 = phi i1 [ false, %8 ], [ false, %12 ], [ false, %16 ], [ true, %30 ], [ true, %26 ]
  ret i1 %32
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !469
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !471 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !472
  %6 = load ptr, ptr %0, align 8, !tbaa !474
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #14
  store i32 %7, ptr %2, align 4, !tbaa !159
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !475
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !476

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !469
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #14
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #14
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !477, !llvm.loop !478

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !479 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !480

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !189
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !481

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !189
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !482

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
  %23 = load i16, ptr %22, align 2, !tbaa !189
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !483, !llvm.loop !484

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !471 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !424
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !485 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = load ptr, ptr %0, align 8, !tbaa !243
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #14
  store i32 %7, ptr %2, align 4, !tbaa !159
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !245
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !486

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !237
  %17 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #14
  br i1 %18, label %23, label %19, !prof !487

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !488, !llvm.loop !489

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !241 {
  store ptr %1, ptr %0, align 8, !tbaa !237
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !491
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14DTDElementDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %3 = load ptr, ptr %0, align 8, !tbaa !229
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !109
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(80) %3) #13
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !277 {
  %3 = load ptr, ptr %0, align 8, !tbaa !253
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !492

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !255
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !493

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !109
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !253
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !255
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_13DTDEntityDeclEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %3 = load ptr, ptr %0, align 8, !tbaa !269
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !109
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(75) %3) #13
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !227 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !291
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !494
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !495

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !303
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !291
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !182
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !300
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !182
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !182
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !496

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !303
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !300
  %49 = load ptr, ptr %46, align 8, !tbaa !109
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !300
  store i32 %12, ptr %6, align 8, !tbaa !494
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !108 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !427
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !322
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !360
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !361
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !109
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #14
  %22 = load i32, ptr %3, align 4, !tbaa !322
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !361
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !320
  %31 = load ptr, ptr %28, align 8, !tbaa !109
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #14
  store ptr %21, ptr %29, align 8, !tbaa !320
  store i32 %13, ptr %6, align 8, !tbaa !360
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !320
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !182
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !497

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !498 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !369
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !328
  %8 = load ptr, ptr %0, align 8, !tbaa !334
  %9 = load ptr, ptr %5, align 8, !tbaa !109
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !159
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !335
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !499

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !369
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !333
  %23 = load ptr, ptr %20, align 8, !tbaa !109
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !500

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !501, !llvm.loop !502

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.6", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !328
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !334
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !109
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !328
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !335
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !335
  store i32 %5, ptr %3, align 8, !tbaa !328
  %23 = load ptr, ptr %0, align 8, !tbaa !334
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !335
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !182
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !345
  %38 = load ptr, ptr %18, align 8, !tbaa !369
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !333
  %41 = load ptr, ptr %0, align 8, !tbaa !334
  %42 = load ptr, ptr %38, align 8, !tbaa !109
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !182
  store ptr %48, ptr %36, align 8, !tbaa !345
  store ptr %35, ptr %47, align 8, !tbaa !182
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !503

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !328
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !504

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !327 {
  store ptr %2, ptr %0, align 8, !tbaa !325
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !345
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !505
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.6", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !505
  store ptr null, ptr %0, align 8, !tbaa !505
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = load ptr, ptr %0, align 8, !tbaa !505
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.6", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !507
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !109
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !505
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.6", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !336 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !369
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !328
  %8 = load ptr, ptr %0, align 8, !tbaa !334
  %9 = load ptr, ptr %5, align 8, !tbaa !109
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !159
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !335
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !508

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !369
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !333
  %23 = load ptr, ptr %20, align 8, !tbaa !109
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !509

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !510, !llvm.loop !511

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !341 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !330
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !364

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !334
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.4, i32 noundef 99, i32 noundef 48, ptr noundef %6) #14
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
  %11 = load ptr, ptr %0, align 8, !tbaa !334
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !328
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !109
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !335
  %21 = load i32, ptr %12, align 8, !tbaa !328
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !365

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !335
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !182
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !366, !llvm.loop !512
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !513 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !363
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !514

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !246
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !245
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !515

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !491
  %20 = load ptr, ptr %17, align 8, !tbaa !237
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !109
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(80) %20) #13
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !243
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #14
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !516, !llvm.loop !517

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !245
  %34 = load i32, ptr %2, align 8, !tbaa !363
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !182
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !518, !llvm.loop !519
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !362 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !334
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  %5 = load ptr, ptr %2, align 8, !tbaa !109
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !335
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !369
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !109
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !446
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !388
  %9 = load ptr, ptr %0, align 8, !tbaa !396
  %10 = load ptr, ptr %6, align 8, !tbaa !109
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !159
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !397
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !446
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !394
  %24 = load ptr, ptr %21, align 8, !tbaa !109
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23) #14
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !395
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !520

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %28 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.7", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !388
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !396
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !109
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %14 = load ptr, ptr %0, align 8, !tbaa !396
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !388
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !397
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %23, ptr %21, align 8, !tbaa !397
  store i32 %6, ptr %3, align 8, !tbaa !388
  %24 = load ptr, ptr %0, align 8, !tbaa !396
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #14
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !397
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !182
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !447
  %39 = load ptr, ptr %19, align 8, !tbaa !446
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !394
  %42 = load ptr, ptr %0, align 8, !tbaa !396
  %43 = load ptr, ptr %39, align 8, !tbaa !109
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #14
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  store ptr %49, ptr %37, align 8, !tbaa !447
  store ptr %36, ptr %48, align 8, !tbaa !182
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !521

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !388
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !522

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !446
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !388
  %9 = load ptr, ptr %0, align 8, !tbaa !396
  %10 = load ptr, ptr %6, align 8, !tbaa !109
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !159
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !397
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !395
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !446
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !394
  %28 = load ptr, ptr %25, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #14
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !523

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 !prof !108 {
  store ptr %3, ptr %0, align 8, !tbaa !392
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !447
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !394
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !395
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !524
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !526
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !524
  store ptr null, ptr %0, align 8, !tbaa !524
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %3 = load ptr, ptr %0, align 8, !tbaa !524
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !526
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !109
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !524
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !526
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!107}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!35 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!36 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!37 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!38 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!39 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!40 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1025276}
!41 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 1025276}
!42 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 612}
!43 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, i64 612}
!44 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 1880}
!45 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 48}
!46 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 47}
!47 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_allocate_exception, i64 1}
!48 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_free_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_, i64 46}
!50 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 46}
!51 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!52 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!53 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!54 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!55 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_, i64 1}
!56 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!57 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 10}
!58 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!59 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!60 = !{ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, ptr @_ZN11xercesc_2_75QName9getPrefixEv, i64 200913}
!61 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!62 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 201775}
!63 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 201775}
!64 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 392072}
!65 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv, i64 1}
!66 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 885}
!67 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, ptr @_ZN11xercesc_2_722RefHashTableBucketElemIjEC2EPvPjPS1_, i64 884}
!68 = !{ptr @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE14findBucketElemEPKvRj, i64 872}
!69 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv, i64 190248}
!70 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 1}
!71 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!72 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!73 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!74 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!75 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!76 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, i64 6}
!77 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 6}
!78 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, i64 6}
!79 = !{ptr @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv, i64 1}
!80 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!81 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!82 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!83 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv, i64 4539474}
!84 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!85 = !{ptr @_ZN11xercesc_2_79ReaderMgr21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, i64 2534293}
!86 = !{ptr @_ZN11xercesc_2_79ReaderMgr16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, i64 2534293}
!87 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!88 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!89 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!90 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!91 = !{ptr @_ZN11xercesc_2_77XMLAttrD2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!92 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader18isPlainContentCharEt, i64 41950389}
!93 = !{ptr @_ZN11xercesc_2_79XMLReader21movePlainContentCharsERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 596891}
!94 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2493}
!95 = !{ptr @_ZN11xercesc_2_79XMLReader16getNextCharIfNotEtRt, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1019518}
!96 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 5}
!97 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 1}
!98 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!99 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 1927}
!100 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 2046}
!101 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 2046}
!102 = !{ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 1330}
!103 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!104 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!105 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!106 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 6}
!107 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!108 = !{!"function_entry_count", i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"vtable pointer", !111, i64 0}
!111 = !{!"Simple C++ TBAA"}
!112 = !{!113, !120, i64 776}
!113 = !{!"_ZTSN11xercesc_2_712DGXMLScannerE", !114, i64 0, !120, i64 776, !120, i64 784, !120, i64 792, !120, i64 800, !119, i64 808, !120, i64 816, !120, i64 824}
!114 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !115, i64 0, !116, i64 8, !118, i64 16, !118, i64 17, !118, i64 18, !118, i64 19, !118, i64 20, !118, i64 21, !118, i64 22, !118, i64 23, !118, i64 24, !118, i64 25, !118, i64 26, !118, i64 27, !118, i64 28, !118, i64 29, !118, i64 30, !118, i64 31, !118, i64 32, !118, i64 33, !118, i64 34, !118, i64 35, !118, i64 36, !118, i64 37, !118, i64 38, !119, i64 40, !119, i64 44, !119, i64 48, !119, i64 52, !119, i64 56, !119, i64 60, !119, i64 64, !119, i64 68, !120, i64 72, !119, i64 80, !119, i64 84, !119, i64 88, !119, i64 92, !119, i64 96, !120, i64 104, !120, i64 112, !120, i64 120, !120, i64 128, !120, i64 136, !120, i64 144, !120, i64 152, !120, i64 160, !120, i64 168, !118, i64 176, !121, i64 184, !120, i64 264, !124, i64 272, !120, i64 280, !120, i64 288, !120, i64 296, !120, i64 304, !120, i64 312, !120, i64 320, !120, i64 328, !120, i64 336, !120, i64 344, !123, i64 352, !120, i64 360, !125, i64 368, !126, i64 392, !126, i64 432, !126, i64 472, !126, i64 512, !126, i64 552, !126, i64 592, !126, i64 632, !127, i64 672}
!115 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!116 = !{!"long", !117, i64 0}
!117 = !{!"omnipotent char", !111, i64 0}
!118 = !{!"bool", !117, i64 0}
!119 = !{!"int", !117, i64 0}
!120 = !{!"any pointer", !117, i64 0}
!121 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !122, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !119, i64 40, !120, i64 48, !118, i64 56, !123, i64 60, !118, i64 64, !120, i64 72}
!122 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!123 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !117, i64 0}
!124 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !117, i64 0}
!125 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !119, i64 0, !120, i64 8, !120, i64 16}
!126 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !119, i64 0, !119, i64 4, !119, i64 8, !118, i64 12, !120, i64 16, !120, i64 24, !120, i64 32}
!127 = !{!"_ZTSN11xercesc_2_79ElemStackE", !119, i64 0, !119, i64 4, !128, i64 8, !120, i64 48, !119, i64 56, !119, i64 60, !119, i64 64, !119, i64 68, !119, i64 72, !119, i64 76, !119, i64 80, !120, i64 88, !120, i64 96}
!128 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !129, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !119, i64 32, !119, i64 36}
!129 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!130 = !{!113, !120, i64 784}
!131 = !{!113, !120, i64 800}
!132 = !{!113, !120, i64 816}
!133 = !{!113, !120, i64 824}
!134 = !{!135, !120, i64 0}
!135 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_12DGXMLScannerEEE", !120, i64 0, !117, i64 8}
!136 = !{!135, !117, i64 8}
!137 = !{!114, !120, i64 360}
!138 = !{!114, !120, i64 264}
!139 = !{}
!140 = !{!114, !120, i64 296}
!141 = !{!"function_entry_count", i64 1}
!142 = !{!143, !120, i64 32}
!143 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !144, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !119, i64 56, !118, i64 60}
!144 = !{!"_ZTSN11xercesc_2_77GrammarE", !129, i64 0}
!145 = !{!114, !119, i64 96}
!146 = !{!114, !120, i64 120}
!147 = !{!114, !118, i64 21}
!148 = !{!114, !118, i64 24}
!149 = !{i8 0, i8 2}
!150 = !{!"function_entry_count", i64 3}
!151 = !{!152, !120, i64 0}
!152 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEE", !120, i64 0, !117, i64 8}
!153 = !{!152, !117, i64 8}
!154 = !{!118, !118, i64 0}
!155 = distinct !{!155, !156}
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!158, !120, i64 0}
!158 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !120, i64 0, !119, i64 8, !119, i64 12, !119, i64 16, !120, i64 24, !120, i64 32, !119, i64 40, !119, i64 44, !118, i64 48, !118, i64 49, !118, i64 50, !119, i64 52, !120, i64 56, !119, i64 64, !120, i64 72, !119, i64 80, !119, i64 84}
!159 = !{!119, !119, i64 0}
!160 = distinct !{!160, !156}
!161 = !{!162, !163, i64 8}
!162 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !163, i64 8, !120, i64 16, !119, i64 24, !120, i64 32, !120, i64 40}
!163 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !117, i64 0}
!164 = !{!162, !120, i64 32}
!165 = !{!"branch_weights", i32 1, i32 4}
!166 = distinct !{!166, !156}
!167 = !{!168, !120, i64 0}
!168 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !120, i64 0, !119, i64 8}
!169 = !{!"function_entry_count", i64 2194501}
!170 = !{!127, !119, i64 60}
!171 = !{!"function_entry_count", i64 1668291}
!172 = !{!173, !120, i64 16}
!173 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !129, i64 0, !120, i64 8, !120, i64 16, !174, i64 24, !119, i64 28, !118, i64 32}
!174 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !117, i64 0}
!175 = !{!114, !118, i64 18}
!176 = !{!114, !119, i64 52}
!177 = !{!158, !119, i64 8}
!178 = !{!158, !118, i64 49}
!179 = !{!158, !118, i64 50}
!180 = !{!158, !120, i64 24}
!181 = !{!158, !119, i64 16}
!182 = !{!120, !120, i64 0}
!183 = !{!114, !120, i64 304}
!184 = !{!114, !120, i64 320}
!185 = !{!114, !118, i64 25}
!186 = !{!114, !120, i64 104}
!187 = !{!113, !119, i64 808}
!188 = distinct !{!188, !156}
!189 = !{!190, !190, i64 0}
!190 = !{!"short", !117, i64 0}
!191 = !{!114, !119, i64 60}
!192 = !{!114, !119, i64 64}
!193 = distinct !{!193, !156}
!194 = !{!"function_entry_count", i64 4926602}
!195 = !{!121, !120, i64 16}
!196 = distinct !{!196, !156}
!197 = !{!"function_entry_count", i64 680084}
!198 = !{!127, !120, i64 48}
!199 = !{!158, !119, i64 64}
!200 = !{!"function_entry_count", i64 680336}
!201 = !{!202, !203, i64 36}
!202 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !173, i64 0, !203, i64 36, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !120, i64 72}
!203 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !117, i64 0}
!204 = !{!"function_entry_count", i64 833744}
!205 = !{!"function_entry_count", i64 211020}
!206 = !{!207, !120, i64 24}
!207 = !{!"_ZTSN11xercesc_2_75QNameE", !129, i64 0, !119, i64 8, !119, i64 12, !119, i64 16, !119, i64 20, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48}
!208 = !{!114, !120, i64 128}
!209 = !{!114, !118, i64 30}
!210 = !{!114, !124, i64 272}
!211 = !{!114, !120, i64 288}
!212 = !{!114, !118, i64 23}
!213 = !{!114, !120, i64 280}
!214 = !{!113, !120, i64 792}
!215 = !{!114, !118, i64 31}
!216 = !{!114, !118, i64 17}
!217 = !{!114, !118, i64 37}
!218 = !{!114, !118, i64 29}
!219 = !{!"function_entry_count", i64 379609}
!220 = !{!221, !120, i64 8}
!221 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !120, i64 0, !120, i64 8}
!222 = !{!"function_entry_count", i64 1025276}
!223 = !{!"function_entry_count", i64 379607}
!224 = !{!221, !120, i64 0}
!225 = !{!"function_entry_count", i64 612}
!226 = !{!126, !119, i64 0}
!227 = !{!"function_entry_count", i64 10}
!228 = !{!126, !120, i64 32}
!229 = !{!230, !120, i64 0}
!230 = !{!"_ZTSN11xercesc_2_77JanitorINS_14DTDElementDeclEEE", !120, i64 0}
!231 = !{!"function_entry_count", i64 79}
!232 = !{!173, !174, i64 24}
!233 = !{!173, !118, i64 32}
!234 = !{!143, !119, i64 56}
!235 = !{!"function_entry_count", i64 1880}
!236 = !{!"branch_weights", i32 988, i32 894}
!237 = !{!238, !120, i64 0}
!238 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !120, i64 0, !120, i64 8}
!239 = !{!"function_entry_count", i64 173}
!240 = !{!173, !119, i64 28}
!241 = !{!"function_entry_count", i64 47}
!242 = !{!"branch_weights", i32 48, i32 1}
!243 = !{!244, !120, i64 0}
!244 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !120, i64 0, !120, i64 8, !120, i64 16, !119, i64 24, !119, i64 28, !119, i64 32}
!245 = !{!244, !120, i64 8}
!246 = !{!244, !119, i64 28}
!247 = !{!244, !119, i64 24}
!248 = !{!"branch_weights", i32 1, i32 48}
!249 = !{!244, !120, i64 16}
!250 = !{!"function_entry_count", i64 558789}
!251 = !{!"branch_weights", i32 158605, i32 400186}
!252 = !{!"function_entry_count", i64 52059}
!253 = !{!254, !120, i64 0}
!254 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !120, i64 0, !120, i64 8}
!255 = !{!254, !120, i64 8}
!256 = !{!257, !120, i64 0}
!257 = !{!"_ZTSN11xercesc_2_77JanitorINS_11InputSourceEEE", !120, i64 0}
!258 = !{!"branch_weights", i32 1, i32 2}
!259 = !{!"function_entry_count", i64 4}
!260 = !{!261, !120, i64 8}
!261 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !118, i64 0, !118, i64 1, !118, i64 2, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !120, i64 72}
!262 = !{!263, !118, i64 72}
!263 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !264, i64 0, !118, i64 72, !118, i64 73, !118, i64 74}
!264 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !129, i64 0, !119, i64 8, !119, i64 12, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64}
!265 = !{!263, !118, i64 73}
!266 = !{!263, !118, i64 74}
!267 = !{!264, !120, i64 48}
!268 = !{!264, !120, i64 64}
!269 = !{!270, !120, i64 0}
!270 = !{!"_ZTSN11xercesc_2_77JanitorINS_13DTDEntityDeclEEE", !120, i64 0}
!271 = !{!272, !118, i64 163945}
!272 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !119, i64 0, !117, i64 4, !119, i64 32772, !117, i64 32776, !117, i64 49160, !116, i64 114696, !116, i64 114704, !273, i64 114712, !120, i64 114720, !118, i64 114728, !118, i64 114729, !120, i64 114736, !119, i64 114744, !117, i64 114748, !119, i64 163900, !119, i64 163904, !274, i64 163908, !118, i64 163912, !275, i64 163916, !119, i64 163920, !118, i64 163924, !118, i64 163925, !120, i64 163928, !120, i64 163936, !118, i64 163944, !118, i64 163945, !120, i64 163952, !276, i64 163960, !120, i64 163968, !118, i64 163976, !123, i64 163980, !120, i64 163984}
!273 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !117, i64 0}
!274 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !117, i64 0}
!275 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !117, i64 0}
!276 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !117, i64 0}
!277 = !{!"function_entry_count", i64 243874}
!278 = !{!"function_entry_count", i64 2728090}
!279 = !{!"function_entry_count", i64 10769804}
!280 = !{!"function_entry_count", i64 1666355}
!281 = !{!"function_entry_count", i64 1231717351}
!282 = !{!"branch_weights", i32 621, i32 -1469098093}
!283 = !{!"branch_weights", i32 408901017, i32 1}
!284 = !{!"branch_weights", i32 267, i32 4}
!285 = !{!"branch_weights", i32 156, i32 112}
!286 = !{!"branch_weights", i32 1, i32 112}
!287 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!288 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!289 = distinct !{!289, !156}
!290 = !{!"function_entry_count", i64 190440}
!291 = !{!292, !119, i64 12}
!292 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !118, i64 8, !119, i64 12, !119, i64 16, !120, i64 24, !120, i64 32}
!293 = !{!"function_entry_count", i64 7478295}
!294 = !{!"function_entry_count", i64 5190970}
!295 = !{!272, !120, i64 163968}
!296 = !{!117, !117, i64 0}
!297 = !{!"function_entry_count", i64 1025888}
!298 = distinct !{!298, !156}
!299 = !{!114, !118, i64 22}
!300 = !{!292, !120, i64 24}
!301 = !{!"function_entry_count", i64 201935}
!302 = !{!"branch_weights", i32 201936, i32 1}
!303 = !{!292, !120, i64 32}
!304 = !{!"function_entry_count", i64 201775}
!305 = !{!306, !118, i64 0}
!306 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !118, i64 0, !307, i64 4, !119, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !118, i64 48}
!307 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !117, i64 0}
!308 = !{!306, !120, i64 24}
!309 = !{!306, !307, i64 4}
!310 = !{!306, !118, i64 48}
!311 = !{!306, !120, i64 40}
!312 = !{!"function_entry_count", i64 593014}
!313 = !{!314, !307, i64 12}
!314 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !129, i64 0, !315, i64 8, !307, i64 12, !316, i64 16, !118, i64 20, !118, i64 21, !119, i64 24, !120, i64 32, !120, i64 40, !120, i64 48}
!315 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !117, i64 0}
!316 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !117, i64 0}
!317 = !{!"function_entry_count", i64 200913}
!318 = !{!"function_entry_count", i64 159625}
!319 = !{!114, !120, i64 312}
!320 = !{!321, !120, i64 16}
!321 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEE", !118, i64 0, !119, i64 4, !119, i64 8, !120, i64 16, !120, i64 24}
!322 = !{!321, !119, i64 4}
!323 = !{!"function_entry_count", i64 392072}
!324 = !{!"branch_weights", i32 25, i32 392049}
!325 = !{!326, !120, i64 0}
!326 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !120, i64 0, !120, i64 8, !120, i64 16}
!327 = !{!"function_entry_count", i64 885}
!328 = !{!329, !119, i64 24}
!329 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !120, i64 0, !118, i64 8, !120, i64 16, !119, i64 24, !119, i64 28, !119, i64 32, !120, i64 40}
!330 = !{!329, !119, i64 32}
!331 = !{!"branch_weights", i32 886, i32 1}
!332 = !{!329, !118, i64 8}
!333 = !{!326, !120, i64 16}
!334 = !{!329, !120, i64 0}
!335 = !{!329, !120, i64 16}
!336 = !{!"function_entry_count", i64 872}
!337 = distinct !{!337, !156}
!338 = distinct !{!338, !156}
!339 = !{!114, !120, i64 112}
!340 = distinct !{!340, !156}
!341 = !{!"function_entry_count", i64 190248}
!342 = !{!"branch_weights", i32 189545, i32 705}
!343 = !{!"branch_weights", i32 1, i32 704}
!344 = !{!"branch_weights", i32 4167, i32 886}
!345 = !{!326, !120, i64 8}
!346 = !{!"branch_weights", i32 886, i32 0}
!347 = distinct !{!347, !156}
!348 = !{!"branch_weights", i32 4349, i32 704}
!349 = distinct !{!349, !156}
!350 = distinct !{!350, !156}
!351 = !{!"function_entry_count", i64 8985736}
!352 = !{!"function_entry_count", i64 695}
!353 = !{!114, !119, i64 40}
!354 = !{!261, !118, i64 1}
!355 = !{!114, !120, i64 136}
!356 = !{!114, !120, i64 144}
!357 = !{!114, !120, i64 168}
!358 = !{!114, !118, i64 176}
!359 = !{!321, !118, i64 0}
!360 = !{!321, !119, i64 8}
!361 = !{!321, !120, i64 24}
!362 = !{!"function_entry_count", i64 6}
!363 = !{!244, !119, i64 32}
!364 = !{!"branch_weights", i32 1, i32 7}
!365 = !{!"branch_weights", i32 1, i32 223}
!366 = !{!"branch_weights", i32 223, i32 13057}
!367 = distinct !{!367, !156}
!368 = !{!329, !119, i64 28}
!369 = !{!329, !120, i64 40}
!370 = !{!"function_entry_count", i64 401820}
!371 = !{!314, !315, i64 8}
!372 = !{!"function_entry_count", i64 200910}
!373 = !{!314, !118, i64 21}
!374 = !{!"function_entry_count", i64 19496}
!375 = !{!314, !120, i64 32}
!376 = !{!114, !119, i64 56}
!377 = !{!114, !120, i64 344}
!378 = !{!114, !119, i64 44}
!379 = !{!114, !119, i64 48}
!380 = !{!114, !119, i64 88}
!381 = !{!"function_entry_count", i64 12}
!382 = !{!383, !120, i64 16}
!383 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32}
!384 = !{!"function_entry_count", i64 3529098}
!385 = !{!"function_entry_count", i64 514}
!386 = !{!"branch_weights", i32 1, i32 515}
!387 = !{!"function_entry_count", i64 360316}
!388 = !{!389, !119, i64 24}
!389 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !120, i64 0, !118, i64 8, !120, i64 16, !119, i64 24, !119, i64 28, !120, i64 32}
!390 = !{!389, !119, i64 28}
!391 = !{!389, !118, i64 8}
!392 = !{!393, !120, i64 0}
!393 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !120, i64 0, !120, i64 8, !120, i64 16, !119, i64 24}
!394 = !{!393, !120, i64 16}
!395 = !{!393, !119, i64 24}
!396 = !{!389, !120, i64 0}
!397 = !{!389, !120, i64 16}
!398 = !{!399, !120, i64 0}
!399 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !120, i64 0, !120, i64 8, !116, i64 16, !116, i64 24}
!400 = !{!114, !118, i64 16}
!401 = !{!"function_entry_count", i64 190774}
!402 = !{!403, !404, i64 0}
!403 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !404, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40}
!404 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !117, i64 0}
!405 = !{!403, !120, i64 8}
!406 = !{!403, !120, i64 16}
!407 = !{!403, !120, i64 24}
!408 = !{!403, !120, i64 32}
!409 = !{!403, !120, i64 40}
!410 = !{!"function_entry_count", i64 3115354}
!411 = !{!"function_entry_count", i64 7992849}
!412 = !{!126, !119, i64 4}
!413 = !{!"branch_weights", i32 1, i32 7992850}
!414 = !{!"function_entry_count", i64 1275875}
!415 = distinct !{!415, !156}
!416 = !{!"function_entry_count", i64 4539474}
!417 = !{!418, !118, i64 0}
!418 = !{!"_ZTSN11xercesc_2_715ThrowEOEJanitorE", !118, i64 0, !120, i64 8}
!419 = !{!418, !120, i64 8}
!420 = !{!"function_entry_count", i64 2534293}
!421 = !{!264, !120, i64 40}
!422 = !{!264, !120, i64 32}
!423 = !{!264, !120, i64 56}
!424 = !{!264, !120, i64 24}
!425 = !{!264, !120, i64 16}
!426 = !{!264, !119, i64 12}
!427 = !{!162, !120, i64 40}
!428 = !{!272, !119, i64 163904}
!429 = !{!"function_entry_count", i64 5836268}
!430 = !{!"function_entry_count", i64 2453164456}
!431 = !{!"branch_weights", i32 1, i32 -1841802839}
!432 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!433 = !{!"branch_weights", i32 408669070, i32 -279908794}
!434 = distinct !{!434, !156}
!435 = !{!"function_entry_count", i64 2192223}
!436 = !{!207, !120, i64 32}
!437 = !{!"function_entry_count", i64 2718768}
!438 = !{!"branch_weights", i32 1, i32 2718769}
!439 = !{!"branch_weights", i32 2718765, i32 5}
!440 = !{!"function_entry_count", i64 789922}
!441 = !{!"branch_weights", i32 1, i32 789923}
!442 = !{!"branch_weights", i32 285, i32 789639}
!443 = !{!"branch_weights", i32 789639, i32 41628304}
!444 = distinct !{!444, !156}
!445 = !{!"branch_weights", i32 789637, i32 3}
!446 = !{!389, !120, i64 32}
!447 = !{!393, !120, i64 8}
!448 = distinct !{!448, !156}
!449 = distinct !{!449, !156}
!450 = distinct !{!450, !156}
!451 = !{!"function_entry_count", i64 6553673}
!452 = !{!207, !119, i64 20}
!453 = !{!121, !118, i64 56}
!454 = !{!"function_entry_count", i64 9078948}
!455 = !{!272, !119, i64 0}
!456 = !{!272, !119, i64 32772}
!457 = !{!"branch_weights", i32 2493, i32 1}
!458 = !{!"branch_weights", i32 39432941, i32 2531801}
!459 = !{!"branch_weights", i32 41962248, i32 2493}
!460 = distinct !{!460, !156}
!461 = !{!"branch_weights", i32 1641493687, i32 505989961}
!462 = !{!272, !116, i64 114696}
!463 = !{!"function_entry_count", i64 41964740}
!464 = !{!"branch_weights", i32 2531801, i32 2494}
!465 = !{!272, !118, i64 114729}
!466 = !{!"branch_weights", i32 2494, i32 1}
!467 = !{!"branch_weights", i32 1512650, i32 1021645}
!468 = !{!"branch_weights", i32 1019521, i32 2125}
!469 = !{!470, !120, i64 0}
!470 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !120, i64 0, !120, i64 8}
!471 = !{!"function_entry_count", i64 5}
!472 = !{!473, !119, i64 32}
!473 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !120, i64 0, !120, i64 8, !120, i64 16, !119, i64 24, !119, i64 28, !119, i64 32}
!474 = !{!473, !120, i64 0}
!475 = !{!473, !120, i64 8}
!476 = !{!"branch_weights", i32 5, i32 1}
!477 = !{!"branch_weights", i32 1, i32 0}
!478 = distinct !{!478, !156}
!479 = !{!"function_entry_count", i64 4646679}
!480 = !{!"branch_weights", i32 1, i32 4646680}
!481 = !{!"branch_weights", i32 1216534, i32 3430147}
!482 = !{!"branch_weights", i32 1, i32 3430146}
!483 = !{!"branch_weights", i32 3430146, i32 42249130}
!484 = distinct !{!484, !156}
!485 = !{!"function_entry_count", i64 1927}
!486 = !{!"branch_weights", i32 1, i32 1034}
!487 = !{!"branch_weights", i32 894, i32 391}
!488 = !{!"branch_weights", i32 1034, i32 250}
!489 = distinct !{!489, !156}
!490 = !{!"function_entry_count", i64 1330}
!491 = !{!238, !120, i64 8}
!492 = !{!"branch_weights", i32 191816, i32 52060}
!493 = !{!"branch_weights", i32 1, i32 52060}
!494 = !{!292, !119, i64 16}
!495 = !{!"branch_weights", i32 1, i32 11}
!496 = distinct !{!496, !156}
!497 = distinct !{!497, !156}
!498 = !{!"function_entry_count", i64 392957}
!499 = !{!"branch_weights", i32 1, i32 909}
!500 = !{!"branch_weights", i32 392049, i32 30}
!501 = !{!"branch_weights", i32 909, i32 391169}
!502 = distinct !{!502, !156}
!503 = distinct !{!503, !156}
!504 = distinct !{!504, !156}
!505 = !{!506, !120, i64 0}
!506 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !120, i64 0, !120, i64 8}
!507 = !{!506, !120, i64 8}
!508 = !{!"branch_weights", i32 843, i32 30}
!509 = !{!"branch_weights", i32 1, i32 30}
!510 = !{!"branch_weights", i32 30, i32 0}
!511 = distinct !{!511, !156}
!512 = distinct !{!512, !156}
!513 = !{!"function_entry_count", i64 9}
!514 = !{!"branch_weights", i32 1, i32 159}
!515 = !{!"branch_weights", i32 454, i32 48}
!516 = !{!"branch_weights", i32 48, i32 0}
!517 = distinct !{!517, !156}
!518 = !{!"branch_weights", i32 7873, i32 159}
!519 = distinct !{!519, !156}
!520 = distinct !{!520, !156}
!521 = distinct !{!521, !156}
!522 = distinct !{!522, !156}
!523 = distinct !{!523, !156}
!524 = !{!525, !120, i64 0}
!525 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEE", !120, i64 0, !120, i64 8}
!526 = !{!525, !120, i64 8}
