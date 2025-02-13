; ModuleID = 'XMLScanner.cpp'
source_filename = "XMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::MalformedURLException" = type { %"class.xercesc_2_7::XMLException" }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall.0" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::XMLPScanToken" = type { i32, i32 }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLRefInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, ptr, ptr }
%"class.xercesc_2_7::ThrowEOEJanitor" = type { i8, ptr }
%"class.xercesc_2_7::XMLGrammarPool" = type <{ ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_720XMLBufferFullHandlerC2Ev = comdat any

$_ZNK11xercesc_2_715GrammarResolver27getGrammarPoolMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEED2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZNK11xercesc_2_712XMLException12getErrorTypeEv = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv = comdat any

$_ZN11xercesc_2_713XMLPScanToken3setEjj = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner13getDocHandlerEv = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv = comdat any

$_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner15getErrorHandlerEv = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner16getErrorReporterEv = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16getEntityHandlerEv = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv = comdat any

$_ZN11xercesc_2_710XMLScanner11setDoSchemaEb = comdat any

$_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv = comdat any

$_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb = comdat any

$_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv = comdat any

$_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb = comdat any

$_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv = comdat any

$_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb = comdat any

$_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv = comdat any

$_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb = comdat any

$_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv = comdat any

$_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb = comdat any

$_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv = comdat any

$_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb = comdat any

$_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv = comdat any

$_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb = comdat any

$_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv = comdat any

$_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb = comdat any

$_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv = comdat any

$_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb = comdat any

$_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv = comdat any

$_ZN11xercesc_2_710XMLScanner16setNormalizeDataEb = comdat any

$_ZNK11xercesc_2_710XMLScanner16getNormalizeDataEv = comdat any

$_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt = comdat any

$_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv = comdat any

$_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt = comdat any

$_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv = comdat any

$_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE = comdat any

$_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv = comdat any

$_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE = comdat any

$_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv = comdat any

$_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_712XMLValidator14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_77XMLErrs7isFatalENS0_5CodesE = comdat any

$_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE = comdat any

$_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79ReaderMgr12skipPastCharEt = comdat any

$_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZNK11xercesc_2_79XMLBufBid6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv = comdat any

$_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_79XMLReader9isXMLCharEt = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZNK11xercesc_2_79ElemStack7isEmptyEv = comdat any

$_ZN11xercesc_2_79ElemStack18setCommentOrPISeenEv = comdat any

$_ZNK11xercesc_2_79XMLReader13getLineNumberEv = comdat any

$_ZNK11xercesc_2_79XMLReader15getColumnNumberEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13setXMLVersionENS_9XMLReader10XMLVersionE = comdat any

$_ZNK11xercesc_2_79XMLBuffer6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79ReaderMgr10peekStringEPKt = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierD2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv = comdat any

$_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv = comdat any

$_ZNK11xercesc_2_710XMLRefInfo7getUsedEv = comdat any

$_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb = comdat any

$_ZN11xercesc_2_715ThrowEOEJanitorD2Ev = comdat any

$_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZNK11xercesc_2_79XMLReader13isControlCharEt = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZN11xercesc_2_710XMLScanner15resolveSystemIdEPKtS2_ = comdat any

$_ZN11xercesc_2_720XMLBufferFullHandlerD2Ev = comdat any

$_ZN11xercesc_2_720XMLBufferFullHandlerD0Ev = comdat any

$_ZN11xercesc_2_714XMLGrammarPool16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv = comdat any

$_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev = comdat any

$_ZN11xercesc_2_77XMLAttrD2Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7isEmptyEv = comdat any

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

$_ZTSN11xercesc_2_720XMLBufferFullHandlerE = comdat any

$_ZTIN11xercesc_2_720XMLBufferFullHandlerE = comdat any

$_ZTVN11xercesc_2_720XMLBufferFullHandlerE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZN11xercesc_2_7L19scannerMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L16cleanupMsgLoaderE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L10gMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L13sScannerMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L11sRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_710XMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XMLScannerE, ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_710XMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_710XMLScanner15resolveSystemIdEPKtS2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [15 x i8] c"XMLScanner.cpp\00", align 1
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L10gScannerIdE = internal unnamed_addr global i32 0, align 4
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni10fgPIStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgCommentStringE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgDocTypeStringE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [10 x i8] c"in prolog\00", align 1
@_ZN11xercesc_2_76XMLUni15fgVersionStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgStandaloneStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_0E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgYesStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgNoStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgXMLDeclStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgXMLDeclStringSpaceE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni19fgXMLDeclStringHTabE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgXMLDeclStringLFE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgXMLDeclStringCRE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgXMLDeclStringSpaceUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgXMLDeclStringHTabUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLDeclStringLFUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLDeclStringCRUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgXMLStringSpaceE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgXMLStringHTabE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLStringLFE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLStringCRE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgXMLStringSpaceUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgXMLStringHTabUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLStringLFUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLStringCRUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgUnknownURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE9gCDATAStr = internal constant [8 x i16] [i16 33, i16 91, i16 67, i16 68, i16 65, i16 84, i16 65, i16 0], align 16
@_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE14gCommentString = internal constant [4 x i16] [i16 33, i16 45, i16 45, i16 0], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710XMLScannerE = dso_local constant [28 x i8] c"N11xercesc_2_710XMLScannerE\00", align 1
@_ZTSN11xercesc_2_720XMLBufferFullHandlerE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720XMLBufferFullHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_720XMLBufferFullHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720XMLBufferFullHandlerE }, comdat, align 8
@_ZTIN11xercesc_2_710XMLScannerE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XMLScannerE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_720XMLBufferFullHandlerE, i64 2 }, align 8
@_ZTVN11xercesc_2_720XMLBufferFullHandlerE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720XMLBufferFullHandlerE, ptr @_ZN11xercesc_2_720XMLBufferFullHandlerD2Ev, ptr @_ZN11xercesc_2_720XMLBufferFullHandlerD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E = external global [65536 x i8], align 16
@_ZN11xercesc_2_710XMLChar1_09enableNELE = external local_unnamed_addr global i8, align 1
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external global [65536 x i8], align 16
@_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE5ResetEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XMLScanner.cpp, ptr null }]

@_ZN11xercesc_2_710XMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710XMLScannerD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #3 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19scannerMutexCleanupE) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #3 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner15reinitMsgLoaderEv() #5 align 2 !prof !177 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !178
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !182
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv() #5 align 2 !prof !184 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !178
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !178
  store i1 false, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer26initializeScannerMsgLoaderEv() local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE) #17
  store ptr %1, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !178
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner15reinitMsgLoaderEv) #17
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #17
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6) #17
          to label %7 unwind label %8

7:                                                ; preds = %4
  store ptr %5, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !178
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19scannerMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv) #17
  store i1 true, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %5) #18
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  tail call void @_ZN11xercesc_2_720XMLBufferFullHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  store i64 1048576, ptr %6, align 8, !tbaa !186
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store <8 x i8> <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>, ptr %7, align 8, !tbaa !201
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %8, align 8
  store <4 x i8> <i8 1, i8 0, i8 0, i8 1>, ptr %9, align 4, !tbaa !201
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  store i8 1, ptr %10, align 8, !tbaa !202
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i64 6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  store i32 2, ptr %13, align 8, !tbaa !203
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  store i32 0, ptr %14, align 4, !tbaa !204
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  store i32 0, ptr %15, align 8, !tbaa !205
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %16, i8 0, i64 73, i1 false)
  invoke void @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef %3) #17
          to label %18 unwind label %45

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %1, ptr %19, align 8, !tbaa !206
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 0, ptr %20, align 8, !tbaa !207
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  store ptr %2, ptr %21, align 8, !tbaa !208
  %22 = invoke noundef ptr @_ZNK11xercesc_2_715GrammarResolver27getGrammarPoolMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #17
          to label %23 unwind label %49

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  store ptr %22, ptr %24, align 8, !tbaa !209
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %25, i8 0, i64 60, i1 false)
  store ptr %3, ptr %26, align 8, !tbaa !210
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef %3) #17
          to label %28 unwind label %49

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %29, i32 noundef 1023, ptr noundef %3) #17
          to label %30 unwind label %53

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef 1023, ptr noundef %3) #17
          to label %32 unwind label %57

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 1023, ptr noundef %3) #17
          to label %34 unwind label %61

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef 1023, ptr noundef %3) #17
          to label %36 unwind label %65

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %37, i32 noundef 1023, ptr noundef %3) #17
          to label %38 unwind label %69

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef 1023, ptr noundef %3) #17
          to label %40 unwind label %73

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %41, i32 noundef 1023, ptr noundef %3) #17
          to label %42 unwind label %77

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %43, ptr noundef %3) #17
          to label %44 unwind label %81

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_710XMLScanner7cleanUpEv to i64), i64 0) #17
  invoke void @_ZN11xercesc_2_710XMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %98 unwind label %85

45:                                               ; preds = %4
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = extractvalue { ptr, i32 } %46, 0
  %48 = extractvalue { ptr, i32 } %46, 1
  br label %129

49:                                               ; preds = %23, %18
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  br label %126

53:                                               ; preds = %28
  %54 = landingpad { ptr, i32 }
          cleanup
  %55 = extractvalue { ptr, i32 } %54, 0
  %56 = extractvalue { ptr, i32 } %54, 1
  br label %123

57:                                               ; preds = %30
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = extractvalue { ptr, i32 } %58, 0
  %60 = extractvalue { ptr, i32 } %58, 1
  br label %120

61:                                               ; preds = %32
  %62 = landingpad { ptr, i32 }
          cleanup
  %63 = extractvalue { ptr, i32 } %62, 0
  %64 = extractvalue { ptr, i32 } %62, 1
  br label %117

65:                                               ; preds = %34
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = extractvalue { ptr, i32 } %66, 0
  %68 = extractvalue { ptr, i32 } %66, 1
  br label %114

69:                                               ; preds = %36
  %70 = landingpad { ptr, i32 }
          cleanup
  %71 = extractvalue { ptr, i32 } %70, 0
  %72 = extractvalue { ptr, i32 } %70, 1
  br label %111

73:                                               ; preds = %38
  %74 = landingpad { ptr, i32 }
          cleanup
  %75 = extractvalue { ptr, i32 } %74, 0
  %76 = extractvalue { ptr, i32 } %74, 1
  br label %108

77:                                               ; preds = %40
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = extractvalue { ptr, i32 } %78, 0
  %80 = extractvalue { ptr, i32 } %78, 1
  br label %105

81:                                               ; preds = %42
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = extractvalue { ptr, i32 } %82, 0
  %84 = extractvalue { ptr, i32 } %82, 1
  br label %102

85:                                               ; preds = %44
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %87 = extractvalue { ptr, i32 } %86, 0
  %88 = extractvalue { ptr, i32 } %86, 1
  %89 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = call ptr @__cxa_begin_catch(ptr %87) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  invoke void @__cxa_rethrow() #19
          to label %137 unwind label %93

93:                                               ; preds = %91
  %94 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %95 unwind label %134

95:                                               ; preds = %93
  %96 = extractvalue { ptr, i32 } %94, 1
  %97 = extractvalue { ptr, i32 } %94, 0
  br label %99

98:                                               ; preds = %44
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void

99:                                               ; preds = %95, %85
  %100 = phi i32 [ %96, %95 ], [ %88, %85 ]
  %101 = phi ptr [ %97, %95 ], [ %87, %85 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %43) #18
  br label %102

102:                                              ; preds = %99, %81
  %103 = phi i32 [ %100, %99 ], [ %84, %81 ]
  %104 = phi ptr [ %101, %99 ], [ %83, %81 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %41) #18
  br label %105

105:                                              ; preds = %102, %77
  %106 = phi i32 [ %103, %102 ], [ %80, %77 ]
  %107 = phi ptr [ %104, %102 ], [ %79, %77 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %39) #18
  br label %108

108:                                              ; preds = %105, %73
  %109 = phi i32 [ %106, %105 ], [ %76, %73 ]
  %110 = phi ptr [ %107, %105 ], [ %75, %73 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %37) #18
  br label %111

111:                                              ; preds = %108, %69
  %112 = phi i32 [ %109, %108 ], [ %72, %69 ]
  %113 = phi ptr [ %110, %108 ], [ %71, %69 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %35) #18
  br label %114

114:                                              ; preds = %111, %65
  %115 = phi i32 [ %112, %111 ], [ %68, %65 ]
  %116 = phi ptr [ %113, %111 ], [ %67, %65 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %33) #18
  br label %117

117:                                              ; preds = %114, %61
  %118 = phi i32 [ %115, %114 ], [ %64, %61 ]
  %119 = phi ptr [ %116, %114 ], [ %63, %61 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %31) #18
  br label %120

120:                                              ; preds = %117, %57
  %121 = phi i32 [ %118, %117 ], [ %60, %57 ]
  %122 = phi ptr [ %119, %117 ], [ %59, %57 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %29) #18
  br label %123

123:                                              ; preds = %120, %53
  %124 = phi i32 [ %121, %120 ], [ %56, %53 ]
  %125 = phi ptr [ %122, %120 ], [ %55, %53 ]
  call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %27) #18
  br label %126

126:                                              ; preds = %123, %49
  %127 = phi i32 [ %124, %123 ], [ %52, %49 ]
  %128 = phi ptr [ %125, %123 ], [ %51, %49 ]
  call void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %17) #18
  br label %129

129:                                              ; preds = %126, %45
  %130 = phi i32 [ %127, %126 ], [ %48, %45 ]
  %131 = phi ptr [ %128, %126 ], [ %47, %45 ]
  call void @_ZN11xercesc_2_720XMLBufferFullHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %132 = insertvalue { ptr, i32 } poison, ptr %131, 0
  %133 = insertvalue { ptr, i32 } %132, i32 %130, 1
  resume { ptr, i32 } %133

134:                                              ; preds = %93
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  call void @__clang_call_terminate(ptr %136) #16
  unreachable

137:                                              ; preds = %91
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !211 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720XMLBufferFullHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_720XMLBufferFullHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715GrammarResolver27getGrammarPoolMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = tail call noundef ptr @_ZN11xercesc_2_714XMLGrammarPool16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(17) %3) #17
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !215 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i32 0, ptr %0, align 8, !tbaa !216
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !217
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !218
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !219
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !220
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !182
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #17
  store ptr %16, ptr %9, align 8, !tbaa !221
  store i16 0, ptr %16, align 2, !tbaa !222
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0) #6 align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !182
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #18
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #18
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %16 = load ptr, ptr %15, align 8, !tbaa !226
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !182
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(16) %16) #18
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %24 = load ptr, ptr %23, align 8, !tbaa !210
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %26 = load ptr, ptr %25, align 8, !tbaa !227
  %27 = load ptr, ptr %24, align 8, !tbaa !182
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %26) #17
  %30 = load ptr, ptr %23, align 8, !tbaa !210
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %32 = load ptr, ptr %31, align 8, !tbaa !228
  %33 = load ptr, ptr %30, align 8, !tbaa !182
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #17
  %36 = load ptr, ptr %23, align 8, !tbaa !210
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %38 = load ptr, ptr %37, align 8, !tbaa !229
  %39 = load ptr, ptr %36, align 8, !tbaa !182
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38) #17
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  br label %50

44:                                               ; preds = %50
  %45 = load ptr, ptr %23, align 8, !tbaa !210
  %46 = load ptr, ptr %43, align 8, !tbaa !230
  %47 = load ptr, ptr %45, align 8, !tbaa !182
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %46) #17
  ret void

50:                                               ; preds = %22, %50
  %51 = phi i32 [ 0, %22 ], [ %60, %50 ]
  %52 = load ptr, ptr %23, align 8, !tbaa !210
  %53 = load ptr, ptr %43, align 8, !tbaa !230
  %54 = zext i32 %51 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !178
  %57 = load ptr, ptr %52, align 8, !tbaa !182
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %56) #17
  %60 = add i32 %51, 1
  %61 = load i32, ptr %42, align 8, !tbaa !231
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %44, label %50, !prof !232, !llvm.loop !233
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #5 comdat align 2 !prof !185 {
  store ptr %1, ptr %0, align 8, !tbaa !235
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !237
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gScannerMutexEv() #17
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #17
  %4 = load i32, ptr @_ZN11xercesc_2_7L10gScannerIdE, align 4, !tbaa !238
  %5 = add i32 %4, 1
  store i32 %5, ptr @_ZN11xercesc_2_7L10gScannerIdE, align 4, !tbaa !238
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  store i32 %5, ptr %6, align 4, !tbaa !204
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %8 = load ptr, ptr %7, align 8, !tbaa !210
  %9 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %8) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 32, i1 noundef zeroext true, ptr noundef %10) #17
          to label %11 unwind label %47

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  store ptr %9, ptr %12, align 8, !tbaa !224
  %13 = load ptr, ptr %7, align 8, !tbaa !210
  %14 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %13) #17
  %15 = load ptr, ptr %7, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %15) #17
          to label %16 unwind label %49

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  store ptr %14, ptr %17, align 8, !tbaa !226
  %18 = load ptr, ptr %7, align 8, !tbaa !210
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %20 = load i32, ptr %19, align 8, !tbaa !203
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = load ptr, ptr %18, align 8, !tbaa !182
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %22) #17
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  store ptr %26, ptr %27, align 8, !tbaa !230
  %28 = load ptr, ptr %7, align 8, !tbaa !210
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 256) #17
  %33 = load ptr, ptr %27, align 8, !tbaa !230
  store ptr %32, ptr %33, align 8, !tbaa !178
  %34 = load ptr, ptr %27, align 8, !tbaa !230
  %35 = load ptr, ptr %34, align 8, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %35, i8 0, i64 256, i1 false)
  %36 = load ptr, ptr %27, align 8, !tbaa !230
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  store ptr null, ptr %37, align 8, !tbaa !178
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !186
  %41 = trunc i64 %40 to i32
  call void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull %0, i32 noundef %41) #17
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %43 = load ptr, ptr %42, align 8, !tbaa !206
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45, !prof !239

45:                                               ; preds = %16
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  store i8 1, ptr %46, align 1, !tbaa !240
  call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %43) #17
  br label %51

47:                                               ; preds = %1
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #18
  br label %52

49:                                               ; preds = %11
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #18
  br label %52

51:                                               ; preds = %45, %16
  ret void

52:                                               ; preds = %49, %47
  %53 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  resume { ptr, i32 } %53
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !185 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %2 = load ptr, ptr %0, align 8, !tbaa !235
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !239

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !237
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !237
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !182
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !241
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(776) %11) #17
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = load ptr, ptr %3, align 8, !tbaa !182
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #17
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
declare void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %9 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  tail call void @_ZN11xercesc_2_720XMLBufferFullHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  store i64 1048576, ptr %10, align 8, !tbaa !186
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store <8 x i8> <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>, ptr %11, align 8, !tbaa !201
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %12, align 8
  store <4 x i8> <i8 1, i8 0, i8 0, i8 1>, ptr %13, align 4, !tbaa !201
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  store i8 1, ptr %14, align 8, !tbaa !202
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %15, i8 0, i64 6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %16, i8 0, i64 48, i1 false)
  store i32 2, ptr %17, align 8, !tbaa !203
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  store i32 0, ptr %18, align 4, !tbaa !204
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  store i32 0, ptr %19, align 8, !tbaa !205
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store ptr %1, ptr %21, align 8, !tbaa !242
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %2, ptr %22, align 8, !tbaa !243
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %3, ptr %23, align 8, !tbaa !244
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %4, ptr %24, align 8, !tbaa !245
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %25, i8 0, i64 25, i1 false)
  invoke void @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef %7) #17
          to label %27 unwind label %54

27:                                               ; preds = %8
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %5, ptr %28, align 8, !tbaa !206
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 0, ptr %29, align 8, !tbaa !207
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  store ptr %6, ptr %30, align 8, !tbaa !208
  %31 = invoke noundef ptr @_ZNK11xercesc_2_715GrammarResolver27getGrammarPoolMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(80) %6) #17
          to label %32 unwind label %58

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  store ptr %31, ptr %33, align 8, !tbaa !209
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %34, i8 0, i64 60, i1 false)
  store ptr %7, ptr %35, align 8, !tbaa !210
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef %7) #17
          to label %37 unwind label %58

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1023, ptr noundef %7) #17
          to label %39 unwind label %62

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %40, i32 noundef 1023, ptr noundef %7) #17
          to label %41 unwind label %66

41:                                               ; preds = %39
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef 1023, ptr noundef %7) #17
          to label %43 unwind label %70

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef 1023, ptr noundef %7) #17
          to label %45 unwind label %74

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef 1023, ptr noundef %7) #17
          to label %47 unwind label %78

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %48, i32 noundef 1023, ptr noundef %7) #17
          to label %49 unwind label %82

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %50, i32 noundef 1023, ptr noundef %7) #17
          to label %51 unwind label %86

51:                                               ; preds = %49
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %52, ptr noundef %7) #17
          to label %53 unwind label %90

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_710XMLScanner7cleanUpEv to i64), i64 0) #17
  invoke void @_ZN11xercesc_2_710XMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %107 unwind label %94

54:                                               ; preds = %8
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = extractvalue { ptr, i32 } %55, 0
  %57 = extractvalue { ptr, i32 } %55, 1
  br label %138

58:                                               ; preds = %32, %27
  %59 = landingpad { ptr, i32 }
          cleanup
  %60 = extractvalue { ptr, i32 } %59, 0
  %61 = extractvalue { ptr, i32 } %59, 1
  br label %135

62:                                               ; preds = %37
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = extractvalue { ptr, i32 } %63, 0
  %65 = extractvalue { ptr, i32 } %63, 1
  br label %132

66:                                               ; preds = %39
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = extractvalue { ptr, i32 } %67, 0
  %69 = extractvalue { ptr, i32 } %67, 1
  br label %129

70:                                               ; preds = %41
  %71 = landingpad { ptr, i32 }
          cleanup
  %72 = extractvalue { ptr, i32 } %71, 0
  %73 = extractvalue { ptr, i32 } %71, 1
  br label %126

74:                                               ; preds = %43
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = extractvalue { ptr, i32 } %75, 0
  %77 = extractvalue { ptr, i32 } %75, 1
  br label %123

78:                                               ; preds = %45
  %79 = landingpad { ptr, i32 }
          cleanup
  %80 = extractvalue { ptr, i32 } %79, 0
  %81 = extractvalue { ptr, i32 } %79, 1
  br label %120

82:                                               ; preds = %47
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = extractvalue { ptr, i32 } %83, 0
  %85 = extractvalue { ptr, i32 } %83, 1
  br label %117

86:                                               ; preds = %49
  %87 = landingpad { ptr, i32 }
          cleanup
  %88 = extractvalue { ptr, i32 } %87, 0
  %89 = extractvalue { ptr, i32 } %87, 1
  br label %114

90:                                               ; preds = %51
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = extractvalue { ptr, i32 } %91, 0
  %93 = extractvalue { ptr, i32 } %91, 1
  br label %111

94:                                               ; preds = %53
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %96 = extractvalue { ptr, i32 } %95, 0
  %97 = extractvalue { ptr, i32 } %95, 1
  %98 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = call ptr @__cxa_begin_catch(ptr %96) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #17
  invoke void @__cxa_rethrow() #19
          to label %146 unwind label %102

102:                                              ; preds = %100
  %103 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %104 unwind label %143

104:                                              ; preds = %102
  %105 = extractvalue { ptr, i32 } %103, 1
  %106 = extractvalue { ptr, i32 } %103, 0
  br label %108

107:                                              ; preds = %53
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #17
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret void

108:                                              ; preds = %104, %94
  %109 = phi i32 [ %105, %104 ], [ %97, %94 ]
  %110 = phi ptr [ %106, %104 ], [ %96, %94 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %52) #18
  br label %111

111:                                              ; preds = %108, %90
  %112 = phi i32 [ %109, %108 ], [ %93, %90 ]
  %113 = phi ptr [ %110, %108 ], [ %92, %90 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %50) #18
  br label %114

114:                                              ; preds = %111, %86
  %115 = phi i32 [ %112, %111 ], [ %89, %86 ]
  %116 = phi ptr [ %113, %111 ], [ %88, %86 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %48) #18
  br label %117

117:                                              ; preds = %114, %82
  %118 = phi i32 [ %115, %114 ], [ %85, %82 ]
  %119 = phi ptr [ %116, %114 ], [ %84, %82 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %46) #18
  br label %120

120:                                              ; preds = %117, %78
  %121 = phi i32 [ %118, %117 ], [ %81, %78 ]
  %122 = phi ptr [ %119, %117 ], [ %80, %78 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %44) #18
  br label %123

123:                                              ; preds = %120, %74
  %124 = phi i32 [ %121, %120 ], [ %77, %74 ]
  %125 = phi ptr [ %122, %120 ], [ %76, %74 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %42) #18
  br label %126

126:                                              ; preds = %123, %70
  %127 = phi i32 [ %124, %123 ], [ %73, %70 ]
  %128 = phi ptr [ %125, %123 ], [ %72, %70 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %40) #18
  br label %129

129:                                              ; preds = %126, %66
  %130 = phi i32 [ %127, %126 ], [ %69, %66 ]
  %131 = phi ptr [ %128, %126 ], [ %68, %66 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %38) #18
  br label %132

132:                                              ; preds = %129, %62
  %133 = phi i32 [ %130, %129 ], [ %65, %62 ]
  %134 = phi ptr [ %131, %129 ], [ %64, %62 ]
  call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %36) #18
  br label %135

135:                                              ; preds = %132, %58
  %136 = phi i32 [ %133, %132 ], [ %61, %58 ]
  %137 = phi ptr [ %134, %132 ], [ %60, %58 ]
  call void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %26) #18
  br label %138

138:                                              ; preds = %135, %54
  %139 = phi i32 [ %136, %135 ], [ %57, %54 ]
  %140 = phi ptr [ %137, %135 ], [ %56, %54 ]
  call void @_ZN11xercesc_2_720XMLBufferFullHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %141 = insertvalue { ptr, i32 } poison, ptr %140, 0
  %142 = insertvalue { ptr, i32 } %141, i32 %139, 1
  resume { ptr, i32 } %142

143:                                              ; preds = %102
  %144 = landingpad { ptr, i32 }
          catch ptr null
  %145 = extractvalue { ptr, i32 } %144, 0
  call void @__clang_call_terminate(ptr %145) #16
  unreachable

146:                                              ; preds = %100
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  invoke void @_ZN11xercesc_2_710XMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %2 unwind label %13

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  tail call void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %3) #18
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #18
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  tail call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #18
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %12) #18
  tail call void @_ZN11xercesc_2_720XMLBufferFullHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %4 = load i8, ptr %3, align 1, !tbaa !240, !range !246, !noundef !241
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !182
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(40) %8) #18
  br label %14

14:                                               ; preds = %6, %10, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %1, ptr %15, align 8, !tbaa !206
  store i8 1, ptr %3, align 1, !tbaa !240
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %1) local_unnamed_addr #5 align 2 !prof !247 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  tail call void @_ZN11xercesc_2_712XMLValidator14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  tail call void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %4 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %5 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %6 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %7 = alloca %"class.xercesc_2_7::Janitor", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef %9) #17
          to label %10 unwind label %25

10:                                               ; preds = %2
  %11 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(81) %3) #17
          to label %12 unwind label %27

12:                                               ; preds = %10
  br i1 %11, label %13, label %68

13:                                               ; preds = %12
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %3) #17
          to label %15 unwind label %27

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !248, !range !246, !noundef !241
  %18 = icmp eq i8 %17, 0
  br i1 %14, label %19, label %44

19:                                               ; preds = %15
  br i1 %18, label %20, label %31

20:                                               ; preds = %19
  %21 = load ptr, ptr %8, align 8, !tbaa !210
  %22 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %21) #17
          to label %23 unwind label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %22, ptr noundef %1, ptr noundef %24) #17
          to label %128 unwind label %29

25:                                               ; preds = %2
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %95

27:                                               ; preds = %72, %61, %45, %20, %13, %10
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %93

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #18
  br label %93

31:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #15
  %32 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 103, ptr noundef %32) #17
          to label %33 unwind label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %34, align 1, !tbaa !249
  %35 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  %36 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %35, ptr noundef %36, ptr noundef null, ptr noundef null) #17
          to label %37 unwind label %40

37:                                               ; preds = %33
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #15
  br label %92

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %42

40:                                               ; preds = %33
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #15
  br label %93

44:                                               ; preds = %15
  br i1 %18, label %61, label %45

45:                                               ; preds = %44
  %46 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %3) #17
          to label %47 unwind label %27

47:                                               ; preds = %45
  br i1 %46, label %48, label %61

48:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  %49 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 99, ptr noundef %49) #17
          to label %50 unwind label %55

50:                                               ; preds = %48
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %51, align 1, !tbaa !249
  %52 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #17
  %53 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %52, ptr noundef %53, ptr noundef null, ptr noundef null) #17
          to label %54 unwind label %57

54:                                               ; preds = %50
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  br label %92

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %59

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #18
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  br label %93

61:                                               ; preds = %47, %44
  %62 = load ptr, ptr %8, align 8, !tbaa !210
  %63 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %62) #17
          to label %64 unwind label %27

64:                                               ; preds = %61
  %65 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %63, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef %65) #17
          to label %128 unwind label %66

66:                                               ; preds = %64
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %63, ptr noundef %62) #18
  br label %93

68:                                               ; preds = %12
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %70 = load i8, ptr %69, align 8, !tbaa !248, !range !246, !noundef !241
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load ptr, ptr %8, align 8, !tbaa !210
  %74 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %73) #17
          to label %75 unwind label %27

75:                                               ; preds = %72
  %76 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %74, ptr noundef %1, ptr noundef %76) #17
          to label %128 unwind label %77

77:                                               ; preds = %75
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %74, ptr noundef %73) #18
  br label %93

79:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %80 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 411, i32 noundef 99, ptr noundef %80) #17
          to label %81 unwind label %86

81:                                               ; preds = %79
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %82, align 1, !tbaa !249
  %83 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  %84 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %83, ptr noundef %84, ptr noundef null, ptr noundef null) #17
          to label %85 unwind label %88

85:                                               ; preds = %81
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  br label %92

86:                                               ; preds = %79
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %90

88:                                               ; preds = %81
  %89 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  br label %93

92:                                               ; preds = %85, %54, %37
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %3) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  br label %134

93:                                               ; preds = %90, %77, %66, %59, %42, %29, %27
  %94 = phi { ptr, i32 } [ %43, %42 ], [ %30, %29 ], [ %28, %27 ], [ %60, %59 ], [ %67, %66 ], [ %91, %90 ], [ %78, %77 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %3) #18
  br label %95

95:                                               ; preds = %93, %25
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %26, %25 ]
  %97 = extractvalue { ptr, i32 } %96, 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  %98 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %137

100:                                              ; preds = %95
  %101 = extractvalue { ptr, i32 } %96, 0
  %102 = call ptr @__cxa_begin_catch(ptr %101) #15
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %103, align 1, !tbaa !249
  %104 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load ptr, ptr %102, align 8, !tbaa !182
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
          to label %123 unwind label %111

111:                                              ; preds = %123, %121, %119, %106
  %112 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %137 unwind label %139

113:                                              ; preds = %100
  %114 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
  %115 = icmp sgt i32 %114, 1
  %116 = load ptr, ptr %102, align 8, !tbaa !182
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  br i1 %115, label %119, label %121

119:                                              ; preds = %113
  %120 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
          to label %123 unwind label %111

121:                                              ; preds = %113
  %122 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
          to label %123 unwind label %111

123:                                              ; preds = %121, %119, %106
  %124 = phi i32 [ 7, %106 ], [ 292, %119 ], [ 157, %121 ]
  %125 = phi ptr [ %110, %106 ], [ %120, %119 ], [ %122, %121 ]
  %126 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef null, ptr noundef null) #17
          to label %127 unwind label %111

127:                                              ; preds = %123
  call void @__cxa_end_catch()
  br label %134

128:                                              ; preds = %75, %64, %23
  %129 = phi ptr [ %74, %75 ], [ %63, %64 ], [ %22, %23 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %3) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %129) #17
  %130 = load ptr, ptr %0, align 8, !tbaa !182
  %131 = getelementptr inbounds ptr, ptr %130, i64 8
  %132 = load ptr, ptr %131, align 8
  invoke void %132(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %129) #17
          to label %133 unwind label %135

133:                                              ; preds = %128
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %134

134:                                              ; preds = %92, %133, %127
  ret void

135:                                              ; preds = %128
  %136 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %137

137:                                              ; preds = %111, %135, %95
  %138 = phi { ptr, i32 } [ %136, %135 ], [ %96, %95 ], [ %112, %111 ]
  resume { ptr, i32 } %138

139:                                              ; preds = %111
  %140 = landingpad { ptr, i32 }
          catch ptr null
  %141 = extractvalue { ptr, i32 } %140, 0
  call void @__clang_call_terminate(ptr %141) #16
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #17
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 align 2 !prof !177 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = tail call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %14 = load ptr, ptr %13, align 8, !tbaa !245
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #15
  %17 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv() #17
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %19 = load ptr, ptr %18, align 8, !tbaa !210
  %20 = load ptr, ptr %17, align 8, !tbaa !182
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %19) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %25 = load ptr, ptr %13, align 8, !tbaa !245
  %26 = call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #17
  %27 = load ptr, ptr %8, align 8, !tbaa !250
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !252
  %30 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !253
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !254
  %34 = load ptr, ptr %25, align 8, !tbaa !182
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef %26, ptr noundef nonnull %7, ptr noundef %27, ptr noundef %29, i64 noundef %31, i64 noundef %33) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #15
  br label %37

37:                                               ; preds = %16, %12
  %38 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) #17
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call ptr @__cxa_allocate_exception(i64 4) #15
  store i32 %1, ptr %40, align 16, !tbaa !255
  call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #19
  unreachable

41:                                               ; preds = %37
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !257
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !260
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !184 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store ptr %1, ptr %0, align 8, !tbaa !261
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %5 = load ptr, ptr %4, align 8, !tbaa !210
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %7 = load ptr, ptr %4, align 8, !tbaa !210
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %6, ptr noundef %7) #17
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %6) #17
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !263 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store ptr %1, ptr %0, align 8, !tbaa !264
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !266
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !267 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #17
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
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %4 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %5 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %6 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %7 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %8 = alloca %"class.xercesc_2_7::Janitor", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %4, ptr noundef %10) #17
          to label %11 unwind label %26

11:                                               ; preds = %3
  %12 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(81) %4) #17
          to label %13 unwind label %28

13:                                               ; preds = %11
  br i1 %12, label %14, label %69

14:                                               ; preds = %13
  %15 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %4) #17
          to label %16 unwind label %28

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 8, !tbaa !248, !range !246, !noundef !241
  %19 = icmp eq i8 %18, 0
  br i1 %15, label %20, label %45

20:                                               ; preds = %16
  br i1 %19, label %21, label %32

21:                                               ; preds = %20
  %22 = load ptr, ptr %9, align 8, !tbaa !210
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %22) #17
          to label %24 unwind label %28

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %23, ptr noundef %1, ptr noundef %25) #17
          to label %128 unwind label %30

26:                                               ; preds = %3
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %95

28:                                               ; preds = %73, %62, %46, %21, %14, %11
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %93

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #18
  br label %93

32:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  %33 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 489, i32 noundef 103, ptr noundef %33) #17
          to label %34 unwind label %39

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %35, align 1, !tbaa !249
  %36 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #17
  %37 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %36, ptr noundef %37, ptr noundef null, ptr noundef null) #17
          to label %38 unwind label %41

38:                                               ; preds = %34
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  br label %92

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %43

41:                                               ; preds = %34
  %42 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #18
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  br label %93

45:                                               ; preds = %16
  br i1 %19, label %62, label %46

46:                                               ; preds = %45
  %47 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %4) #17
          to label %48 unwind label %28

48:                                               ; preds = %46
  br i1 %47, label %49, label %62

49:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %50 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 99, ptr noundef %50) #17
          to label %51 unwind label %56

51:                                               ; preds = %49
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %52, align 1, !tbaa !249
  %53 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  %54 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %53, ptr noundef %54, ptr noundef null, ptr noundef null) #17
          to label %55 unwind label %58

55:                                               ; preds = %51
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  br label %92

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %60

58:                                               ; preds = %51
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  br label %93

62:                                               ; preds = %48, %45
  %63 = load ptr, ptr %9, align 8, !tbaa !210
  %64 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %63) #17
          to label %65 unwind label %28

65:                                               ; preds = %62
  %66 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %64, ptr noundef nonnull align 8 dereferenceable(81) %4, ptr noundef %66) #17
          to label %128 unwind label %67

67:                                               ; preds = %65
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %64, ptr noundef %63) #18
  br label %93

69:                                               ; preds = %13
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %71 = load i8, ptr %70, align 8, !tbaa !248, !range !246, !noundef !241
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load ptr, ptr %9, align 8, !tbaa !210
  %75 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %74) #17
          to label %76 unwind label %28

76:                                               ; preds = %73
  %77 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %75, ptr noundef %1, ptr noundef %77) #17
          to label %128 unwind label %78

78:                                               ; preds = %76
  %79 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %75, ptr noundef %74) #18
  br label %93

80:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 99, ptr noundef null) #17
          to label %81 unwind label %86

81:                                               ; preds = %80
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %82, align 1, !tbaa !249
  %83 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  %84 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %83, ptr noundef %84, ptr noundef null, ptr noundef null) #17
          to label %85 unwind label %88

85:                                               ; preds = %81
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #15
  br label %92

86:                                               ; preds = %80
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %90

88:                                               ; preds = %81
  %89 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #18
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #15
  br label %93

92:                                               ; preds = %85, %55, %38
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  br label %134

93:                                               ; preds = %90, %78, %67, %60, %43, %30, %28
  %94 = phi { ptr, i32 } [ %44, %43 ], [ %31, %30 ], [ %29, %28 ], [ %61, %60 ], [ %68, %67 ], [ %91, %90 ], [ %79, %78 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #18
  br label %95

95:                                               ; preds = %93, %26
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %27, %26 ]
  %97 = extractvalue { ptr, i32 } %96, 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  %98 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %136

100:                                              ; preds = %95
  %101 = extractvalue { ptr, i32 } %96, 0
  %102 = call ptr @__cxa_begin_catch(ptr %101) #15
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %103, align 1, !tbaa !249
  %104 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load ptr, ptr %102, align 8, !tbaa !182
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
          to label %123 unwind label %111

111:                                              ; preds = %123, %121, %119, %106
  %112 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %136 unwind label %138

113:                                              ; preds = %100
  %114 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
  %115 = icmp sgt i32 %114, 1
  %116 = load ptr, ptr %102, align 8, !tbaa !182
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  br i1 %115, label %119, label %121

119:                                              ; preds = %113
  %120 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
          to label %123 unwind label %111

121:                                              ; preds = %113
  %122 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
          to label %123 unwind label %111

123:                                              ; preds = %121, %119, %106
  %124 = phi i32 [ 7, %106 ], [ 292, %119 ], [ 157, %121 ]
  %125 = phi ptr [ %110, %106 ], [ %120, %119 ], [ %122, %121 ]
  %126 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %102) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef null, ptr noundef null) #17
          to label %127 unwind label %111

127:                                              ; preds = %123
  call void @__cxa_end_catch()
  br label %134

128:                                              ; preds = %76, %65, %24
  %129 = phi ptr [ %75, %76 ], [ %64, %65 ], [ %23, %24 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %129) #17
  %130 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %129, ptr noundef nonnull align 4 dereferenceable(8) %2) #17
          to label %131 unwind label %132

131:                                              ; preds = %128
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %134

132:                                              ; preds = %128
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %136

134:                                              ; preds = %92, %131, %127
  %135 = phi i1 [ %130, %131 ], [ false, %92 ], [ false, %127 ]
  ret i1 %135

136:                                              ; preds = %111, %132, %95
  %137 = phi { ptr, i32 } [ %133, %132 ], [ %96, %95 ], [ %112, %111 ]
  resume { ptr, i32 } %137

138:                                              ; preds = %111
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall.0", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %6 = load i32, ptr %5, align 8, !tbaa !205
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %8, i64 ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), i64 0) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !182
  %10 = getelementptr inbounds ptr, ptr %9, i64 15
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #17
          to label %12 unwind label %20

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %14 = load ptr, ptr %13, align 8, !tbaa !242
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !182
  %18 = getelementptr inbounds ptr, ptr %17, i64 10
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
          to label %24 unwind label %20

20:                                               ; preds = %16, %3
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  br label %106

24:                                               ; preds = %16, %12
  invoke void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %25 unwind label %29

25:                                               ; preds = %24
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #17
          to label %27 unwind label %29

27:                                               ; preds = %25
  br i1 %26, label %28, label %100

28:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 279) #17
          to label %100 unwind label %29

29:                                               ; preds = %28, %25, %24
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = extractvalue { ptr, i32 } %30, 1
  %33 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #15
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call ptr @__cxa_begin_catch(ptr %31) #15
  call void @__cxa_end_catch() #15
  br label %104

37:                                               ; preds = %29
  %38 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #15
  %39 = icmp eq i32 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call ptr @__cxa_begin_catch(ptr %31) #15
  call void @__cxa_end_catch() #15
  br label %104

42:                                               ; preds = %37
  %43 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %44 = icmp eq i32 %32, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = call ptr @__cxa_begin_catch(ptr %31) #15
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %47, align 1, !tbaa !249
  %48 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %46) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = load ptr, ptr %46, align 8, !tbaa !182
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(48) %46) #17
          to label %83 unwind label %65

55:                                               ; preds = %42
  %56 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %57 = icmp eq i32 %32, %56
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  %59 = call ptr @__cxa_begin_catch(ptr %31) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  invoke void @__cxa_rethrow() #19
          to label %114 unwind label %60

60:                                               ; preds = %58
  %61 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %62 unwind label %111

62:                                               ; preds = %60
  %63 = extractvalue { ptr, i32 } %61, 1
  %64 = extractvalue { ptr, i32 } %61, 0
  br label %106

65:                                               ; preds = %83, %81, %79, %50
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %67 = extractvalue { ptr, i32 } %66, 0
  %68 = extractvalue { ptr, i32 } %66, 1
  %69 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = call ptr @__cxa_begin_catch(ptr %67) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  invoke void @__cxa_rethrow() #19
          to label %114 unwind label %87

73:                                               ; preds = %45
  %74 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %46) #17
  %75 = icmp sgt i32 %74, 1
  %76 = load ptr, ptr %46, align 8, !tbaa !182
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  br i1 %75, label %79, label %81

79:                                               ; preds = %73
  %80 = invoke noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(48) %46) #17
          to label %83 unwind label %65

81:                                               ; preds = %73
  %82 = invoke noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(48) %46) #17
          to label %83 unwind label %65

83:                                               ; preds = %81, %79, %50
  %84 = phi i32 [ 7, %50 ], [ 292, %79 ], [ 157, %81 ]
  %85 = phi ptr [ %54, %50 ], [ %80, %79 ], [ %82, %81 ]
  %86 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %46) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef null, ptr noundef null) #17
          to label %92 unwind label %65

87:                                               ; preds = %71
  %88 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %89 unwind label %111

89:                                               ; preds = %87
  %90 = extractvalue { ptr, i32 } %88, 1
  %91 = extractvalue { ptr, i32 } %88, 0
  br label %97

92:                                               ; preds = %83
  invoke void @__cxa_end_catch()
          to label %104 unwind label %93

93:                                               ; preds = %92
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = extractvalue { ptr, i32 } %94, 0
  %96 = extractvalue { ptr, i32 } %94, 1
  br label %106

97:                                               ; preds = %89, %65
  %98 = phi i32 [ %90, %89 ], [ %68, %65 ]
  %99 = phi ptr [ %91, %89 ], [ %67, %65 ]
  invoke void @__cxa_end_catch()
          to label %106 unwind label %111

100:                                              ; preds = %27, %28
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  %102 = load i32, ptr %101, align 4, !tbaa !204
  %103 = load i32, ptr %5, align 8, !tbaa !205
  call void @_ZN11xercesc_2_713XMLPScanToken3setEjj(ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %102, i32 noundef %103) #17
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  br label %104

104:                                              ; preds = %92, %100, %35, %40
  %105 = phi i1 [ true, %100 ], [ false, %35 ], [ false, %40 ], [ false, %92 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret i1 %105

106:                                              ; preds = %93, %97, %62, %55, %20
  %107 = phi i32 [ %63, %62 ], [ %32, %55 ], [ %23, %20 ], [ %96, %93 ], [ %98, %97 ]
  %108 = phi ptr [ %64, %62 ], [ %31, %55 ], [ %22, %20 ], [ %95, %93 ], [ %99, %97 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %109 = insertvalue { ptr, i32 } poison, ptr %108, 0
  %110 = insertvalue { ptr, i32 } %109, i32 %107, 1
  resume { ptr, i32 } %110

111:                                              ; preds = %97, %87, %60
  %112 = landingpad { ptr, i32 }
          catch ptr null
  %113 = extractvalue { ptr, i32 } %112, 0
  call void @__clang_call_terminate(ptr %113) #16
  unreachable

114:                                              ; preds = %71, %58
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !210
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %8 = load ptr, ptr %5, align 8, !tbaa !210
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %7, ptr noundef %8) #17
  %9 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(8) %2) #17
          to label %10 unwind label %11

10:                                               ; preds = %3
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret i1 %9

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #5 comdat align 2 !prof !185 {
  store ptr %1, ptr %0, align 8, !tbaa !268
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !270
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3) #17
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  br label %6

6:                                                ; preds = %30, %1
  %7 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
          to label %8 unwind label %21

8:                                                ; preds = %6
  %9 = icmp eq i16 %7, 60
  br i1 %9, label %10, label %63, !prof !271

10:                                               ; preds = %8
  %11 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true) #17
          to label %12 unwind label %21

12:                                               ; preds = %10
  br i1 %11, label %13, label %26, !prof !272

13:                                               ; preds = %12
  %14 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  %15 = call noundef i64 @_ZNK11xercesc_2_79XMLReader13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %14) #17
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %20, !prof !273

17:                                               ; preds = %13
  %18 = call noundef i64 @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %14) #17
  %19 = icmp eq i64 %18, 7
  br i1 %19, label %25, label %20, !prof !273

20:                                               ; preds = %17, %13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 284) #17
          to label %25 unwind label %23

21:                                               ; preds = %83, %80, %78, %71, %69, %54, %46, %38, %35, %34, %31, %29, %26, %10, %6
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %84

23:                                               ; preds = %25, %20
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %84

25:                                               ; preds = %20, %17
  invoke void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 1) #17
          to label %30 unwind label %23

26:                                               ; preds = %12
  %27 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgPIStringE) #17
          to label %28 unwind label %21

28:                                               ; preds = %26
  br i1 %27, label %29, label %31, !prof !274

29:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %30 unwind label %21

30:                                               ; preds = %29, %54, %53, %42, %34, %83, %71, %78, %25
  br label %6

31:                                               ; preds = %28
  %32 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE) #17
          to label %33 unwind label %21

33:                                               ; preds = %31
  br i1 %32, label %34, label %35, !prof !274

34:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %30 unwind label %21

35:                                               ; preds = %33
  %36 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDocTypeStringE) #17
          to label %37 unwind label %21

37:                                               ; preds = %35
  br i1 %36, label %38, label %93, !prof !274

38:                                               ; preds = %37
  %39 = load ptr, ptr %0, align 8, !tbaa !182
  %40 = getelementptr inbounds ptr, ptr %39, i64 14
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %42 unwind label %21

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %44 = load i8, ptr %43, align 8, !tbaa !275, !range !246, !noundef !241
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %30, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %48 = load ptr, ptr %47, align 8, !tbaa !276
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  %50 = getelementptr inbounds ptr, ptr %49, i64 7
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef zeroext i1 %51(ptr noundef nonnull align 8 dereferenceable(8) %48) #17
          to label %53 unwind label %21

53:                                               ; preds = %46
  br i1 %52, label %30, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %57 = load ptr, ptr %55, align 8, !tbaa !206
  %58 = load i8, ptr %56, align 2, !tbaa !277, !range !246, !noundef !241
  %59 = icmp ne i8 %58, 0
  %60 = load ptr, ptr %57, align 8, !tbaa !182
  %61 = getelementptr inbounds ptr, ptr %60, i64 4
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(40) %57, i1 noundef zeroext %59, i1 noundef zeroext true) #17
          to label %30 unwind label %21

63:                                               ; preds = %8
  %64 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  %65 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %64, i16 noundef zeroext %7) #17
  br i1 %65, label %66, label %80, !prof !273

66:                                               ; preds = %63
  %67 = load ptr, ptr %5, align 8, !tbaa !242
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69, !prof !278

69:                                               ; preds = %66
  %70 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %70) #17
          to label %71 unwind label %21

71:                                               ; preds = %69
  %72 = load ptr, ptr %5, align 8, !tbaa !242
  %73 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %74 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %75 = load ptr, ptr %72, align 8, !tbaa !182
  %76 = getelementptr inbounds ptr, ptr %75, i64 8
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %73, i32 noundef %74, i1 noundef zeroext false) #17
          to label %30 unwind label %21

78:                                               ; preds = %66
  %79 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #17
          to label %30 unwind label %21

80:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 186) #17
          to label %81 unwind label %21

81:                                               ; preds = %80
  %82 = icmp eq i16 %7, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %81
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 62) #17
          to label %30 unwind label %21

84:                                               ; preds = %23, %21
  %85 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  %86 = extractvalue { ptr, i32 } %85, 1
  %87 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = extractvalue { ptr, i32 } %85, 0
  %91 = call ptr @__cxa_begin_catch(ptr %90) #15
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 255, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %92 unwind label %94

92:                                               ; preds = %89
  invoke void @__cxa_end_catch()
          to label %93 unwind label %96

93:                                               ; preds = %81, %37, %92
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

94:                                               ; preds = %89
  %95 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %98 unwind label %100

96:                                               ; preds = %92
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %98

98:                                               ; preds = %96, %94, %84
  %99 = phi { ptr, i32 } [ %85, %84 ], [ %97, %96 ], [ %95, %94 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %99

100:                                              ; preds = %94
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #16
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !177 {
  %3 = alloca [1024 x i16], align 16
  %4 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %5 = tail call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %10 = load ptr, ptr %9, align 8, !tbaa !245
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #15
  %13 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv() #17
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1023) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %19 = load ptr, ptr %9, align 8, !tbaa !245
  %20 = call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #17
  %21 = load ptr, ptr %4, align 8, !tbaa !250
  %22 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !252
  %24 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !253
  %26 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !254
  %28 = load ptr, ptr %19, align 8, !tbaa !182
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef %20, ptr noundef nonnull %3, ptr noundef %21, ptr noundef %23, i64 noundef %25, i64 noundef %27) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #15
  br label %31

31:                                               ; preds = %12, %8
  %32 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) #17
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call ptr @__cxa_allocate_exception(i64 4) #15
  store i32 %1, ptr %34, align 16, !tbaa !255
  call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #19
  unreachable

35:                                               ; preds = %31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLPScanToken3setEjj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !177 {
  store i32 %1, ptr %0, align 4, !tbaa !279
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLPScanToken", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 4, !tbaa !281
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %2 = load ptr, ptr %0, align 8, !tbaa !268
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !274

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !270
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !274

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall.0", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !270
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !182
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !241
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(80) %11) #17
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #17
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 78, ptr noundef %7) #17
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #17
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !205
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !205
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %16, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(8) %1) local_unnamed_addr #10 align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  %4 = load <2 x i32>, ptr %3, align 4
  %5 = load <2 x i32>, ptr %1, align 4
  %6 = icmp eq <2 x i32> %4, %5
  %7 = extractelement <2 x i1> %6, i64 0
  %8 = extractelement <2 x i1> %6, i64 1
  %9 = select i1 %7, i1 %8, i1 false
  ret i1 %9
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #17
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %1) local_unnamed_addr #6 align 2 !prof !177 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner13getDocHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %3) #17
  %4 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %4) #17
  %5 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %5) #17
  %6 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner16getErrorReporterEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %6) #17
  %7 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner16getEntityHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %7) #17
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %8) #17
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %9) #17
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %10) #17
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %11) #17
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %12) #17
  %13 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %13) #17
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %14) #17
  %15 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %15) #17
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %16) #17
  %17 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %17) #17
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %18) #17
  %19 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner16getNormalizeDataEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner16setNormalizeDataEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %19) #17
  %20 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %20) #17
  %21 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %21) #17
  %22 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %22) #17
  %23 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %23) #17
  %24 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #17
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %24) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  store ptr %1, ptr %3, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner13getDocHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %3 = load ptr, ptr %2, align 8, !tbaa !242
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !283 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  store ptr %1, ptr %3, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !245
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner16getErrorReporterEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !283 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !244
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner16getEntityHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !285 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 2, !tbaa !286
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !287 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !286, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !283 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 %3, ptr %4, align 2, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 2, !tbaa !288, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 1, !tbaa !289
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !289, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !248
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !248, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 1, !tbaa !290
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !184 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !290, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 4, !tbaa !291
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 4, !tbaa !291, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %3, ptr %4, align 4, !tbaa !292
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 4, !tbaa !292, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  store i8 %3, ptr %4, align 1, !tbaa !293
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !283 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !293, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %3, ptr %4, align 1, !tbaa !294
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !294, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 2, !tbaa !277
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 2, !tbaa !277, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 %3, ptr %4, align 1, !tbaa !295
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %3 = load i8, ptr %2, align 1, !tbaa !295, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setNormalizeDataEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  store i8 %3, ptr %4, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner16getNormalizeDataEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %3 = load i8, ptr %2, align 8, !tbaa !202, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !228
  %7 = load ptr, ptr %4, align 8, !tbaa !182
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #17
  %10 = load ptr, ptr %3, align 8, !tbaa !210
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #17
  store ptr %11, ptr %5, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = load ptr, ptr %4, align 8, !tbaa !182
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #17
  %10 = load ptr, ptr %3, align 8, !tbaa !210
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #17
  store ptr %11, ptr %5, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %1, ptr %3, align 8, !tbaa !207
  %4 = icmp eq i32 %1, 1
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %3 = load i32, ptr %2, align 8, !tbaa !207
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  store ptr %1, ptr %3, align 8, !tbaa !296
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !182
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(12) %1) #17
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %9, ptr %10, align 4, !tbaa !297
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %11, align 8, !tbaa !298
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store ptr %1, ptr %3, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !300 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %3 = load ptr, ptr %2, align 8, !tbaa !299
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gScannerMutexEv() unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !185 !PGOFuncName !301 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load i1, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br i1 %2, label %19, label %3, !prof !302

3:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !178
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %4) #17
  %5 = load i1, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br i1 %5, label %16, label %6, !prof !303

6:                                                ; preds = %3
  %7 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #17
          to label %8 unwind label %12

8:                                                ; preds = %6
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #17
          to label %10 unwind label %14

10:                                               ; preds = %8
  store ptr %7, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19scannerMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv) #17
          to label %11 unwind label %12

11:                                               ; preds = %10
  store i1 true, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br label %16

12:                                               ; preds = %10, %6
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %17

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %7) #18
  br label %17

16:                                               ; preds = %11, %3
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  br label %19

17:                                               ; preds = %14, %12
  %18 = phi { ptr, i32 } [ %13, %12 ], [ %15, %14 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  resume { ptr, i32 } %18

19:                                               ; preds = %16, %0
  %20 = load ptr, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !178
  ret ptr %20
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !212 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #17
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !185 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  br i1 %6, label %8, label %17, !prof !304

8:                                                ; preds = %3
  store ptr %1, ptr %7, align 8, !tbaa !305
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !218
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !217
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %18, !prof !274

13:                                               ; preds = %8
  store i32 %2, ptr %10, align 4, !tbaa !217
  %14 = load i32, ptr %0, align 8, !tbaa !216
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) #17
  br label %18

17:                                               ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !305
  br label %18

18:                                               ; preds = %8, %16, %13, %17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !306
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !308
  %6 = load ptr, ptr %3, align 8, !tbaa !182
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #17
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !309
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !182
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidator14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 !prof !247 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !310
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !312
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !313
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !314 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !315
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !177 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_77XMLErrs7isFatalENS0_5CodesE(i32 noundef %1) #17
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !range !246
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %3, i1 %6, i1 false
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !range !246
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %7, i1 %10, i1 false
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_77XMLErrs7isFatalENS0_5CodesE(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = add i32 %0, -171
  %3 = icmp ult i32 %2, 141
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 8
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = add i32 %0, -171
  %6 = icmp ult i32 %5, 141
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = add i32 %0, -9
  %9 = icmp ult i32 %8, 162
  %10 = select i1 %9, i32 1, i32 3
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 2, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 8, !tbaa !282
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv() unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !177 !PGOFuncName !316 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !178
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gScannerMutexEv() #17
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #17
  %6 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !178
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE) #17
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !178
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4) #17
          to label %15 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  resume { ptr, i32 } %14

15:                                               ; preds = %12, %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner15reinitMsgLoaderEv) #17
          to label %16 unwind label %13

16:                                               ; preds = %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  %17 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !178
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi ptr [ %17, %16 ], [ %2, %0 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 align 2 !prof !177 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = tail call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %14 = load ptr, ptr %13, align 8, !tbaa !245
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #15
  %17 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv() #17
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %19 = load ptr, ptr %18, align 8, !tbaa !210
  %20 = load ptr, ptr %17, align 8, !tbaa !182
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %19) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %25 = load ptr, ptr %13, align 8, !tbaa !245
  %26 = call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #17
  %27 = load ptr, ptr %8, align 8, !tbaa !250
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !252
  %30 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !253
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !254
  %34 = load ptr, ptr %25, align 8, !tbaa !182
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef %26, ptr noundef nonnull %7, ptr noundef %27, ptr noundef %29, i64 noundef %31, i64 noundef %33) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #15
  br label %37

37:                                               ; preds = %16, %12
  %38 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) #17
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call ptr @__cxa_allocate_exception(i64 4) #15
  store i32 %1, ptr %40, align 16, !tbaa !255
  call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #19
  unreachable

41:                                               ; preds = %37
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3) #17
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %5

5:                                                ; preds = %49, %1
  %6 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
          to label %7 unwind label %8

7:                                                ; preds = %5
  switch i16 %6, label %28 [
    i16 0, label %54
    i16 60, label %17
  ], !prof !317

8:                                                ; preds = %46, %48, %44, %37, %35, %27, %24, %23, %20, %17, %5
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = call ptr @__cxa_begin_catch(ptr %14) #15
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 259) #17
          to label %16 unwind label %50

16:                                               ; preds = %13
  invoke void @__cxa_end_catch()
          to label %49 unwind label %52

17:                                               ; preds = %7
  %18 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true) #17
          to label %19 unwind label %8

19:                                               ; preds = %17
  br i1 %18, label %46, label %20

20:                                               ; preds = %19
  %21 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgPIStringE) #17
          to label %22 unwind label %8

22:                                               ; preds = %20
  br i1 %21, label %23, label %24

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %49 unwind label %8

24:                                               ; preds = %22
  %25 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE) #17
          to label %26 unwind label %8

26:                                               ; preds = %24
  br i1 %25, label %27, label %46

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #17
          to label %49 unwind label %8

28:                                               ; preds = %7
  %29 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  %30 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %29, i16 noundef zeroext %6) #17
  br i1 %30, label %31, label %46, !prof !273

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %33 = load ptr, ptr %32, align 8, !tbaa !242
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35, !prof !278

35:                                               ; preds = %31
  %36 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %36) #17
          to label %37 unwind label %8

37:                                               ; preds = %35
  %38 = load ptr, ptr %32, align 8, !tbaa !242
  %39 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %40 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %41 = load ptr, ptr %38, align 8, !tbaa !182
  %42 = getelementptr inbounds ptr, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %39, i32 noundef %40, i1 noundef zeroext false) #17
          to label %49 unwind label %8

44:                                               ; preds = %31
  %45 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false) #17
          to label %49 unwind label %8

46:                                               ; preds = %28, %26, %19
  %47 = phi i32 [ 204, %19 ], [ 206, %26 ], [ 206, %28 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %47) #17
          to label %48 unwind label %8

48:                                               ; preds = %46
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 62) #17
          to label %49 unwind label %8

49:                                               ; preds = %48, %23, %27, %37, %44, %16
  br label %5, !llvm.loop !318

50:                                               ; preds = %13
  %51 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %55 unwind label %57

52:                                               ; preds = %16
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %55

54:                                               ; preds = %7
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

55:                                               ; preds = %8, %52, %50
  %56 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ], [ %9, %8 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %56

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !319 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  store ptr %3, ptr %0, align 8, !tbaa !178
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !320
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br i1 %1, label %4, label %22, !prof !322

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXMLDeclStringE) #17
  br i1 %5, label %6, label %41, !prof !272

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgXMLDeclStringSpaceE) #17
  br i1 %7, label %41, label %8, !prof !273

8:                                                ; preds = %6
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgXMLDeclStringHTabE) #17
  br i1 %9, label %41, label %10

10:                                               ; preds = %8
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgXMLDeclStringLFE) #17
  br i1 %11, label %41, label %12

12:                                               ; preds = %10
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgXMLDeclStringCRE) #17
  br i1 %13, label %41, label %14

14:                                               ; preds = %12
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLDeclStringSpaceUE) #17
  br i1 %15, label %40, label %16

16:                                               ; preds = %14
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgXMLDeclStringHTabUE) #17
  br i1 %17, label %40, label %18

18:                                               ; preds = %16
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLDeclStringLFUE) #17
  br i1 %19, label %40, label %20

20:                                               ; preds = %18
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLDeclStringCRUE) #17
  br i1 %21, label %40, label %41

22:                                               ; preds = %2
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #17
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgXMLStringSpaceE) #17
  br i1 %25, label %41, label %26

26:                                               ; preds = %24
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXMLStringHTabE) #17
  br i1 %27, label %41, label %28

28:                                               ; preds = %26
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLStringLFE) #17
  br i1 %29, label %41, label %30

30:                                               ; preds = %28
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLStringCRE) #17
  br i1 %31, label %41, label %32

32:                                               ; preds = %30
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgXMLStringSpaceUE) #17
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgXMLStringHTabUE) #17
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLStringLFUE) #17
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLStringCRUE) #17
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %34, %36, %38, %14, %16, %18, %20
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 271) #17
  br label %41

41:                                               ; preds = %40, %20, %4, %38, %22, %24, %26, %28, %30, %6, %8, %10, %12
  %42 = phi i1 [ true, %12 ], [ true, %10 ], [ true, %8 ], [ true, %6 ], [ true, %30 ], [ true, %28 ], [ true, %26 ], [ true, %24 ], [ false, %22 ], [ false, %38 ], [ false, %4 ], [ false, %20 ], [ true, %40 ]
  ret i1 %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !177 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !323

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !324 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !325
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #17
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca [9 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 194) #17
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext false) #17
  br label %9

9:                                                ; preds = %7, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %10) #17
  %11 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %12 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(40) %11) #17
          to label %13 unwind label %16

13:                                               ; preds = %9
  br i1 %12, label %18, label %14

14:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 194) #17
          to label %15 unwind label %16

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 62) #17
          to label %121 unwind label %16

16:                                               ; preds = %39, %35, %30, %15, %14, %9
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %126

18:                                               ; preds = %13
  %19 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %20 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i16, ptr %19, align 2, !tbaa !222
  switch i16 %23, label %31 [
    i16 120, label %24
    i16 88, label %24
  ]

24:                                               ; preds = %22, %22
  %25 = getelementptr inbounds i16, ptr %19, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !222
  switch i16 %26, label %31 [
    i16 109, label %27
    i16 77, label %27
  ]

27:                                               ; preds = %24, %24
  %28 = getelementptr inbounds i16, ptr %19, i64 2
  %29 = load i16, ptr %28, align 2, !tbaa !222
  switch i16 %29, label %31 [
    i16 108, label %30
    i16 76, label %30
  ]

30:                                               ; preds = %27, %27
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 283) #17
          to label %31 unwind label %16

31:                                               ; preds = %27, %24, %22, %30, %18
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %33 = load i8, ptr %32, align 2, !tbaa !286, !range !246, !noundef !241
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %19, i16 noundef zeroext 58) #17
          to label %37 unwind label %16

37:                                               ; preds = %35
  %38 = icmp eq i32 %36, -1
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 290) #17
          to label %40 unwind label %16

40:                                               ; preds = %37, %39, %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10) #17
          to label %41 unwind label %58

41:                                               ; preds = %40
  %42 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
          to label %43 unwind label %60

43:                                               ; preds = %41
  br i1 %42, label %44, label %99

44:                                               ; preds = %43
  %45 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext false) #17
          to label %46 unwind label %60

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  br label %48

48:                                               ; preds = %46, %97
  %49 = phi i8 [ %98, %97 ], [ 0, %46 ]
  %50 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
          to label %51 unwind label %62

51:                                               ; preds = %48
  %52 = icmp eq i16 %50, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 195) #17
          to label %54 unwind label %64

54:                                               ; preds = %53
  %55 = call ptr @__cxa_allocate_exception(i64 48) #15
  %56 = load ptr, ptr %47, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull @.str, i32 noundef 1136, i32 noundef 47, ptr noundef %56) #17
          to label %57 unwind label %66

57:                                               ; preds = %54
  invoke void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
          to label %128 unwind label %64

58:                                               ; preds = %40
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %124

60:                                               ; preds = %105, %106, %112, %102, %99, %44, %41
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %122

62:                                               ; preds = %48, %71, %80, %87, %97
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %122

64:                                               ; preds = %53, %57
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %122

66:                                               ; preds = %54
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %55) #15
  br label %122

68:                                               ; preds = %51
  %69 = zext i16 %50 to i32
  %70 = icmp eq i16 %50, 63
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 62) #17
          to label %73 unwind label %62

73:                                               ; preds = %71
  br i1 %72, label %107, label %81

74:                                               ; preds = %68
  %75 = and i16 %50, -1024
  %76 = icmp eq i16 %75, -10240
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = and i8 %49, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #17
          to label %97 unwind label %62

81:                                               ; preds = %73, %74
  %82 = and i8 %49, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = add i16 %50, 8192
  %86 = icmp ult i16 %85, -1024
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #17
          to label %97 unwind label %62

88:                                               ; preds = %81
  %89 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %90 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %89, i16 noundef zeroext %50) #17
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #15
  %92 = load ptr, ptr %47, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %69, ptr noundef nonnull %4, i32 noundef 8, i32 noundef 16, ptr noundef %92) #17
          to label %93 unwind label %95

93:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %94 unwind label %95

94:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #15
  br label %97

95:                                               ; preds = %93, %91
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #15
  br label %122

97:                                               ; preds = %87, %84, %94, %88, %77, %80
  %98 = phi i8 [ %49, %80 ], [ 1, %77 ], [ 0, %88 ], [ 0, %94 ], [ 0, %84 ], [ 0, %87 ]
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %3, i16 noundef zeroext %50) #17
          to label %48 unwind label %62

99:                                               ; preds = %43
  %100 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 63) #17
          to label %101 unwind label %60

101:                                              ; preds = %99
  br i1 %100, label %102, label %105

102:                                              ; preds = %101
  %103 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 62) #17
          to label %104 unwind label %60

104:                                              ; preds = %102
  br i1 %103, label %107, label %105

105:                                              ; preds = %104, %101
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 195) #17
          to label %106 unwind label %60

106:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 62) #17
          to label %120 unwind label %60

107:                                              ; preds = %73, %104
  %108 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %110 = load ptr, ptr %109, align 8, !tbaa !242
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %110, align 8, !tbaa !182
  %114 = getelementptr inbounds ptr, ptr %113, i64 4
  %115 = load ptr, ptr %114, align 8
  invoke void %115(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef %19, ptr noundef %108) #17
          to label %116 unwind label %60

116:                                              ; preds = %112, %107
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %118 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %117) #17
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  call void @_ZN11xercesc_2_79ElemStack18setCommentOrPISeenEv(ptr noundef nonnull align 8 dereferenceable(104) %117) #17
  br label %120

120:                                              ; preds = %106, %116, %119
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %121

121:                                              ; preds = %15, %120
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

122:                                              ; preds = %62, %64, %66, %95, %60
  %123 = phi { ptr, i32 } [ %61, %60 ], [ %96, %95 ], [ %67, %66 ], [ %63, %62 ], [ %65, %64 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  br label %124

124:                                              ; preds = %122, %58
  %125 = phi { ptr, i32 } [ %123, %122 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %126

126:                                              ; preds = %124, %16
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %127

128:                                              ; preds = %57
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca [9 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4) #17
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  br label %7

7:                                                ; preds = %51, %1
  %8 = phi i8 [ 0, %1 ], [ %47, %51 ]
  %9 = phi i32 [ 0, %1 ], [ %52, %51 ]
  %10 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
          to label %11 unwind label %18

11:                                               ; preds = %7
  %12 = icmp eq i16 %10, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 193) #17
          to label %14 unwind label %20

14:                                               ; preds = %13
  %15 = call ptr @__cxa_allocate_exception(i64 48) #15
  %16 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 2133, i32 noundef 47, ptr noundef %16) #17
          to label %17 unwind label %22

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
          to label %79 unwind label %20

18:                                               ; preds = %50, %7, %31, %36, %55
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %77

20:                                               ; preds = %13, %17, %58, %59
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %77

22:                                               ; preds = %14
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #15
  br label %77

24:                                               ; preds = %11
  %25 = zext i16 %10 to i32
  %26 = and i16 %10, -1024
  %27 = icmp eq i16 %26, -10240
  %28 = and i8 %8, 1
  %29 = icmp eq i8 %28, 0
  br i1 %27, label %30, label %32

30:                                               ; preds = %24
  br i1 %29, label %46, label %31

31:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #17
          to label %46 unwind label %18

32:                                               ; preds = %24
  br i1 %29, label %37, label %33

33:                                               ; preds = %32
  %34 = add i16 %10, 8192
  %35 = icmp ult i16 %34, -1024
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249) #17
          to label %46 unwind label %18

37:                                               ; preds = %32
  %38 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %39 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %38, i16 noundef zeroext %10) #17
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #15
  %41 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %25, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 16, ptr noundef %41) #17
          to label %42 unwind label %44

42:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %43 unwind label %44

43:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #15
  br label %46

44:                                               ; preds = %42, %40
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #15
  br label %77

46:                                               ; preds = %36, %33, %43, %37, %30, %31
  %47 = phi i8 [ %8, %31 ], [ 1, %30 ], [ 0, %37 ], [ 0, %43 ], [ 0, %33 ], [ 0, %36 ]
  switch i32 %9, label %60 [
    i32 0, label %48
    i32 1, label %53
    i32 2, label %56
  ]

48:                                               ; preds = %46
  %49 = icmp eq i16 %10, 45
  br i1 %49, label %51, label %50

50:                                               ; preds = %55, %48
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext %10) #17
          to label %51 unwind label %18

51:                                               ; preds = %50, %48, %53
  %52 = phi i32 [ 0, %50 ], [ 1, %48 ], [ 2, %53 ]
  br label %7

53:                                               ; preds = %46
  %54 = icmp eq i16 %10, 45
  br i1 %54, label %51, label %55

55:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext 45) #17
          to label %50 unwind label %18

56:                                               ; preds = %46
  %57 = icmp eq i16 %10, 62
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 263) #17
          to label %59 unwind label %20

59:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 62) #17
          to label %76 unwind label %20

60:                                               ; preds = %46
  unreachable

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %63 = load ptr, ptr %62, align 8, !tbaa !242
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %67 = load ptr, ptr %63, align 8, !tbaa !182
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %66) #17
          to label %72 unwind label %70

70:                                               ; preds = %65
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %77

72:                                               ; preds = %65, %61
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %74 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %73) #17
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void @_ZN11xercesc_2_79ElemStack18setCommentOrPISeenEv(ptr noundef nonnull align 8 dereferenceable(104) %73) #17
  br label %76

76:                                               ; preds = %59, %72, %75
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

77:                                               ; preds = %18, %20, %22, %44, %70
  %78 = phi { ptr, i32 } [ %71, %70 ], [ %45, %44 ], [ %23, %22 ], [ %19, %18 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %78

79:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !326 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !325
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !327 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !334
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !335 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !337 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  %5 = load i32, ptr %2, align 8, !tbaa !216
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !222
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !212 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = load i32, ptr %2, align 8, !tbaa !216
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !319 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  %4 = load ptr, ptr %0, align 8, !tbaa !336
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #17
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !177 {
  %2 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !325
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %4, i16 noundef zeroext %2) #17
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 comdat align 2 !prof !338 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !325
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext false) #17
  ret i1 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #17
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !339 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !334
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !177 {
  %3 = load ptr, ptr %0, align 8, !tbaa !336
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !340 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !341
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack18setCommentOrPISeenEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !341
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 9
  store i8 1, ptr %10, align 1, !tbaa !343
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_79XMLReader13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #5 comdat align 2 !prof !345 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %3 = load i64, ptr %2, align 8, !tbaa !346
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #5 comdat align 2 !prof !345 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !347
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !283 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %5 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %10) #17
          to label %11 unwind label %31

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %10) #17
          to label %12 unwind label %33

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %10) #17
          to label %13 unwind label %35

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %10) #17
          to label %14 unwind label %37

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  %15 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  store ptr %15, ptr %9, align 16, !tbaa !178
  %16 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  %17 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !178
  %18 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %19 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 2
  store ptr %18, ptr %19, align 16, !tbaa !178
  %20 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  %21 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 3
  store ptr %20, ptr %21, align 8, !tbaa !178
  %22 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %24 = icmp eq i32 %1, 1
  br label %25

25:                                               ; preds = %142, %14
  %26 = phi i32 [ 0, %14 ], [ %79, %142 ]
  %27 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %23, i1 noundef zeroext true) #17
          to label %28 unwind label %39

28:                                               ; preds = %25
  %29 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 63) #17
          to label %30 unwind label %39

30:                                               ; preds = %28
  br i1 %29, label %143, label %43, !prof !272

31:                                               ; preds = %2
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %234

33:                                               ; preds = %11
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %232

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %230

37:                                               ; preds = %13
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %228

39:                                               ; preds = %25, %28, %46, %47, %51, %61, %71, %75, %82, %83
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %226

41:                                               ; preds = %89, %90
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %226

43:                                               ; preds = %30
  %44 = icmp eq i32 %26, 0
  %45 = select i1 %27, i1 true, i1 %44
  br i1 %45, label %47, label %46, !prof !348

46:                                               ; preds = %43
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207) #17
          to label %47 unwind label %39

47:                                               ; preds = %46, %43
  %48 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner12scanUpToWSOrERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %22, i16 noundef zeroext 61) #17
          to label %49 unwind label %39

49:                                               ; preds = %47
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %52, !prof !274

51:                                               ; preds = %49
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 187) #17
          to label %52 unwind label %39

52:                                               ; preds = %51, %49
  %53 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #17
  %54 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %53, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgVersionStringE) #17
  br i1 %54, label %63, label %55, !prof !302

55:                                               ; preds = %52
  %56 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #17
  %57 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %56, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgEncodingStringE) #17
  br i1 %57, label %63, label %58, !prof !303

58:                                               ; preds = %55
  %59 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #17
  %60 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %59, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgStandaloneStringE) #17
  br i1 %60, label %63, label %61, !prof !349

61:                                               ; preds = %58
  %62 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 187, ptr noundef %62, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %75 unwind label %39

63:                                               ; preds = %55, %52, %58
  %64 = phi i32 [ 2, %58 ], [ 1, %55 ], [ 0, %52 ]
  %65 = phi i1 [ true, %58 ], [ false, %55 ], [ false, %52 ]
  %66 = phi i1 [ false, %58 ], [ true, %55 ], [ false, %52 ]
  %67 = zext nneg i32 %64 to i64
  %68 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !238
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %73, label %71, !prof !239

71:                                               ; preds = %63
  %72 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 268, ptr noundef %72, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %75 unwind label %39

73:                                               ; preds = %63
  %74 = add nsw i32 %26, 1
  store i32 %74, ptr %68, align 4, !tbaa !238
  br label %75

75:                                               ; preds = %71, %73, %61
  %76 = phi i32 [ 3, %61 ], [ %64, %71 ], [ %64, %73 ]
  %77 = phi i1 [ false, %61 ], [ %65, %71 ], [ %65, %73 ]
  %78 = phi i1 [ false, %61 ], [ %66, %71 ], [ %66, %73 ]
  %79 = phi i32 [ %26, %61 ], [ %26, %71 ], [ %74, %73 ]
  %80 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true) #17
          to label %81 unwind label %39

81:                                               ; preds = %75
  br i1 %80, label %83, label %82, !prof !239

82:                                               ; preds = %81
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180) #17
          to label %83 unwind label %39

83:                                               ; preds = %82, %81
  %84 = zext nneg i32 %76 to i64
  %85 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !178
  %87 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %86) #17
          to label %88 unwind label %39

88:                                               ; preds = %83
  br i1 %87, label %91, label %89, !prof !239

89:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 209) #17
          to label %90 unwind label %41

90:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #17
          to label %225 unwind label %41

91:                                               ; preds = %88
  %92 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %86) #17
  br i1 %54, label %93, label %108, !prof !302

93:                                               ; preds = %91
  %94 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %92, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_1E) #17
  br i1 %94, label %95, label %102, !prof !278

95:                                               ; preds = %93
  br i1 %24, label %105, label %98

96:                                               ; preds = %105, %112, %119, %109
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %226

98:                                               ; preds = %95
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %100 = load i32, ptr %99, align 8, !tbaa !350
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %142, label %112

102:                                              ; preds = %93
  %103 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %92, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_0E) #17
  br i1 %103, label %104, label %112, !prof !273

104:                                              ; preds = %102
  br i1 %24, label %105, label %142, !prof !273

105:                                              ; preds = %104, %95
  %106 = phi i32 [ 1, %95 ], [ 0, %104 ]
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  store i32 %106, ptr %107, align 8, !tbaa !350
  invoke void @_ZN11xercesc_2_79ReaderMgr13setXMLVersionENS_9XMLReader10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(80) %23, i32 noundef %106) #17
          to label %142 unwind label %96

108:                                              ; preds = %91
  br i1 %78, label %109, label %114, !prof !303

109:                                              ; preds = %108
  %110 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef %92) #17
          to label %111 unwind label %96

111:                                              ; preds = %109
  br i1 %110, label %142, label %112

112:                                              ; preds = %111, %102, %98
  %113 = phi i32 [ 189, %98 ], [ 189, %102 ], [ 191, %111 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %113, ptr noundef %92, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %142 unwind label %96

114:                                              ; preds = %108
  br i1 %77, label %115, label %142, !prof !351

115:                                              ; preds = %114
  %116 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %92, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgYesStringE) #17
  br i1 %116, label %139, label %117, !prof !351

117:                                              ; preds = %115
  %118 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %92, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgNoStringE) #17
  br i1 %118, label %139, label %119

119:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 192) #17
          to label %120 unwind label %96

120:                                              ; preds = %119
  %121 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %86) #17
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i16, ptr %92, align 2, !tbaa !222
  switch i16 %124, label %131 [
    i16 121, label %125
    i16 89, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = getelementptr inbounds i16, ptr %92, i64 1
  %127 = load i16, ptr %126, align 2, !tbaa !222
  switch i16 %127, label %131 [
    i16 101, label %128
    i16 69, label %128
  ]

128:                                              ; preds = %125, %125
  %129 = getelementptr inbounds i16, ptr %92, i64 2
  %130 = load i16, ptr %129, align 2, !tbaa !222
  switch i16 %130, label %131 [
    i16 115, label %139
    i16 83, label %139
  ]

131:                                              ; preds = %128, %125, %123, %120
  %132 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %86) #17
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load i16, ptr %92, align 2, !tbaa !222
  switch i16 %135, label %142 [
    i16 110, label %136
    i16 78, label %136
  ]

136:                                              ; preds = %134, %134
  %137 = getelementptr inbounds i16, ptr %92, i64 1
  %138 = load i16, ptr %137, align 2, !tbaa !222
  switch i16 %138, label %142 [
    i16 111, label %139
    i16 79, label %139
  ]

139:                                              ; preds = %136, %136, %128, %128, %117, %115
  %140 = phi i8 [ 1, %115 ], [ 0, %117 ], [ 1, %128 ], [ 1, %128 ], [ 0, %136 ], [ 0, %136 ]
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 %140, ptr %141, align 2, !tbaa !352
  br label %142

142:                                              ; preds = %139, %105, %112, %104, %98, %114, %131, %111, %134, %136
  br label %25

143:                                              ; preds = %30, %156
  %144 = phi i1 [ false, %156 ], [ true, %30 ]
  %145 = phi i64 [ 1, %156 ], [ 0, %30 ]
  %146 = phi i32 [ %157, %156 ], [ 0, %30 ]
  %147 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %145
  %148 = load i32, ptr %147, align 4, !tbaa !238
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %156, label %150, !prof !353

150:                                              ; preds = %143
  %151 = add nsw i32 %146, 1
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %156, label %153, !prof !273

153:                                              ; preds = %150
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 269) #17
          to label %158 unwind label %154

154:                                              ; preds = %153
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %226

156:                                              ; preds = %150, %143
  %157 = phi i32 [ %146, %143 ], [ %148, %150 ]
  br i1 %144, label %143, label %158, !prof !354, !llvm.loop !355

158:                                              ; preds = %156, %153
  %159 = load i32, ptr %8, align 16
  %160 = icmp eq i32 %159, -1
  %161 = select i1 %24, i1 %160, i1 false
  br i1 %161, label %175, label %164, !prof !356

162:                                              ; preds = %183, %175, %184, %180, %177, %170
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %226

164:                                              ; preds = %158
  %165 = icmp eq i32 %1, 0
  br i1 %165, label %166, label %177, !prof !278

166:                                              ; preds = %164
  %167 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 2
  %168 = load i32, ptr %167, align 8, !tbaa !238
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 286) #17
          to label %171 unwind label %162

171:                                              ; preds = %170, %166
  %172 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 1
  %173 = load i32, ptr %172, align 4, !tbaa !238
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %177

175:                                              ; preds = %158, %171
  %176 = phi i32 [ 287, %171 ], [ 285, %158 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %176) #17
          to label %177 unwind label %162

177:                                              ; preds = %175, %164, %171
  %178 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 63) #17
          to label %179 unwind label %162

179:                                              ; preds = %177
  br i1 %178, label %180, label %183, !prof !273

180:                                              ; preds = %179
  %181 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #17
          to label %182 unwind label %162

182:                                              ; preds = %180
  br i1 %181, label %185, label %183, !prof !273

183:                                              ; preds = %182, %179
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 190) #17
          to label %184 unwind label %162

184:                                              ; preds = %183
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 62) #17
          to label %185 unwind label %162

185:                                              ; preds = %184, %182
  %186 = invoke noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #17
          to label %187 unwind label %198

187:                                              ; preds = %185
  %188 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 1
  %189 = load i32, ptr %188, align 4, !tbaa !238
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %200, label %191, !prof !273

191:                                              ; preds = %187
  %192 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #17
  %193 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  %194 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %192, ptr noundef %193) #17
          to label %195 unwind label %198

195:                                              ; preds = %191
  %196 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  br i1 %194, label %200, label %197

197:                                              ; preds = %195
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 4, ptr noundef %196, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %200 unwind label %198

198:                                              ; preds = %219, %206, %197, %191, %185
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %226

200:                                              ; preds = %195, %197, %187
  %201 = phi ptr [ %186, %197 ], [ %186, %187 ], [ %196, %195 ]
  br i1 %24, label %202, label %213, !prof !273

202:                                              ; preds = %200
  %203 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %204 = load ptr, ptr %203, align 8, !tbaa !242
  %205 = icmp eq ptr %204, null
  br i1 %205, label %225, label %206, !prof !278

206:                                              ; preds = %202
  %207 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %208 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  %209 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %210 = load ptr, ptr %204, align 8, !tbaa !182
  %211 = getelementptr inbounds ptr, ptr %210, i64 13
  %212 = load ptr, ptr %211, align 8
  invoke void %212(ptr noundef nonnull align 8 dereferenceable(8) %204, ptr noundef %207, ptr noundef %208, ptr noundef %209, ptr noundef %201) #17
          to label %225 unwind label %198

213:                                              ; preds = %200
  %214 = icmp eq i32 %1, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %213
  %216 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %217 = load ptr, ptr %216, align 8, !tbaa !243
  %218 = icmp eq ptr %217, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %215
  %220 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %221 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  %222 = load ptr, ptr %217, align 8, !tbaa !182
  %223 = getelementptr inbounds ptr, ptr %222, i64 17
  %224 = load ptr, ptr %223, align 8
  invoke void %224(ptr noundef nonnull align 8 dereferenceable(8) %217, ptr noundef %220, ptr noundef %221) #17
          to label %225 unwind label %198

225:                                              ; preds = %90, %206, %202, %215, %219, %213
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void

226:                                              ; preds = %39, %41, %154, %162, %198, %96
  %227 = phi { ptr, i32 } [ %97, %96 ], [ %199, %198 ], [ %163, %162 ], [ %155, %154 ], [ %40, %39 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  br label %228

228:                                              ; preds = %226, %37
  %229 = phi { ptr, i32 } [ %227, %226 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  br label %230

230:                                              ; preds = %228, %35
  %231 = phi { ptr, i32 } [ %229, %228 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %232

232:                                              ; preds = %230, %33
  %233 = phi { ptr, i32 } [ %231, %230 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %234

234:                                              ; preds = %232, %31
  %235 = phi { ptr, i32 } [ %233, %232 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %235
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !285 {
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
  %4 = icmp eq i16 %3, %1
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner12scanUpToWSOrERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) local_unnamed_addr #6 align 2 !prof !185 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) #17
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !357 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !358

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !222
  %8 = load i16, ptr %1, align 2, !tbaa !222
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !359

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !360

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !222
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !274

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !361

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !222
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !362

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !363

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !222
  %28 = load i16, ptr %26, align 2, !tbaa !222
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !364, !llvm.loop !365

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !366 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = load i32, ptr %0, align 8, !tbaa !216
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !222
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 !prof !367 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %1) #17
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 61) #17
  br i1 %5, label %6, label %8, !prof !368

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %1) #17
  br label %8

8:                                                ; preds = %2, %6
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 align 2 !prof !185 {
  %3 = alloca i16, align 2
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 2 dereferenceable(2) %3) #17
  br i1 %5, label %6, label %17, !prof !239

6:                                                ; preds = %2
  %7 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  %8 = load i16, ptr %3, align 2, !tbaa !222
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %17, label %10, !prof !369

10:                                               ; preds = %6, %13
  %11 = phi i16 [ %14, %13 ], [ %7, %6 ]
  %12 = icmp ne i16 %11, 0
  br i1 %12, label %13, label %17, !prof !370

13:                                               ; preds = %10
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %11) #17
  %14 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  %15 = load i16, ptr %3, align 2, !tbaa !222
  %16 = icmp eq i16 %14, %15
  br i1 %16, label %17, label %10, !prof !371

17:                                               ; preds = %13, %10, %6, %2
  %18 = phi i1 [ false, %2 ], [ true, %6 ], [ %12, %10 ], [ %12, %13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret i1 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr13setXMLVersionENS_9XMLReader10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !283 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 4, !tbaa !372
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !325
  tail call void @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(163992) %5, i32 noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !373 {
  %2 = load i32, ptr %0, align 8, !tbaa !216
  ret i32 %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !374 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !375
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #17
  br i1 %8, label %9, label %17, !prof !376

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !375
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %1) #17
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %14, !prof !377
  br label %17

17:                                               ; preds = %2, %9
  %18 = phi ptr [ %16, %9 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %2 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #6 align 2 !prof !177 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 8, !tbaa !375
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %1) #17
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !375
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %1) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %3, %17, %10
  %19 = phi i1 [ false, %10 ], [ true, %17 ], [ false, %3 ]
  ret i1 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !378 {
  store i32 0, ptr %0, align 8, !tbaa !216
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !325
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #17
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %7 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %8 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %9 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %10 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %11 = alloca %"class.xercesc_2_7::Janitor", align 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %13 = load ptr, ptr %12, align 8, !tbaa !244
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %17 = load ptr, ptr %5, align 8, !tbaa !250
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 4, ptr noundef %1, ptr noundef null, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %17, ptr noundef nonnull %16) #17
  %18 = load ptr, ptr %12, align 8, !tbaa !244
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %6) #17
          to label %25 unwind label %23

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %164

25:                                               ; preds = %15
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  %26 = icmp eq ptr %22, null
  br i1 %26, label %27, label %153

27:                                               ; preds = %4, %25
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %29 = load i8, ptr %28, align 1, !tbaa !379, !range !246, !noundef !241
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %162

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #15
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %33 = load ptr, ptr %32, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %7, ptr noundef %33) #17
          to label %34 unwind label %49

34:                                               ; preds = %31
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(81) %7) #17
          to label %36 unwind label %51

36:                                               ; preds = %34
  br i1 %35, label %37, label %92

37:                                               ; preds = %36
  %38 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %7) #17
          to label %39 unwind label %51

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %41 = load i8, ptr %40, align 8, !tbaa !248, !range !246, !noundef !241
  %42 = icmp eq i8 %41, 0
  br i1 %38, label %43, label %68

43:                                               ; preds = %39
  br i1 %42, label %44, label %55

44:                                               ; preds = %43
  %45 = load ptr, ptr %32, align 8, !tbaa !210
  %46 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %45) #17
          to label %47 unwind label %51

47:                                               ; preds = %44
  %48 = load ptr, ptr %32, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %46, ptr noundef %1, ptr noundef %48) #17
          to label %115 unwind label %53

49:                                               ; preds = %31
  %50 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %120

51:                                               ; preds = %96, %85, %69, %44, %37, %34
  %52 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %118

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %46, ptr noundef %45) #18
  br label %118

55:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #15
  %56 = load ptr, ptr %32, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 1688, i32 noundef 103, ptr noundef %56) #17
          to label %57 unwind label %62

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %58, align 1, !tbaa !249
  %59 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #17
  %60 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %59, ptr noundef %60, ptr noundef null, ptr noundef null) #17
          to label %61 unwind label %64

61:                                               ; preds = %57
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  br label %117

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %66

64:                                               ; preds = %57
  %65 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #18
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  br label %118

68:                                               ; preds = %39
  br i1 %42, label %85, label %69

69:                                               ; preds = %68
  %70 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %7) #17
          to label %71 unwind label %51

71:                                               ; preds = %69
  br i1 %70, label %72, label %85

72:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #15
  %73 = load ptr, ptr %32, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1702, i32 noundef 99, ptr noundef %73) #17
          to label %74 unwind label %79

74:                                               ; preds = %72
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %75, align 1, !tbaa !249
  %76 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #17
  %77 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %76, ptr noundef %77, ptr noundef null, ptr noundef null) #17
          to label %78 unwind label %81

78:                                               ; preds = %74
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #15
  br label %117

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %83

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #18
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #15
  br label %118

85:                                               ; preds = %71, %68
  %86 = load ptr, ptr %32, align 8, !tbaa !210
  %87 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %86) #17
          to label %88 unwind label %51

88:                                               ; preds = %85
  %89 = load ptr, ptr %32, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %87, ptr noundef nonnull align 8 dereferenceable(81) %7, ptr noundef %89) #17
          to label %115 unwind label %90

90:                                               ; preds = %88
  %91 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %87, ptr noundef %86) #18
  br label %118

92:                                               ; preds = %36
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %94 = load i8, ptr %93, align 8, !tbaa !248, !range !246, !noundef !241
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load ptr, ptr %32, align 8, !tbaa !210
  %98 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %97) #17
          to label %99 unwind label %51

99:                                               ; preds = %96
  %100 = load ptr, ptr %32, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %98, ptr noundef %1, ptr noundef %100) #17
          to label %115 unwind label %101

101:                                              ; preds = %99
  %102 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %98, ptr noundef %97) #18
  br label %118

103:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #15
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1723, i32 noundef 99, ptr noundef null) #17
          to label %104 unwind label %109

104:                                              ; preds = %103
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %105, align 1, !tbaa !249
  %106 = call noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #17
  %107 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef %106, ptr noundef %107, ptr noundef null, ptr noundef null) #17
          to label %108 unwind label %111

108:                                              ; preds = %104
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #15
  br label %117

109:                                              ; preds = %103
  %110 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %113

111:                                              ; preds = %104
  %112 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #18
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #15
  br label %118

115:                                              ; preds = %99, %88, %47
  %116 = phi ptr [ %98, %99 ], [ %87, %88 ], [ %46, %47 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %7) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #15
  br label %153

117:                                              ; preds = %108, %78, %61
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %7) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #15
  br label %162

118:                                              ; preds = %113, %101, %90, %83, %66, %53, %51
  %119 = phi { ptr, i32 } [ %67, %66 ], [ %54, %53 ], [ %52, %51 ], [ %84, %83 ], [ %91, %90 ], [ %114, %113 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %7) #18
  br label %120

120:                                              ; preds = %118, %49
  %121 = phi { ptr, i32 } [ %119, %118 ], [ %50, %49 ]
  %122 = extractvalue { ptr, i32 } %121, 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #15
  %123 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %164

125:                                              ; preds = %120
  %126 = extractvalue { ptr, i32 } %121, 0
  %127 = call ptr @__cxa_begin_catch(ptr %126) #15
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %128, align 1, !tbaa !249
  %129 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %127) #17
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load ptr, ptr %127, align 8, !tbaa !182
  %133 = getelementptr inbounds ptr, ptr %132, i64 2
  %134 = load ptr, ptr %133, align 8
  %135 = invoke noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(48) %127) #17
          to label %148 unwind label %136

136:                                              ; preds = %148, %146, %144, %131
  %137 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %164 unwind label %166

138:                                              ; preds = %125
  %139 = call noundef i32 @_ZNK11xercesc_2_712XMLException12getErrorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %127) #17
  %140 = icmp sgt i32 %139, 1
  %141 = load ptr, ptr %127, align 8, !tbaa !182
  %142 = getelementptr inbounds ptr, ptr %141, i64 2
  %143 = load ptr, ptr %142, align 8
  br i1 %140, label %144, label %146

144:                                              ; preds = %138
  %145 = invoke noundef ptr %143(ptr noundef nonnull align 8 dereferenceable(48) %127) #17
          to label %148 unwind label %136

146:                                              ; preds = %138
  %147 = invoke noundef ptr %143(ptr noundef nonnull align 8 dereferenceable(48) %127) #17
          to label %148 unwind label %136

148:                                              ; preds = %146, %144, %131
  %149 = phi i32 [ 7, %131 ], [ 292, %144 ], [ 157, %146 ]
  %150 = phi ptr [ %135, %131 ], [ %145, %144 ], [ %147, %146 ]
  %151 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %127) #17
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef null, ptr noundef null) #17
          to label %152 unwind label %136

152:                                              ; preds = %148
  call void @__cxa_end_catch()
  br label %162

153:                                              ; preds = %115, %25
  %154 = phi ptr [ %22, %25 ], [ %116, %115 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %154) #17
  %155 = load ptr, ptr %0, align 8, !tbaa !182
  %156 = getelementptr inbounds ptr, ptr %155, i64 10
  %157 = load ptr, ptr %156, align 8
  %158 = invoke noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %154, i16 noundef signext %2, i1 noundef zeroext %3) #17
          to label %159 unwind label %160

159:                                              ; preds = %153
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  br label %162

160:                                              ; preds = %153
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  br label %164

162:                                              ; preds = %117, %27, %159, %152
  %163 = phi ptr [ %158, %159 ], [ null, %117 ], [ null, %152 ], [ null, %27 ]
  ret ptr %163

164:                                              ; preds = %136, %160, %120, %23
  %165 = phi { ptr, i32 } [ %161, %160 ], [ %121, %120 ], [ %24, %23 ], [ %137, %136 ]
  resume { ptr, i32 } %165

166:                                              ; preds = %136
  %167 = landingpad { ptr, i32 }
          catch ptr null
  %168 = extractvalue { ptr, i32 } %167, 0
  call void @__clang_call_terminate(ptr %168) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #5 comdat align 2 !prof !177 {
  store i32 %1, ptr %0, align 8, !tbaa !380
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !383
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !384
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 3
  store ptr %5, ptr %10, align 8, !tbaa !385
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !386
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 5
  store ptr %6, ptr %12, align 8, !tbaa !387
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !210
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %8, ptr noundef %9) #17
  %10 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %8, i16 noundef signext %2, i1 noundef zeroext %3) #17
          to label %11 unwind label %12

11:                                               ; preds = %4
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret ptr %10

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  store ptr %1, ptr %3, align 8, !tbaa !375
  %4 = load ptr, ptr %1, align 8, !tbaa !182
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  store i32 %7, ptr %8, align 4, !tbaa !388
  %9 = load ptr, ptr %3, align 8, !tbaa !375
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgUnknownURINameE) #17
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  store i32 %13, ptr %14, align 8, !tbaa !389
  %15 = load ptr, ptr %3, align 8, !tbaa !375
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #17
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  store i32 %19, ptr %20, align 4, !tbaa !390
  %21 = load ptr, ptr %3, align 8, !tbaa !375
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #17
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  store i32 %25, ptr %26, align 8, !tbaa !391
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"class.xercesc_2_7::Janitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %7 = load i8, ptr %6, align 1, !tbaa !294, !range !246, !noundef !241
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1812, i32 noundef 118, ptr noundef %12) #17
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #15
  br label %62

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %18 = load i8, ptr %17, align 2, !tbaa !277, !range !246, !noundef !241
  %19 = icmp ne i8 %18, 0
  %20 = and i1 %19, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  %22 = load i8, ptr %21, align 1, !range !246
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %25, label %61

25:                                               ; preds = %16
  %26 = load ptr, ptr %0, align 8, !tbaa !182
  %27 = getelementptr inbounds ptr, ptr %26, i64 17
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %2, ptr noundef %3) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %29) #17
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %33 = load ptr, ptr %32, align 8, !tbaa !208
  %34 = load ptr, ptr %29, align 8, !tbaa !182
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(41) %29) #17
          to label %38 unwind label %54

38:                                               ; preds = %31
  %39 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %33, ptr noundef %37) #17
          to label %40 unwind label %54

40:                                               ; preds = %38
  %41 = icmp eq ptr %39, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %39, align 8, !tbaa !182
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(8) %39) #17
          to label %47 unwind label %54

47:                                               ; preds = %42
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %47
  %50 = call ptr @__cxa_allocate_exception(i64 48) #15
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %52 = load ptr, ptr %51, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull @.str, i32 noundef 1823, i32 noundef 118, ptr noundef %52) #17
          to label %53 unwind label %56

53:                                               ; preds = %49
  invoke void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
          to label %64 unwind label %54

54:                                               ; preds = %53, %42, %38, %31
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %59

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %50) #15
  br label %59

58:                                               ; preds = %47, %40
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %61

59:                                               ; preds = %56, %54
  %60 = phi { ptr, i32 } [ %55, %54 ], [ %57, %56 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %62

61:                                               ; preds = %25, %58, %16
  ret void

62:                                               ; preds = %59, %14
  %63 = phi { ptr, i32 } [ %15, %14 ], [ %60, %59 ]
  resume { ptr, i32 } %63

64:                                               ; preds = %53
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !210
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %8, i1 noundef zeroext false, ptr noundef %10) #17
  %11 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  br i1 %11, label %12, label %30, !prof !392

12:                                               ; preds = %1, %28
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
          to label %14 unwind label %26

14:                                               ; preds = %12
  %15 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  br i1 %15, label %28, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %18 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo7getUsedEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  %19 = load i8, ptr %17, align 8, !range !246
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = call noundef ptr @_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef 13, ptr noundef %25, ptr noundef null, ptr noundef null, ptr noundef null) #17
          to label %28 unwind label %26

26:                                               ; preds = %22, %12
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %22, %16, %14
  %29 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  br i1 %29, label %12, label %30, !prof !393, !llvm.loop !394

30:                                               ; preds = %28, %1
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !395
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !398
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !399
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !400
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !401
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20, !prof !303

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %14 = load ptr, ptr %10, align 8, !tbaa !401
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.4, i32 noundef 527, i32 noundef 15, ptr noundef %14) #17
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #15
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !184 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !398
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !351

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !399
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !400
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !402
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !351

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !401
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 575, i32 noundef 30, ptr noundef %9) #17
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !398
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %16 = load ptr, ptr %15, align 8, !tbaa !404
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !406, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo7getUsedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !408, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !409
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !184 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !395, !range !246, !noundef !241
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !351

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !400
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #18
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !410 {
  %3 = alloca %"class.xercesc_2_7::ThrowEOEJanitor", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %4, i1 noundef zeroext true) #17
  %5 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
          to label %6 unwind label %7

6:                                                ; preds = %2
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  switch i16 %5, label %9 [
    i16 0, label %23
    i16 60, label %10
  ], !prof !411

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %8

9:                                                ; preds = %6
  br label %23

10:                                               ; preds = %6
  %11 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  %12 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  store i32 %12, ptr %1, align 4, !tbaa !238
  %13 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  switch i16 %13, label %23 [
    i16 47, label %14
    i16 33, label %16
    i16 63, label %21
  ], !prof !412

14:                                               ; preds = %10
  %15 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  br label %23

16:                                               ; preds = %10
  %17 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE9gCDATAStr) #17
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE14gCommentString) #17
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 173) #17
  br label %23

21:                                               ; preds = %10
  %22 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  br label %23

23:                                               ; preds = %10, %18, %16, %6, %21, %20, %14, %9
  %24 = phi i32 [ 1, %9 ], [ 3, %14 ], [ 7, %20 ], [ 5, %21 ], [ 4, %6 ], [ 0, %16 ], [ 2, %18 ], [ 6, %10 ]
  ret i32 %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 comdat align 2 !prof !413 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %0, align 8, !tbaa !414
  %6 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !416
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !413 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ThrowEOEJanitor", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !416
  %4 = load i8, ptr %0, align 8, !tbaa !414, !range !246, !noundef !241
  %5 = icmp ne i8 %4, 0
  tail call void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %5) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !417 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !325
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #17
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !418 {
  store i32 0, ptr %0, align 8, !tbaa !216
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  store i16 0, ptr %3, align 2, !tbaa !222
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !419 {
  %3 = load i32, ptr %0, align 8, !tbaa !216
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !217
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !420

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #17
  %8 = load i32, ptr %0, align 8, !tbaa !216
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !216
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !222
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %4 = alloca [2 x i16], align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 120) #17
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 88) #17
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 267) #17
  br label %10

10:                                               ; preds = %3, %7, %9
  %11 = phi i32 [ 16, %9 ], [ 10, %7 ], [ 16, %3 ]
  %12 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  br label %23

16:                                               ; preds = %51, %10
  %17 = call ptr @__cxa_allocate_exception(i64 48) #15
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %19 = load ptr, ptr %18, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull @.str, i32 noundef 2011, i32 noundef 47, ptr noundef %19) #17
          to label %20 unwind label %21

20:                                               ; preds = %16
  call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %14, %51
  %24 = phi i16 [ %12, %14 ], [ %54, %51 ]
  %25 = phi i1 [ true, %14 ], [ false, %51 ]
  %26 = phi i32 [ 0, %14 ], [ %52, %51 ]
  %27 = zext i16 %24 to i32
  %28 = icmp eq i16 %24, 59
  br i1 %28, label %56, label %29

29:                                               ; preds = %23
  %30 = add i16 %24, -48
  %31 = icmp ult i16 %30, 10
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = add i16 %24, -65
  %34 = icmp ult i16 %33, 6
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = add i16 %24, -97
  %37 = icmp ult i16 %36, 6
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  store i16 0, ptr %1, align 2, !tbaa !222
  br i1 %25, label %40, label %39

39:                                               ; preds = %38
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 225) #17
  br label %80

40:                                               ; preds = %38
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 260) #17
  br label %80

41:                                               ; preds = %35, %32, %29
  %42 = phi i32 [ -48, %29 ], [ -55, %32 ], [ -87, %35 ]
  %43 = add nsw i32 %42, %27
  %44 = icmp ult i32 %43, %11
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i16 %24, ptr %4, align 2, !tbaa !222
  store i16 0, ptr %15, align 2, !tbaa !222
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 273, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %51

46:                                               ; preds = %41
  %47 = mul i32 %26, %11
  %48 = add i32 %43, %47
  %49 = icmp ugt i32 %48, 1114111
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 224) #17
  br label %80

51:                                               ; preds = %45, %46
  %52 = phi i32 [ %26, %45 ], [ %48, %46 ]
  %53 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %54 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %16, label %23

56:                                               ; preds = %23
  %57 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %58 = add i32 %26, -65536
  %59 = icmp ult i32 %58, 1048576
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = lshr i32 %58, 10
  %62 = trunc i32 %61 to i16
  %63 = or disjoint i16 %62, -10240
  store i16 %63, ptr %1, align 2, !tbaa !222
  %64 = trunc i32 %26 to i16
  %65 = and i16 %64, 1023
  %66 = or disjoint i16 %65, -9216
  store i16 %66, ptr %2, align 2, !tbaa !222
  br label %80

67:                                               ; preds = %56
  %68 = icmp ult i32 %26, 65534
  br i1 %68, label %69, label %79

69:                                               ; preds = %67
  %70 = trunc i32 %26 to i16
  store i16 %70, ptr %1, align 2, !tbaa !222
  store i16 0, ptr %2, align 2, !tbaa !222
  %71 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %72 = load i16, ptr %1, align 2, !tbaa !222
  %73 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %71, i16 noundef zeroext %72) #17
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %76 = load i16, ptr %1, align 2, !tbaa !222
  %77 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13isControlCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %75, i16 noundef zeroext %76) #17
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 224) #17
  br label %80

79:                                               ; preds = %67
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 224) #17
  br label %80

80:                                               ; preds = %39, %40, %50, %60, %69, %74, %79, %78
  %81 = phi i1 [ false, %78 ], [ false, %79 ], [ true, %74 ], [ true, %69 ], [ true, %60 ], [ false, %50 ], [ false, %40 ], [ false, %39 ]
  ret i1 %81
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13isControlCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !334
  %8 = and i8 %7, 32
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr nocapture noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 !prof !421 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 35
  %3 = load i32, ptr %2, align 4, !tbaa !422
  %4 = icmp ult i32 %3, 64
  br i1 %4, label %5, label %16, !prof !423

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %7 = load ptr, ptr %6, align 8, !tbaa !230
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %9 = load i32, ptr %8, align 8, !tbaa !231
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = zext nneg i32 %3 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = add nuw nsw i32 %3, 1
  store i32 %15, ptr %2, align 4, !tbaa !422
  br label %79

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !231
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %21 = load i32, ptr %20, align 8, !tbaa !203
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %16
  %24 = shl i32 %19, 1
  store i32 %24, ptr %20, align 8, !tbaa !203
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %26 = load ptr, ptr %25, align 8, !tbaa !210
  %27 = zext i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = load ptr, ptr %26, align 8, !tbaa !182
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef %28) #17
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %34 = load ptr, ptr %33, align 8, !tbaa !230
  %35 = load i32, ptr %17, align 8, !tbaa !231
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %34, i64 %38, i1 false)
  %39 = load ptr, ptr %25, align 8, !tbaa !210
  %40 = load ptr, ptr %33, align 8, !tbaa !230
  %41 = load ptr, ptr %39, align 8, !tbaa !182
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %40) #17
  store ptr %32, ptr %33, align 8, !tbaa !230
  %44 = load i32, ptr %17, align 8, !tbaa !231
  %45 = add i32 %44, 2
  %46 = load i32, ptr %20, align 8, !tbaa !203
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %23
  %49 = zext i32 %45 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ %49, %48 ], [ %54, %50 ]
  %52 = load ptr, ptr %33, align 8, !tbaa !230
  %53 = getelementptr inbounds ptr, ptr %52, i64 %51
  store ptr null, ptr %53, align 8, !tbaa !178
  %54 = add nuw nsw i64 %51, 1
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %46, %55
  br i1 %56, label %57, label %50, !llvm.loop !424

57:                                               ; preds = %50, %23, %16
  %58 = phi i32 [ %44, %23 ], [ %18, %16 ], [ %44, %50 ]
  %59 = add i32 %58, 1
  store i32 %59, ptr %17, align 8, !tbaa !231
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %61 = load ptr, ptr %60, align 8, !tbaa !210
  %62 = load ptr, ptr %61, align 8, !tbaa !182
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %61, i64 noundef 256) #17
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %67 = load ptr, ptr %66, align 8, !tbaa !230
  %68 = load i32, ptr %17, align 8, !tbaa !231
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  store ptr %65, ptr %70, align 8, !tbaa !178
  %71 = load ptr, ptr %66, align 8, !tbaa !230
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %73, i8 0, i64 256, i1 false)
  store i32 1, ptr %2, align 4, !tbaa !422
  %74 = load ptr, ptr %66, align 8, !tbaa !230
  %75 = load i32, ptr %17, align 8, !tbaa !231
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !178
  br label %79

79:                                               ; preds = %57, %5
  %80 = phi ptr [ %14, %5 ], [ %78, %57 ]
  ret ptr %80
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0) local_unnamed_addr #13 align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  br label %5

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i32 [ 0, %1 ], [ %11, %5 ]
  %7 = load ptr, ptr %3, align 8, !tbaa !230
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %10, i8 0, i64 256, i1 false)
  %11 = add i32 %6, 1
  %12 = load i32, ptr %2, align 8, !tbaa !231
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %4, label %5, !prof !232, !llvm.loop !425
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr nocapture noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #6 align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  br label %31

5:                                                ; preds = %31
  %6 = load ptr, ptr %3, align 8, !tbaa !210
  %7 = load ptr, ptr %4, align 8, !tbaa !230
  %8 = load ptr, ptr %6, align 8, !tbaa !182
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7) #17
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 35
  store i32 0, ptr %11, align 4, !tbaa !422
  store i32 0, ptr %2, align 8, !tbaa !231
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  store i32 2, ptr %12, align 8, !tbaa !203
  %13 = load ptr, ptr %3, align 8, !tbaa !210
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 16) #17
  store ptr %17, ptr %4, align 8, !tbaa !230
  %18 = load ptr, ptr %3, align 8, !tbaa !210
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef 256) #17
  %23 = load ptr, ptr %4, align 8, !tbaa !230
  store ptr %22, ptr %23, align 8, !tbaa !178
  %24 = load ptr, ptr %4, align 8, !tbaa !230
  %25 = load i32, ptr %2, align 8, !tbaa !231
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %28, i8 0, i64 256, i1 false)
  %29 = load ptr, ptr %4, align 8, !tbaa !230
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr null, ptr %30, align 8, !tbaa !178
  ret void

31:                                               ; preds = %1, %31
  %32 = phi i32 [ 0, %1 ], [ %41, %31 ]
  %33 = load ptr, ptr %3, align 8, !tbaa !210
  %34 = load ptr, ptr %4, align 8, !tbaa !230
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !178
  %38 = load ptr, ptr %33, align 8, !tbaa !182
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %37) #17
  %41 = add i32 %32, 1
  %42 = load i32, ptr %2, align 8, !tbaa !231
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %5, label %31, !llvm.loop !426
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #6 comdat align 2 !prof !177 {
  %3 = load ptr, ptr %0, align 8, !tbaa !182
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret i32 2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !177 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720XMLBufferFullHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !185 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720XMLBufferFullHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLGrammarPool16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #5 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !427
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !429
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !429
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !283 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !432 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !433

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #17
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !182
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !434 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !435

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !222
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !436

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !222
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !437, !llvm.loop !438

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
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !429
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(163992) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  store i32 %1, ptr %3, align 4, !tbaa !439
  %4 = icmp eq i32 %1, 1
  %5 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !range !246
  %6 = select i1 %4, i8 1, i8 %5, !prof !440
  %7 = select i1 %4, ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, !prof !440
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  store i8 %6, ptr %8, align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  store ptr %7, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !441 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !442

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !222
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !443

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !222
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !444, !llvm.loop !445

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !216
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !217
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !446

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #17
  %21 = load i32, ptr %0, align 8, !tbaa !216
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !221
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !216
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !216
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !413 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !447, !range !246, !noundef !241
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !448 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 %3, ptr %4, align 8, !tbaa !447
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #5 comdat align 2 !prof !417 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !449
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %0, align 8, !tbaa !261
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !303

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !182
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(41) %3) #18
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !261
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !267 {
  %3 = load ptr, ptr %0, align 8, !tbaa !264
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !450

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !266
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !451

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !182
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #17
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #20
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !264
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !266
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !212 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !452
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !454
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !455
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !456
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !457
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !182
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #17
  store ptr %16, ptr %9, align 8, !tbaa !456
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !458

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !456
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !178
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !459, !llvm.loop !460
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !452, !range !246, !noundef !241
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !461

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !454
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !369

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !456
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %16) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #18
  %19 = load i32, ptr %6, align 4, !tbaa !454
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !462, !llvm.loop !463

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !457
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !456
  %30 = load ptr, ptr %27, align 8, !tbaa !182
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #17
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !454
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !457
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 67, i32 noundef 116, ptr noundef %10) #17
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !452, !range !246, !noundef !241
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !456
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %25) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #18
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !456
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !454
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !454
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !452, !range !246, !noundef !241
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !456
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %17) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #18
  %20 = load ptr, ptr %7, align 8, !tbaa !456
  %21 = load i32, ptr %2, align 4, !tbaa !454
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !178
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !464
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !454
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !457
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 116, ptr noundef %9) #17
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !452, !range !246, !noundef !241
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !456
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %22) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #18
  %25 = load i32, ptr %3, align 4, !tbaa !454
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
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !456
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !456
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !456
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !178
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !178
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !465

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !178
  store i32 %28, ptr %3, align 4, !tbaa !454
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !454
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !454
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !452, !range !246, !noundef !241
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !456
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %15) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #18
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !452, !range !246, !noundef !241
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !454
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !456
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %16) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #18
  %19 = load i32, ptr %6, align 4, !tbaa !454
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !466

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !457
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !456
  %30 = load ptr, ptr %27, align 8, !tbaa !182
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !212 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !337 {
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %0) #17
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #17
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !429
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !177 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !467
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !468
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !308
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !469
  %23 = load i8, ptr %9, align 8, !tbaa !471, !range !246, !noundef !241
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !472
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %26) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #18
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !306
  %31 = load ptr, ptr %30, align 8, !tbaa !182
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #17
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !473

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !308
  %37 = load i32, ptr %4, align 8, !tbaa !467
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !178
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !474

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !468
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !184 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #17
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !184 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !398
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !351

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !475
  store ptr %7, ptr %2, align 8, !tbaa !398
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !476

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !399
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !399
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !400
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !402
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !303

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !477
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !478

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !399
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !479, !llvm.loop !480

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !398
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !399
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !398
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !184 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !429
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
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
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !285 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %2 = load ptr, ptr %0, align 8, !tbaa !481
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !477
  %5 = load ptr, ptr %2, align 8, !tbaa !182
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #17
  store ptr null, ptr %3, align 8, !tbaa !477
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !482
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !182
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !483 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  br i1 %2, label %48, label %3, !prof !484

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !402
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !485
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !477
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !475
  %23 = load i8, ptr %9, align 8, !tbaa !486, !range !246, !noundef !241
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !404
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !182
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(32) %26) #18
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !481
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #17
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !487

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !477
  %40 = load i32, ptr %4, align 8, !tbaa !402
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !178
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !488

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !483 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !485
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #17
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !177 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !429
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !177 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XMLScanner.cpp() #3 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!176}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!35 = !{ptr @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720XMLBufferFullHandlerC2Ev, i64 3}
!39 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE, i64 3}
!40 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_715GrammarResolver27getGrammarPoolMemoryManagerEv, i64 3}
!41 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE, i64 3}
!42 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 21}
!43 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE, i64 3}
!44 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEEC2EPS1_MS1_FvvE, i64 3}
!45 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, i64 3}
!46 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEE7releaseEv, i64 3}
!47 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEED2Ev, i64 3}
!48 = !{ptr @_ZNK11xercesc_2_715GrammarResolver27getGrammarPoolMemoryManagerEv, ptr @_ZN11xercesc_2_714XMLGrammarPool16getMemoryManagerEv, i64 4}
!49 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!50 = !{ptr @_ZN11xercesc_2_710XMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEED2Ev, i64 2}
!51 = !{ptr @_ZN11xercesc_2_710XMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!52 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_7L13gScannerMutexEv, i64 3}
!53 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 3}
!54 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 3}
!55 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!56 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, i64 3}
!57 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE, i64 3}
!58 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj, i64 3}
!59 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE, i64 1}
!60 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_710XMLScanner7cleanUpEv, i64 3}
!61 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_79ElemStackD1Ev, i64 3}
!62 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 21}
!63 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgrD1Ev, i64 3}
!64 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_79ReaderMgrD1Ev, i64 3}
!65 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_720XMLBufferFullHandlerD2Ev, i64 3}
!66 = !{ptr @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE, ptr @_ZN11xercesc_2_712XMLValidator14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE, i64 6}
!67 = !{ptr @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE, ptr @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE, i64 6}
!68 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!69 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_, i64 1}
!70 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!71 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!72 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 3}
!73 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 15}
!74 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb, i64 10}
!75 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 9}
!76 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZNK11xercesc_2_79XMLReader13getLineNumberEv, i64 4}
!77 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv, i64 3}
!78 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 3}
!79 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, i64 4}
!80 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, i64 15}
!81 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_710XMLScanner6scanPIEv, i64 1}
!82 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_710XMLScanner11scanCommentEv, i64 1}
!83 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 5}
!84 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 3}
!85 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, i64 3}
!86 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv, i64 3}
!87 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZNK11xercesc_2_79XMLBufBid6getLenEv, i64 3}
!88 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 1}
!89 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt, i64 1}
!90 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, i64 3}
!91 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!92 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 1}
!93 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 1}
!94 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!95 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 1}
!96 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 1}
!97 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, i64 4}
!98 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 3}
!99 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 5}
!100 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb, i64 1}
!101 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 2}
!102 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 2}
!103 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 1}
!104 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, i64 1}
!105 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv, i64 1}
!106 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZNK11xercesc_2_79XMLBufBid6getLenEv, i64 1}
!107 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 1}
!108 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt, i64 1}
!109 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, i64 3}
!110 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!111 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!112 = !{ptr @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb, ptr @_ZN11xercesc_2_79ReaderMgr10peekStringEPKt, i64 5}
!113 = !{ptr @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb, ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, i64 2}
!114 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!115 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!116 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 612}
!117 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, i64 612}
!118 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 10}
!119 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 10}
!120 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 4}
!121 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt, i64 4}
!122 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_710XMLScanner12scanUpToWSOrERNS_9XMLBufferEt, i64 2}
!123 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 6}
!124 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 6}
!125 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, i64 2}
!126 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, i64 2}
!127 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr13setXMLVersionENS_9XMLReader10XMLVersionE, i64 1}
!128 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 3}
!129 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 1}
!130 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt, i64 1}
!131 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv, i64 2}
!132 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv, i64 3}
!133 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, i64 10}
!134 = !{ptr @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 5}
!135 = !{ptr @_ZN11xercesc_2_710XMLScanner12scanUpToWSOrERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt, i64 3}
!136 = !{ptr @_ZN11xercesc_2_710XMLScanner12scanUpToWSOrERNS_9XMLBufferEt, ptr @_ZNK11xercesc_2_79XMLBuffer6getLenEv, i64 3}
!137 = !{ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 384079}
!138 = !{ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 192040}
!139 = !{ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 3}
!140 = !{ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, i64 3}
!141 = !{ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 7}
!142 = !{ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 5}
!143 = !{ptr @_ZN11xercesc_2_79ReaderMgr13setXMLVersionENS_9XMLReader10XMLVersionE, ptr @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE, i64 2}
!144 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!145 = !{ptr @_ZN11xercesc_2_79ReaderMgr10peekStringEPKt, ptr @_ZN11xercesc_2_79XMLReader10peekStringEPKt, i64 5}
!146 = !{ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, i64 1}
!147 = !{ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv, i64 1}
!148 = !{ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv, i64 1}
!149 = !{ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev, i64 1}
!150 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEC2Ev, i64 1}
!151 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!152 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv, i64 1}
!153 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEED2Ev, i64 1}
!154 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, i64 3026825}
!155 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 4540999}
!156 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev, i64 3026825}
!157 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 2194499}
!158 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, i64 1514174}
!159 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, i64 1}
!160 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZNK11xercesc_2_79ReaderMgr11getThrowEOEEv, i64 4539474}
!161 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorC2EPNS_9ReaderMgrEb, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!162 = !{ptr @_ZN11xercesc_2_715ThrowEOEJanitorD2Ev, ptr @_ZN11xercesc_2_79ReaderMgr11setThrowEOEEb, i64 4539474}
!163 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!164 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!165 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!166 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!167 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!168 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!169 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMLAttrD2Ev, i64 5}
!170 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!171 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev, i64 4}
!172 = !{ptr @_ZN11xercesc_2_77XMLAttrD2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!173 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv, i64 5}
!174 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv, i64 5}
!175 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7isEmptyEv, i64 8}
!176 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!177 = !{!"function_entry_count", i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"any pointer", !180, i64 0}
!180 = !{!"omnipotent char", !181, i64 0}
!181 = !{!"Simple C++ TBAA"}
!182 = !{!183, !183, i64 0}
!183 = !{!"vtable pointer", !181, i64 0}
!184 = !{!"function_entry_count", i64 1}
!185 = !{!"function_entry_count", i64 3}
!186 = !{!187, !189, i64 8}
!187 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !188, i64 0, !189, i64 8, !190, i64 16, !190, i64 17, !190, i64 18, !190, i64 19, !190, i64 20, !190, i64 21, !190, i64 22, !190, i64 23, !190, i64 24, !190, i64 25, !190, i64 26, !190, i64 27, !190, i64 28, !190, i64 29, !190, i64 30, !190, i64 31, !190, i64 32, !190, i64 33, !190, i64 34, !190, i64 35, !190, i64 36, !190, i64 37, !190, i64 38, !191, i64 40, !191, i64 44, !191, i64 48, !191, i64 52, !191, i64 56, !191, i64 60, !191, i64 64, !191, i64 68, !179, i64 72, !191, i64 80, !191, i64 84, !191, i64 88, !191, i64 92, !191, i64 96, !179, i64 104, !179, i64 112, !179, i64 120, !179, i64 128, !179, i64 136, !179, i64 144, !179, i64 152, !179, i64 160, !179, i64 168, !190, i64 176, !192, i64 184, !179, i64 264, !195, i64 272, !179, i64 280, !179, i64 288, !179, i64 296, !179, i64 304, !179, i64 312, !179, i64 320, !179, i64 328, !179, i64 336, !179, i64 344, !194, i64 352, !179, i64 360, !196, i64 368, !197, i64 392, !197, i64 432, !197, i64 472, !197, i64 512, !197, i64 552, !197, i64 592, !197, i64 632, !198, i64 672}
!188 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!189 = !{!"long", !180, i64 0}
!190 = !{!"bool", !180, i64 0}
!191 = !{!"int", !180, i64 0}
!192 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !193, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !191, i64 40, !179, i64 48, !190, i64 56, !194, i64 60, !190, i64 64, !179, i64 72}
!193 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!194 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !180, i64 0}
!195 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !180, i64 0}
!196 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !191, i64 0, !179, i64 8, !179, i64 16}
!197 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !191, i64 0, !191, i64 4, !191, i64 8, !190, i64 12, !179, i64 16, !179, i64 24, !179, i64 32}
!198 = !{!"_ZTSN11xercesc_2_79ElemStackE", !191, i64 0, !191, i64 4, !199, i64 8, !179, i64 48, !191, i64 56, !191, i64 60, !191, i64 64, !191, i64 68, !191, i64 72, !191, i64 76, !191, i64 80, !179, i64 88, !179, i64 96}
!199 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !200, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !191, i64 32, !191, i64 36}
!200 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!201 = !{!190, !190, i64 0}
!202 = !{!187, !190, i64 32}
!203 = !{!187, !191, i64 88}
!204 = !{!187, !191, i64 92}
!205 = !{!187, !191, i64 96}
!206 = !{!187, !179, i64 264}
!207 = !{!187, !195, i64 272}
!208 = !{!187, !179, i64 280}
!209 = !{!187, !179, i64 288}
!210 = !{!187, !179, i64 360}
!211 = !{!"function_entry_count", i64 5836268}
!212 = !{!"function_entry_count", i64 4}
!213 = !{!214, !179, i64 48}
!214 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !190, i64 0, !190, i64 1, !190, i64 2, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48, !179, i64 56, !179, i64 64, !179, i64 72}
!215 = !{!"function_entry_count", i64 496321}
!216 = !{!197, !191, i64 0}
!217 = !{!197, !191, i64 4}
!218 = !{!197, !191, i64 8}
!219 = !{!197, !190, i64 12}
!220 = !{!197, !179, i64 16}
!221 = !{!197, !179, i64 32}
!222 = !{!223, !223, i64 0}
!223 = !{!"short", !180, i64 0}
!224 = !{!187, !179, i64 104}
!225 = !{!187, !179, i64 112}
!226 = !{!187, !179, i64 168}
!227 = !{!187, !179, i64 320}
!228 = !{!187, !179, i64 328}
!229 = !{!187, !179, i64 336}
!230 = !{!187, !179, i64 72}
!231 = !{!187, !191, i64 80}
!232 = !{!"branch_weights", i32 4, i32 0}
!233 = distinct !{!233, !234}
!234 = !{!"llvm.loop.mustprogress"}
!235 = !{!236, !179, i64 0}
!236 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_10XMLScannerEEE", !179, i64 0, !180, i64 8}
!237 = !{!236, !180, i64 8}
!238 = !{!191, !191, i64 0}
!239 = !{!"branch_weights", i32 4, i32 1}
!240 = !{!187, !190, i64 25}
!241 = !{}
!242 = !{!187, !179, i64 120}
!243 = !{!187, !179, i64 128}
!244 = !{!187, !179, i64 136}
!245 = !{!187, !179, i64 144}
!246 = !{i8 0, i8 2}
!247 = !{!"function_entry_count", i64 6}
!248 = !{!187, !190, i64 16}
!249 = !{!187, !190, i64 21}
!250 = !{!251, !179, i64 0}
!251 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !179, i64 0, !179, i64 8, !189, i64 16, !189, i64 24}
!252 = !{!251, !179, i64 8}
!253 = !{!251, !189, i64 16}
!254 = !{!251, !189, i64 24}
!255 = !{!256, !256, i64 0}
!256 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !180, i64 0}
!257 = !{!258, !179, i64 32}
!258 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !259, i64 8, !179, i64 16, !191, i64 24, !179, i64 32, !179, i64 40}
!259 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !180, i64 0}
!260 = !{!258, !259, i64 8}
!261 = !{!262, !179, i64 0}
!262 = !{!"_ZTSN11xercesc_2_77JanitorINS_11InputSourceEEE", !179, i64 0}
!263 = !{!"function_entry_count", i64 52059}
!264 = !{!265, !179, i64 0}
!265 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !179, i64 0, !179, i64 8}
!266 = !{!265, !179, i64 8}
!267 = !{!"function_entry_count", i64 243874}
!268 = !{!269, !179, i64 0}
!269 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9ReaderMgrEEE", !179, i64 0, !180, i64 8}
!270 = !{!269, !180, i64 8}
!271 = !{!"branch_weights", i32 6, i32 3}
!272 = !{!"branch_weights", i32 3, i32 4}
!273 = !{!"branch_weights", i32 3, i32 1}
!274 = !{!"branch_weights", i32 1, i32 4}
!275 = !{!187, !190, i64 24}
!276 = !{!187, !179, i64 296}
!277 = !{!187, !190, i64 30}
!278 = !{!"branch_weights", i32 1, i32 3}
!279 = !{!280, !191, i64 0}
!280 = !{!"_ZTSN11xercesc_2_713XMLPScanTokenE", !191, i64 0, !191, i64 4}
!281 = !{!280, !191, i64 4}
!282 = !{!187, !191, i64 40}
!283 = !{!"function_entry_count", i64 2}
!284 = !{!187, !179, i64 152}
!285 = !{!"function_entry_count", i64 5}
!286 = !{!187, !190, i64 18}
!287 = !{!"function_entry_count", i64 1666453}
!288 = !{!187, !190, i64 26}
!289 = !{!187, !190, i64 17}
!290 = !{!187, !190, i64 19}
!291 = !{!187, !190, i64 20}
!292 = !{!187, !190, i64 28}
!293 = !{!187, !190, i64 27}
!294 = !{!187, !190, i64 29}
!295 = !{!187, !190, i64 31}
!296 = !{!187, !179, i64 344}
!297 = !{!187, !191, i64 44}
!298 = !{!187, !191, i64 48}
!299 = !{!187, !179, i64 160}
!300 = !{!"function_entry_count", i64 1035025}
!301 = !{!"XMLScanner.cpp:_ZN11xercesc_2_7L13gScannerMutexEv"}
!302 = !{!"branch_weights", i32 3, i32 2}
!303 = !{!"branch_weights", i32 1, i32 2}
!304 = !{!"branch_weights", i32 16, i32 9}
!305 = !{!197, !179, i64 24}
!306 = !{!307, !179, i64 0}
!307 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !179, i64 0, !190, i64 8, !179, i64 16, !191, i64 24, !191, i64 28, !179, i64 32}
!308 = !{!307, !179, i64 16}
!309 = !{!307, !179, i64 32}
!310 = !{!311, !179, i64 32}
!311 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32}
!312 = !{!311, !179, i64 24}
!313 = !{!311, !179, i64 8}
!314 = !{!"function_entry_count", i64 12}
!315 = !{!311, !179, i64 16}
!316 = !{!"XMLScanner.cpp:_ZN11xercesc_2_7L17gScannerMsgLoaderEv"}
!317 = !{!"branch_weights", i32 9, i32 16, i32 3}
!318 = distinct !{!318, !234}
!319 = !{!"function_entry_count", i64 379609}
!320 = !{!321, !179, i64 8}
!321 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !179, i64 0, !179, i64 8}
!322 = !{!"branch_weights", i32 6, i32 1}
!323 = distinct !{!323, !234}
!324 = !{!"function_entry_count", i64 680336}
!325 = !{!192, !179, i64 16}
!326 = !{!"function_entry_count", i64 7478295}
!327 = !{!"function_entry_count", i64 5190970}
!328 = !{!329, !179, i64 163968}
!329 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !191, i64 0, !180, i64 4, !191, i64 32772, !180, i64 32776, !180, i64 49160, !189, i64 114696, !189, i64 114704, !330, i64 114712, !179, i64 114720, !190, i64 114728, !190, i64 114729, !179, i64 114736, !191, i64 114744, !180, i64 114748, !191, i64 163900, !191, i64 163904, !331, i64 163908, !190, i64 163912, !332, i64 163916, !191, i64 163920, !190, i64 163924, !190, i64 163925, !179, i64 163928, !179, i64 163936, !190, i64 163944, !190, i64 163945, !179, i64 163952, !333, i64 163960, !179, i64 163968, !190, i64 163976, !194, i64 163980, !179, i64 163984}
!330 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !180, i64 0}
!331 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !180, i64 0}
!332 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !180, i64 0}
!333 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !180, i64 0}
!334 = !{!180, !180, i64 0}
!335 = !{!"function_entry_count", i64 379607}
!336 = !{!321, !179, i64 0}
!337 = !{!"function_entry_count", i64 10}
!338 = !{!"function_entry_count", i64 612}
!339 = !{!"function_entry_count", i64 3115354}
!340 = !{!"function_entry_count", i64 2194501}
!341 = !{!198, !191, i64 60}
!342 = !{!198, !179, i64 48}
!343 = !{!344, !190, i64 49}
!344 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !179, i64 0, !191, i64 8, !191, i64 12, !191, i64 16, !179, i64 24, !179, i64 32, !191, i64 40, !191, i64 44, !190, i64 48, !190, i64 49, !190, i64 50, !191, i64 52, !179, i64 56, !191, i64 64, !179, i64 72, !191, i64 80, !191, i64 84}
!345 = !{!"function_entry_count", i64 1382}
!346 = !{!329, !189, i64 114704}
!347 = !{!329, !189, i64 114696}
!348 = !{!"branch_weights", i32 17, i32 3}
!349 = !{!"branch_weights", i32 536870909, i32 1610612739}
!350 = !{!187, !194, i64 352}
!351 = !{!"branch_weights", i32 2, i32 1}
!352 = !{!187, !190, i64 22}
!353 = !{!"branch_weights", i32 3, i32 3}
!354 = !{!"branch_weights", i32 2, i32 3}
!355 = distinct !{!355, !234}
!356 = !{!"branch_weights", i32 3, i32 13}
!357 = !{!"function_entry_count", i64 1231717351}
!358 = !{!"branch_weights", i32 621, i32 -1469098093}
!359 = !{!"branch_weights", i32 408901017, i32 1}
!360 = !{!"branch_weights", i32 267, i32 4}
!361 = !{!"branch_weights", i32 156, i32 112}
!362 = !{!"branch_weights", i32 1, i32 112}
!363 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!364 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!365 = distinct !{!365, !234}
!366 = !{!"function_entry_count", i64 10769804}
!367 = !{!"function_entry_count", i64 192040}
!368 = !{!"branch_weights", i32 192041, i32 1}
!369 = !{!"branch_weights", i32 1, i32 127}
!370 = !{!"branch_weights", i32 10, i32 1}
!371 = !{!"branch_weights", i32 127, i32 193}
!372 = !{!192, !194, i64 60}
!373 = !{!"function_entry_count", i64 3529098}
!374 = !{!"function_entry_count", i64 2059100}
!375 = !{!187, !179, i64 312}
!376 = !{!"branch_weights", i32 2059101, i32 1}
!377 = !{!"branch_weights", i32 1, i32 2059101}
!378 = !{!"function_entry_count", i64 190774}
!379 = !{!187, !190, i64 37}
!380 = !{!381, !382, i64 0}
!381 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !382, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40}
!382 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !180, i64 0}
!383 = !{!381, !179, i64 8}
!384 = !{!381, !179, i64 16}
!385 = !{!381, !179, i64 24}
!386 = !{!381, !179, i64 32}
!387 = !{!381, !179, i64 40}
!388 = !{!187, !191, i64 52}
!389 = !{!187, !191, i64 56}
!390 = !{!187, !191, i64 60}
!391 = !{!187, !191, i64 64}
!392 = !{!"branch_weights", i32 1, i32 1}
!393 = !{!"branch_weights", i32 0, i32 1}
!394 = distinct !{!394, !234}
!395 = !{!396, !190, i64 8}
!396 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE", !397, i64 0, !190, i64 8, !179, i64 16, !191, i64 24, !179, i64 32, !179, i64 40}
!397 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE"}
!398 = !{!396, !179, i64 16}
!399 = !{!396, !191, i64 24}
!400 = !{!396, !179, i64 32}
!401 = !{!396, !179, i64 40}
!402 = !{!403, !191, i64 24}
!403 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEE", !179, i64 0, !190, i64 8, !179, i64 16, !191, i64 24, !191, i64 28, !191, i64 32, !179, i64 40}
!404 = !{!405, !179, i64 0}
!405 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEE", !179, i64 0, !179, i64 8, !179, i64 16}
!406 = !{!407, !190, i64 8}
!407 = !{!"_ZTSN11xercesc_2_710XMLRefInfoE", !200, i64 0, !190, i64 8, !190, i64 9, !179, i64 16, !179, i64 24}
!408 = !{!407, !190, i64 9}
!409 = !{!407, !179, i64 16}
!410 = !{!"function_entry_count", i64 3026825}
!411 = !{!"branch_weights", i32 -2059357751, i32 1477, i32 -2057100933}
!412 = !{!"branch_weights", i32 -2135100114, i32 1762203993, i32 2590, i32 2590}
!413 = !{!"function_entry_count", i64 4539474}
!414 = !{!415, !190, i64 0}
!415 = !{!"_ZTSN11xercesc_2_715ThrowEOEJanitorE", !190, i64 0, !179, i64 8}
!416 = !{!415, !179, i64 8}
!417 = !{!"function_entry_count", i64 4926602}
!418 = !{!"function_entry_count", i64 8985736}
!419 = !{!"function_entry_count", i64 7992849}
!420 = !{!"branch_weights", i32 1, i32 7992850}
!421 = !{!"function_entry_count", i64 13}
!422 = !{!187, !191, i64 84}
!423 = !{!"branch_weights", i32 14, i32 1}
!424 = distinct !{!424, !234}
!425 = distinct !{!425, !234}
!426 = distinct !{!426, !234}
!427 = !{!428, !179, i64 8}
!428 = !{!"_ZTSN11xercesc_2_714XMLGrammarPoolE", !179, i64 8, !190, i64 16}
!429 = !{!258, !179, i64 40}
!430 = !{!192, !179, i64 24}
!431 = !{!192, !190, i64 64}
!432 = !{!"function_entry_count", i64 558789}
!433 = !{!"branch_weights", i32 158605, i32 400186}
!434 = !{!"function_entry_count", i64 2453164456}
!435 = !{!"branch_weights", i32 1, i32 -1841802839}
!436 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!437 = !{!"branch_weights", i32 408669070, i32 -279908794}
!438 = distinct !{!438, !234}
!439 = !{!329, !194, i64 163980}
!440 = !{!"branch_weights", i32 1, i32 6}
!441 = !{!"function_entry_count", i64 789922}
!442 = !{!"branch_weights", i32 1, i32 789923}
!443 = !{!"branch_weights", i32 285, i32 789639}
!444 = !{!"branch_weights", i32 789639, i32 41628304}
!445 = distinct !{!445, !234}
!446 = !{!"branch_weights", i32 789637, i32 3}
!447 = !{!192, !190, i64 56}
!448 = !{!"function_entry_count", i64 9078948}
!449 = !{!329, !191, i64 163904}
!450 = !{!"branch_weights", i32 191816, i32 52060}
!451 = !{!"branch_weights", i32 1, i32 52060}
!452 = !{!453, !190, i64 8}
!453 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !190, i64 8, !191, i64 12, !191, i64 16, !179, i64 24, !179, i64 32}
!454 = !{!453, !191, i64 12}
!455 = !{!453, !191, i64 16}
!456 = !{!453, !179, i64 24}
!457 = !{!453, !179, i64 32}
!458 = !{!"branch_weights", i32 1, i32 159}
!459 = !{!"branch_weights", i32 159, i32 3265}
!460 = distinct !{!460, !234}
!461 = !{!"branch_weights", i32 2, i32 4}
!462 = !{!"branch_weights", i32 225, i32 127}
!463 = distinct !{!463, !234}
!464 = distinct !{!464, !234}
!465 = distinct !{!465, !234}
!466 = distinct !{!466, !234}
!467 = !{!307, !191, i64 24}
!468 = !{!307, !191, i64 28}
!469 = !{!470, !179, i64 8}
!470 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !179, i64 0, !179, i64 8, !179, i64 16, !191, i64 24}
!471 = !{!307, !190, i64 8}
!472 = !{!470, !179, i64 0}
!473 = distinct !{!473, !234}
!474 = distinct !{!474, !234}
!475 = !{!405, !179, i64 8}
!476 = !{!"branch_weights", i32 0, i32 -2147483648}
!477 = !{!403, !179, i64 16}
!478 = !{!"branch_weights", i32 110, i32 1}
!479 = !{!"branch_weights", i32 2, i32 109}
!480 = distinct !{!480, !234}
!481 = !{!403, !179, i64 0}
!482 = !{!403, !179, i64 40}
!483 = !{!"function_entry_count", i64 8}
!484 = !{!"branch_weights", i32 9, i32 1}
!485 = !{!403, !191, i64 32}
!486 = !{!403, !190, i64 8}
!487 = distinct !{!487, !234}
!488 = distinct !{!488, !234}
