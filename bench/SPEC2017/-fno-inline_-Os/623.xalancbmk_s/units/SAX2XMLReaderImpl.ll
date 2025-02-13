; ModuleID = 'SAX2XMLReaderImpl.cpp'
source_filename = "SAX2XMLReaderImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SAX2XMLReaderImpl" = type { %"class.xercesc_2_7::SAX2XMLReader", %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", i8, i8, i8, i8, i8, i32, i32, i32, %"class.xercesc_2_7::VecAttributesImpl", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SAX2XMLReader" = type { ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::VecAttributesImpl" = type { %"class.xercesc_2_7::Attributes", i8, i32, ptr, ptr }
%"class.xercesc_2_7::Attributes" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_713SAX2XMLReaderD2Ev = comdat any

$_ZN11xercesc_2_713SAX2XMLReaderD0Ev = comdat any

$_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl17getContentHandlerEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl13getDTDHandlerEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl17getEntityResolverEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl15getErrorHandlerEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl21getDeclarationHandlerEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl17getLexicalHandlerEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl24getExitOnFirstFatalErrorEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl28getValidationConstraintFatalEv = comdat any

$_ZN11xercesc_2_717SAX2XMLReaderImpl14getRootGrammarEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl10getURITextEj = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl12getSrcOffsetEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl20getXMLEntityResolverEv = comdat any

$_ZNK11xercesc_2_717SAX2XMLReaderImpl14getPSVIHandlerEv = comdat any

$_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713SAX2XMLReaderC2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerC2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterC2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerC2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD0Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD0Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD0Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD0Ev = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb = comdat any

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

$_ZN11xercesc_2_712ValueStackOfIjED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjED2Ev = comdat any

$_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner12getValidatorEv = comdat any

$_ZN11xercesc_2_710XMLScanner13getErrorCountEv = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner10getLocatorEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZNK11xercesc_2_77XMLAttr9getPrefixEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_712ValueStackOfIjE4pushERKj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIjE3popEv = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIjE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl8getValueEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl7getNameEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv = comdat any

$_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb = comdat any

$_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb = comdat any

$_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb = comdat any

$_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb = comdat any

$_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv = comdat any

$_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb = comdat any

$_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb = comdat any

$_ZN11xercesc_2_712SAXExceptionD2Ev = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb = comdat any

$_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv = comdat any

$_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv = comdat any

$_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv = comdat any

$_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv = comdat any

$_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv = comdat any

$_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt = comdat any

$_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt = comdat any

$_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv = comdat any

$_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv = comdat any

$_ZN11xercesc_2_710XMLScanner11setDoSchemaEb = comdat any

$_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv = comdat any

$_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm = comdat any

$_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj = comdat any

$_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv = comdat any

$_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713SAX2XMLReaderE = comdat any

$_ZTSN11xercesc_2_713SAX2XMLReaderE = comdat any

$_ZTIN11xercesc_2_713SAX2XMLReaderE = comdat any

$_ZTSN11xercesc_2_718XMLDocumentHandlerE = comdat any

$_ZTIN11xercesc_2_718XMLDocumentHandlerE = comdat any

$_ZTSN11xercesc_2_716XMLErrorReporterE = comdat any

$_ZTIN11xercesc_2_716XMLErrorReporterE = comdat any

$_ZTSN11xercesc_2_716XMLEntityHandlerE = comdat any

$_ZTIN11xercesc_2_716XMLEntityHandlerE = comdat any

$_ZTSN11xercesc_2_714DocTypeHandlerE = comdat any

$_ZTIN11xercesc_2_714DocTypeHandlerE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_718XMLDocumentHandlerE = comdat any

$_ZTVN11xercesc_2_716XMLErrorReporterE = comdat any

$_ZTVN11xercesc_2_716XMLEntityHandlerE = comdat any

$_ZTVN11xercesc_2_714DocTypeHandlerE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_724SAXNotSupportedExceptionE = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

$_ZTIN11xercesc_2_724SAXNotSupportedExceptionE = comdat any

$_ZTSN11xercesc_2_725SAXNotRecognizedExceptionE = comdat any

$_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE = comdat any

$_ZTVN11xercesc_2_712SAXExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_713SAX2XMLReaderE = linkonce_odr dso_local unnamed_addr constant { [46 x ptr] } { [46 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713SAX2XMLReaderE, ptr @_ZN11xercesc_2_713SAX2XMLReaderD2Ev, ptr @_ZN11xercesc_2_713SAX2XMLReaderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_713SAX2XMLReaderE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713SAX2XMLReaderE\00", comdat, align 1
@_ZTIN11xercesc_2_713SAX2XMLReaderE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713SAX2XMLReaderE }, comdat, align 8
@_ZTVN11xercesc_2_717SAX2XMLReaderImplE = dso_local unnamed_addr constant { [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] } { [86 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getContentHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getDTDHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getEntityResolverEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getErrorHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getFeatureEPKt, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getPropertyEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setContentHandlerEPNS_14ContentHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13setDTDHandlerEPNS_10DTDHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setEntityResolverEPNS_14EntityResolverE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11setPropertyEPKtPv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKc, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl21getDeclarationHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getLexicalHandlerEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl21setDeclarationHandlerEPNS_11DeclHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setLexicalHandlerEPNS_14LexicalHandlerE, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getValidatorEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getErrorCountEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl24getExitOnFirstFatalErrorEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl28getValidationConstraintFatalEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10getGrammarEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14getRootGrammarEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getURITextEj, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getSrcOffsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12setValidatorEPNS_12XMLValidatorE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl24setExitOnFirstFatalErrorEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl28setValidationConstraintFatalEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKtRNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKcRNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl9parseNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseResetERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKtsb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKcsb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl22resetCachedGrammarPoolEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl18setInputBufferSizeEm, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl20installAdvDocHandlerEPNS_18XMLDocumentHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl19removeAdvDocHandlerEPNS_18XMLDocumentHandlerE, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl20getXMLEntityResolverEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl14getPSVIHandlerEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl20setXMLEntityResolverEPNS_17XMLEntityResolverE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_], [17 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_] }, align 8
@_ZTSN11xercesc_2_717SAX2XMLReaderImplE = dso_local constant [35 x i8] c"N11xercesc_2_717SAX2XMLReaderImplE\00", align 1
@_ZTSN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718XMLDocumentHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XMLDocumentHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLErrorReporterE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLErrorReporterE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLEntityHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLEntityHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714DocTypeHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DocTypeHandlerE }, comdat, align 8
@_ZTIN11xercesc_2_717SAX2XMLReaderImplE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717SAX2XMLReaderImplE, i32 0, i32 6, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_713SAX2XMLReaderE, i64 2, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, i64 2050, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, i64 4098, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, i64 6146, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, i64 8194 }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [22 x i8] c"SAX2XMLReaderImpl.cpp\00", align 1
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZN11xercesc_2_76XMLUni12fgNullStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNotationStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13gDTDEntityStrE = internal constant [6 x i16] [i16 91, i16 100, i16 116, i16 100, i16 93, i16 0], align 2
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@.str.4 = private unnamed_addr constant [52 x i8] c"Feature modification is not supported during parse.\00", align 1
@_ZTSN11xercesc_2_724SAXNotSupportedExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724SAXNotSupportedExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_724SAXNotSupportedExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724SAXNotSupportedExceptionE, ptr @_ZTIN11xercesc_2_712SAXExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni27fgSAX2CoreNameSpacePrefixesE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgXercesDynamicE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXercesSchemaE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE = external constant [0 x i16], align 2
@.str.5 = private unnamed_addr constant [16 x i8] c"Unknown Feature\00", align 1
@_ZTSN11xercesc_2_725SAXNotRecognizedExceptionE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_725SAXNotRecognizedExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_725SAXNotRecognizedExceptionE, ptr @_ZTIN11xercesc_2_712SAXExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SAXExceptionE, ptr @_ZN11xercesc_2_712SAXExceptionD2Ev, ptr @_ZN11xercesc_2_712SAXExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"Property modification is not supported during parse.\00", align 1
@_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE = external constant [0 x i16], align 2
@.str.7 = private unnamed_addr constant [17 x i8] c"Unknown Property\00", align 1

@_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_717SAX2XMLReaderImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !147 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getContentHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getDTDHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getFeatureEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  br label %146

7:                                                ; preds = %2
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 2, !tbaa !166, !range !167, !noundef !168
  %13 = icmp ne i8 %12, 0
  br label %146

14:                                               ; preds = %7
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgSAX2CoreNameSpacePrefixesE) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  %19 = load i8, ptr %18, align 8, !tbaa !169, !range !167, !noundef !168
  %20 = icmp ne i8 %19, 0
  br label %146

21:                                               ; preds = %14
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXercesDynamicE) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !170, !range !167, !noundef !168
  %27 = icmp ne i8 %26, 0
  br label %146

28:                                               ; preds = %21
  %29 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  br label %146

33:                                               ; preds = %28
  %34 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !171
  %39 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %38) #18
  br label %146

40:                                               ; preds = %33
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %45 = load ptr, ptr %44, align 8, !tbaa !171
  %46 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %45) #18
  br label %146

47:                                               ; preds = %40
  %48 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %52 = load ptr, ptr %51, align 8, !tbaa !171
  %53 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %52) #18
  br label %146

54:                                               ; preds = %47
  %55 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %59 = load ptr, ptr %58, align 8, !tbaa !171
  %60 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %59) #18
  %61 = xor i1 %60, true
  br label %146

62:                                               ; preds = %54
  %63 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE) #18
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %67 = load ptr, ptr %66, align 8, !tbaa !171
  %68 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %67) #18
  br label %146

69:                                               ; preds = %62
  %70 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %74 = load ptr, ptr %73, align 8, !tbaa !171
  %75 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %74) #18
  br label %146

76:                                               ; preds = %69
  %77 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE) #18
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %81 = load ptr, ptr %80, align 8, !tbaa !171
  %82 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %81) #18
  br label %146

83:                                               ; preds = %76
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %88 = load ptr, ptr %87, align 8, !tbaa !171
  %89 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %88) #18
  br label %146

90:                                               ; preds = %83
  %91 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %95 = load ptr, ptr %94, align 8, !tbaa !171
  %96 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %95) #18
  br label %146

97:                                               ; preds = %90
  %98 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE) #18
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %102 = load ptr, ptr %101, align 8, !tbaa !171
  %103 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %102) #18
  br label %146

104:                                              ; preds = %97
  %105 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE) #18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %109 = load ptr, ptr %108, align 8, !tbaa !171
  %110 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %109) #18
  br label %146

111:                                              ; preds = %104
  %112 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE) #18
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %116 = load ptr, ptr %115, align 8, !tbaa !171
  %117 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %116) #18
  br label %146

118:                                              ; preds = %111
  %119 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE) #18
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %123 = load ptr, ptr %122, align 8, !tbaa !171
  %124 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %123) #18
  br label %146

125:                                              ; preds = %118
  %126 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE) #18
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %130 = load ptr, ptr %129, align 8, !tbaa !171
  %131 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %130) #18
  br label %146

132:                                              ; preds = %125
  %133 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE) #18
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %137 = load ptr, ptr %136, align 8, !tbaa !171
  %138 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %137) #18
  br label %146

139:                                              ; preds = %132
  %140 = tail call ptr @__cxa_allocate_exception(i64 24) #19
  %141 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %142 = load ptr, ptr %141, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %140, ptr noundef nonnull @.str.5, ptr noundef %142) #18
          to label %143 unwind label %144

143:                                              ; preds = %139
  tail call void @__cxa_throw(ptr nonnull %140, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
  unreachable

144:                                              ; preds = %139
  %145 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %140) #19
  resume { ptr, i32 } %145

146:                                              ; preds = %135, %128, %121, %114, %107, %100, %93, %86, %79, %72, %65, %57, %50, %43, %36, %31, %24, %17, %10, %5
  %147 = phi i1 [ %6, %5 ], [ %13, %10 ], [ %20, %17 ], [ %27, %24 ], [ %32, %31 ], [ %39, %36 ], [ %46, %43 ], [ %53, %50 ], [ %61, %57 ], [ %68, %65 ], [ %75, %72 ], [ %82, %79 ], [ %89, %86 ], [ %96, %93 ], [ %103, %100 ], [ %110, %107 ], [ %117, %114 ], [ %124, %121 ], [ %131, %128 ], [ %138, %135 ]
  ret i1 %147
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getPropertyEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %7) #18
  br label %39

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  %15 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %14) #18
  br label %39

16:                                               ; preds = %9
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %21 = load ptr, ptr %20, align 8, !tbaa !171
  %22 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %21) #18
  br label %39

23:                                               ; preds = %16
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE) #18
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %27 = load ptr, ptr %26, align 8, !tbaa !171
  %28 = load ptr, ptr %27, align 8, !tbaa !173
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(776) %27) #18
  br label %39

32:                                               ; preds = %23
  %33 = tail call ptr @__cxa_allocate_exception(i64 24) #19
  %34 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %35 = load ptr, ptr %34, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull @.str.7, ptr noundef %35) #18
          to label %36 unwind label %37

36:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
  unreachable

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %33) #19
  resume { ptr, i32 } %38

39:                                               ; preds = %25, %19, %12, %5
  %40 = phi ptr [ %8, %5 ], [ %15, %12 ], [ %22, %19 ], [ %31, %25 ]
  ret ptr %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setContentHandlerEPNS_14ContentHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !149
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !175

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %7, ptr noundef nonnull %8) #18
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !176
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %15 = load ptr, ptr %14, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef null) #18
  br label %16

16:                                               ; preds = %9, %13, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13setDTDHandlerEPNS_10DTDHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  store ptr %1, ptr %3, align 8, !tbaa !163
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br i1 %4, label %9, label %7, !prof !175

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  store ptr %1, ptr %3, align 8, !tbaa !164
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br i1 %4, label %10, label %7, !prof !177

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  store ptr null, ptr %9, align 8, !tbaa !178
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  store ptr %1, ptr %3, align 8, !tbaa !165
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br i1 %4, label %10, label %7, !prof !175

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !165
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi ptr [ null, %10 ], [ %9, %7 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %13, ptr noundef %12) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !180, !range !167, !noundef !168
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8, !prof !181

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #19
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.4, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724SAXNotSupportedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %158

15:                                               ; preds = %3
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !182

18:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %2) #18
  br label %157

19:                                               ; preds = %15
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31, !prof !183

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  store i8 %4, ptr %23, align 2, !tbaa !166
  br i1 %2, label %24, label %30

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !170, !range !167, !noundef !168
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 2) #18
  br label %157

29:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 1) #18
  br label %157

30:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 0) #18
  br label %157

31:                                               ; preds = %19
  %32 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgSAX2CoreNameSpacePrefixesE) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36, !prof !184

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  store i8 %4, ptr %35, align 8, !tbaa !169
  br label %157

36:                                               ; preds = %31
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXercesDynamicE) #18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48, !prof !185

39:                                               ; preds = %36
  %40 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  store i8 %4, ptr %40, align 1, !tbaa !170
  %41 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  %42 = load i8, ptr %41, align 2, !tbaa !166, !range !167, !noundef !168
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44, !prof !175

44:                                               ; preds = %39
  br i1 %2, label %45, label %46, !prof !177

45:                                               ; preds = %44
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 2) #18
  br label %157

46:                                               ; preds = %44
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 1) #18
  br label %157

47:                                               ; preds = %39
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 0) #18
  br label %157

48:                                               ; preds = %36
  %49 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52, !prof !177

51:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %2) #18
  br label %157

52:                                               ; preds = %48
  %53 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %57 = load ptr, ptr %56, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %57, i1 noundef zeroext %2) #18
  br label %157

58:                                               ; preds = %52
  %59 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %63 = load ptr, ptr %62, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %63, i1 noundef zeroext %2) #18
  br label %157

64:                                               ; preds = %58
  %65 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %69 = load ptr, ptr %68, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %69, i1 noundef zeroext %2) #18
  br label %157

70:                                               ; preds = %64
  %71 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE) #18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %75 = load ptr, ptr %74, align 8, !tbaa !171
  %76 = xor i1 %2, true
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %75, i1 noundef zeroext %76) #18
  br label %157

77:                                               ; preds = %70
  %78 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE) #18
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %82 = load ptr, ptr %81, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %82, i1 noundef zeroext %2) #18
  br label %157

83:                                               ; preds = %77
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %88 = load ptr, ptr %87, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %88, i1 noundef zeroext %2) #18
  br i1 %2, label %89, label %157

89:                                               ; preds = %86
  %90 = load ptr, ptr %87, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %90, i1 noundef zeroext true) #18
  br label %157

91:                                               ; preds = %83
  %92 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  br i1 %2, label %99, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %97 = load ptr, ptr %96, align 8, !tbaa !171
  %98 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %97) #18
  br i1 %98, label %157, label %99

99:                                               ; preds = %95, %94
  %100 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %101 = load ptr, ptr %100, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %101, i1 noundef zeroext %2) #18
  br label %157

102:                                              ; preds = %91
  %103 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE) #18
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %107 = load ptr, ptr %106, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %107, i1 noundef zeroext %2) #18
  br label %157

108:                                              ; preds = %102
  %109 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE) #18
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %113 = load ptr, ptr %112, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %113, i1 noundef zeroext %2) #18
  br label %157

114:                                              ; preds = %108
  %115 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE) #18
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %119 = load ptr, ptr %118, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %119, i1 noundef zeroext %2) #18
  br label %157

120:                                              ; preds = %114
  %121 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE) #18
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %125 = load ptr, ptr %124, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %125, i1 noundef zeroext %2) #18
  br label %157

126:                                              ; preds = %120
  %127 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %131 = load ptr, ptr %130, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %131, i1 noundef zeroext %2) #18
  br label %157

132:                                              ; preds = %126
  %133 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE) #18
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %137 = load ptr, ptr %136, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %137, i1 noundef zeroext %2) #18
  br label %157

138:                                              ; preds = %132
  %139 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE) #18
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %143 = load ptr, ptr %142, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %143, i1 noundef zeroext %2) #18
  br label %157

144:                                              ; preds = %138
  %145 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE) #18
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %149 = load ptr, ptr %148, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %149, i1 noundef zeroext %2) #18
  br label %157

150:                                              ; preds = %144
  %151 = tail call ptr @__cxa_allocate_exception(i64 24) #19
  %152 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %153 = load ptr, ptr %152, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %151, ptr noundef nonnull @.str.5, ptr noundef %153) #18
          to label %154 unwind label %155

154:                                              ; preds = %150
  tail call void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
  unreachable

155:                                              ; preds = %150
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %158

157:                                              ; preds = %28, %29, %30, %45, %46, %47, %55, %67, %80, %99, %95, %111, %123, %135, %147, %141, %129, %117, %105, %86, %89, %73, %61, %51, %34, %18
  ret void

158:                                              ; preds = %155, %13
  %159 = phi ptr [ %151, %155 ], [ %9, %13 ]
  %160 = phi { ptr, i32 } [ %156, %155 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %159) #19
  resume { ptr, i32 } %160
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setPropertyEPKtPv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !180, !range !167, !noundef !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull @.str.6, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724SAXNotSupportedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %63

14:                                               ; preds = %3
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef %2) #18
  br label %62

20:                                               ; preds = %14
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %25, ptr noundef %2) #18
  br label %62

26:                                               ; preds = %20
  %27 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE) #18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %31 = load ptr, ptr %30, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %31, ptr noundef %2) #18
  br label %62

32:                                               ; preds = %26
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE) #18
  br i1 %33, label %34, label %55

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 30
  %36 = load ptr, ptr %35, align 8, !tbaa !186
  %37 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %38 = load ptr, ptr %37, align 8, !tbaa !187
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %40 = load ptr, ptr %39, align 8, !tbaa !172
  %41 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %36, ptr noundef %38, ptr noundef %40) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %45 = load ptr, ptr %44, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %41, ptr noundef %45) #18
  %46 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !188
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %41, ptr noundef %47) #18
  %48 = load ptr, ptr %44, align 8, !tbaa !171
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %48, align 8, !tbaa !173
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(776) %48) #17
  br label %54

54:                                               ; preds = %50, %43
  store ptr %41, ptr %44, align 8, !tbaa !171
  br label %62

55:                                               ; preds = %32
  %56 = tail call ptr @__cxa_allocate_exception(i64 24) #19
  %57 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %58 = load ptr, ptr %57, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull @.str.7, ptr noundef %58) #18
          to label %59 unwind label %60

59:                                               ; preds = %55
  tail call void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
  unreachable

60:                                               ; preds = %55
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %63

62:                                               ; preds = %34, %54, %23, %29, %17
  ret void

63:                                               ; preds = %60, %12
  %64 = phi ptr [ %56, %60 ], [ %8, %12 ]
  %65 = phi { ptr, i32 } [ %61, %60 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %64) #19
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !180, !range !167, !noundef !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7, !prof !177

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 393, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #19
  br label %39

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %4, align 1, !tbaa !180
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef nonnull align 1 %1) #18
          to label %35 unwind label %22

22:                                               ; preds = %16
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = call ptr @__cxa_begin_catch(ptr %24) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  invoke void @__cxa_rethrow() #20
          to label %47 unwind label %30

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %44

32:                                               ; preds = %30
  %33 = extractvalue { ptr, i32 } %31, 1
  %34 = extractvalue { ptr, i32 } %31, 0
  br label %36

35:                                               ; preds = %16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void

36:                                               ; preds = %32, %22
  %37 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %38 = phi ptr [ %34, %32 ], [ %24, %22 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %39

39:                                               ; preds = %36, %12
  %40 = phi i32 [ %15, %12 ], [ %37, %36 ]
  %41 = phi ptr [ %14, %12 ], [ %38, %36 ]
  %42 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %43 = insertvalue { ptr, i32 } %42, i32 %40, 1
  resume { ptr, i32 } %43

44:                                               ; preds = %30
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #16
  unreachable

47:                                               ; preds = %28
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKt(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !180, !range !167, !noundef !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 414, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #19
  br label %36

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %4, align 1, !tbaa !180
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #18
          to label %32 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = call ptr @__cxa_begin_catch(ptr %21) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  invoke void @__cxa_rethrow() #20
          to label %44 unwind label %27

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %29 unwind label %41

29:                                               ; preds = %27
  %30 = extractvalue { ptr, i32 } %28, 1
  %31 = extractvalue { ptr, i32 } %28, 0
  br label %33

32:                                               ; preds = %16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %35 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %36

36:                                               ; preds = %33, %12
  %37 = phi i32 [ %15, %12 ], [ %34, %33 ]
  %38 = phi ptr [ %14, %12 ], [ %35, %33 ]
  %39 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %40 = insertvalue { ptr, i32 } %39, i32 %37, 1
  resume { ptr, i32 } %40

41:                                               ; preds = %27
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #16
  unreachable

44:                                               ; preds = %25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKc(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !180, !range !167, !noundef !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #19
  br label %36

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %4, align 1, !tbaa !180
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #18
          to label %19 unwind label %20

19:                                               ; preds = %16
  store i8 0, ptr %4, align 1, !tbaa !180
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  invoke void @__cxa_rethrow() #20
          to label %44 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %41

30:                                               ; preds = %28
  %31 = extractvalue { ptr, i32 } %29, 1
  %32 = extractvalue { ptr, i32 } %29, 0
  br label %33

33:                                               ; preds = %30, %20
  %34 = phi i32 [ %31, %30 ], [ %23, %20 ]
  %35 = phi ptr [ %32, %30 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %36

36:                                               ; preds = %33, %12
  %37 = phi i32 [ %15, %12 ], [ %34, %33 ]
  %38 = phi ptr [ %14, %12 ], [ %35, %33 ]
  %39 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %40 = insertvalue { ptr, i32 } %39, i32 %37, 1
  resume { ptr, i32 } %40

41:                                               ; preds = %28
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #16
  unreachable

44:                                               ; preds = %26
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl21getDeclarationHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getLexicalHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl21setDeclarationHandlerEPNS_11DeclHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  store ptr %1, ptr %3, align 8, !tbaa !189
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br i1 %4, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setLexicalHandlerEPNS_14LexicalHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  store ptr %1, ptr %3, align 8, !tbaa !190
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br i1 %4, label %9, label %7, !prof !175

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getURITextEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12setValidatorEPNS_12XMLValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 30
  store ptr %1, ptr %3, align 8, !tbaa !186
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !180, !range !167, !noundef !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) #18
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !180, !range !167, !noundef !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 477, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) #18
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !180, !range !167, !noundef !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 490, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 4 dereferenceable(8) %2) #18
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 4 dereferenceable(8) %1) #18
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseResetERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 4 dereferenceable(8) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !180, !range !167, !noundef !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.1, i32 noundef 1522, i32 noundef 43, ptr noundef %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  tail call void @__cxa_free_exception(ptr %10) #19
  br label %42

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %6, align 1, !tbaa !180
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = getelementptr inbounds ptr, ptr %21, i64 10
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %25 unwind label %26

25:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret ptr %24

26:                                               ; preds = %18
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = call ptr @__cxa_begin_catch(ptr %28) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  invoke void @__cxa_rethrow() #20
          to label %50 unwind label %34

34:                                               ; preds = %32
  %35 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %36 unwind label %47

36:                                               ; preds = %34
  %37 = extractvalue { ptr, i32 } %35, 1
  %38 = extractvalue { ptr, i32 } %35, 0
  br label %39

39:                                               ; preds = %36, %26
  %40 = phi i32 [ %37, %36 ], [ %29, %26 ]
  %41 = phi ptr [ %38, %36 ], [ %28, %26 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %42

42:                                               ; preds = %39, %14
  %43 = phi i32 [ %17, %14 ], [ %40, %39 ]
  %44 = phi ptr [ %16, %14 ], [ %41, %39 ]
  %45 = insertvalue { ptr, i32 } poison, ptr %44, 0
  %46 = insertvalue { ptr, i32 } %45, i32 %43, 1
  resume { ptr, i32 } %46

47:                                               ; preds = %34
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #16
  unreachable

50:                                               ; preds = %32
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !180, !range !167, !noundef !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.1, i32 noundef 1496, i32 noundef 43, ptr noundef %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  tail call void @__cxa_free_exception(ptr %10) #19
  br label %39

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %6, align 1, !tbaa !180
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  %21 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret ptr %21

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call ptr @__cxa_begin_catch(ptr %25) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  invoke void @__cxa_rethrow() #20
          to label %47 unwind label %31

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %44

33:                                               ; preds = %31
  %34 = extractvalue { ptr, i32 } %32, 1
  %35 = extractvalue { ptr, i32 } %32, 0
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi i32 [ %34, %33 ], [ %26, %23 ]
  %38 = phi ptr [ %35, %33 ], [ %25, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %39

39:                                               ; preds = %36, %14
  %40 = phi i32 [ %17, %14 ], [ %37, %36 ]
  %41 = phi ptr [ %16, %14 ], [ %38, %36 ]
  %42 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %43 = insertvalue { ptr, i32 } %42, i32 %40, 1
  resume { ptr, i32 } %43

44:                                               ; preds = %31
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #16
  unreachable

47:                                               ; preds = %29
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !180, !range !167, !noundef !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.1, i32 noundef 1470, i32 noundef 43, ptr noundef %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  tail call void @__cxa_free_exception(ptr %10) #19
  br label %39

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %6, align 1, !tbaa !180
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  %21 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret ptr %21

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call ptr @__cxa_begin_catch(ptr %25) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  invoke void @__cxa_rethrow() #20
          to label %47 unwind label %31

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %44

33:                                               ; preds = %31
  %34 = extractvalue { ptr, i32 } %32, 1
  %35 = extractvalue { ptr, i32 } %32, 0
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi i32 [ %34, %33 ], [ %26, %23 ]
  %38 = phi ptr [ %35, %33 ], [ %25, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %39

39:                                               ; preds = %36, %14
  %40 = phi i32 [ %17, %14 ], [ %37, %36 ]
  %41 = phi ptr [ %16, %14 ], [ %38, %36 ]
  %42 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %43 = insertvalue { ptr, i32 } %42, i32 %40, 1
  resume { ptr, i32 } %43

44:                                               ; preds = %31
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #16
  unreachable

47:                                               ; preds = %29
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl18setInputBufferSizeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i64 noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(776) %4, i64 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20installAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !191
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  br label %40

11:                                               ; preds = %2
  %12 = uitofp i32 %4 to double
  %13 = fmul double %12, 1.500000e+00
  %14 = fptoui double %13 to i32
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %16 = load ptr, ptr %15, align 8, !tbaa !172
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %16, align 8, !tbaa !173
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %18) #18
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !192
  %25 = load i32, ptr %5, align 8, !tbaa !191
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %24, i64 %27, i1 false)
  %28 = load i32, ptr %5, align 8, !tbaa !191
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %22, i64 %29
  %31 = sub i32 %14, %28
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %33, i1 false)
  %34 = load ptr, ptr %15, align 8, !tbaa !172
  %35 = load ptr, ptr %23, align 8, !tbaa !192
  %36 = load ptr, ptr %34, align 8, !tbaa !173
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %35) #18
  store ptr %22, ptr %23, align 8, !tbaa !192
  store i32 %14, ptr %5, align 8, !tbaa !191
  %39 = load i32, ptr %3, align 4, !tbaa !176
  br label %40

40:                                               ; preds = %8, %11
  %41 = phi i32 [ %4, %8 ], [ %39, %11 ]
  %42 = phi ptr [ %10, %8 ], [ %22, %11 ]
  %43 = add i32 %41, 1
  store i32 %43, ptr %3, align 4, !tbaa !176
  %44 = zext i32 %41 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %1, ptr %45, align 8, !tbaa !193
  %46 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %47 = load ptr, ptr %46, align 8, !tbaa !171
  %48 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %47, ptr noundef nonnull %48) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl19removeAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef readnone %1) unnamed_addr #0 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !192
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %40
  %11 = phi i64 [ 0, %6 ], [ %41, %40 ]
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !193
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = icmp eq i32 %4, 1
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = trunc i64 %11 to i32
  %19 = add nuw i32 %18, 1
  %20 = icmp ult i32 %19, %4
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = zext i32 %19 to i64
  br label %23

23:                                               ; preds = %23, %21
  %24 = load ptr, ptr %7, align 8, !tbaa !192
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !193
  %27 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr %26, ptr %27, align 8, !tbaa !193
  br label %23

28:                                               ; preds = %17, %15
  %29 = add i32 %4, -1
  store i32 %29, ptr %3, align 4, !tbaa !176
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %8, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !193
  %32 = icmp eq i32 %29, 0
  %33 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %39 = load ptr, ptr %38, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %39, ptr noundef null) #18
  br label %43

40:                                               ; preds = %10
  %41 = add nuw nsw i64 %11, 1
  %42 = icmp eq i64 %41, %9
  br i1 %42, label %43, label %10, !llvm.loop !194

43:                                               ; preds = %40, %37, %28, %2
  %44 = phi i1 [ false, %2 ], [ true, %28 ], [ true, %37 ], [ false, %40 ]
  ret i1 %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl20getXMLEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  store ptr %1, ptr %3, align 8, !tbaa !178
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br i1 %4, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  store ptr null, ptr %9, align 8, !tbaa !164
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14setPSVIHandlerEPNS_11PSVIHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 23
  store ptr %1, ptr %3, align 8, !tbaa !196
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %1) #18
  br label %9

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !197 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !198
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8, !prof !199

8:                                                ; preds = %4
  br i1 %3, label %9, label %17, !prof !199

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !173
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  br label %17

17:                                               ; preds = %13, %9, %8
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !199

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !173
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, i32 noundef %2) #18
  br label %25

25:                                               ; preds = %21, %17
  br i1 %3, label %26, label %34, !prof !199

26:                                               ; preds = %25
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %28 = load ptr, ptr %27, align 8, !tbaa !190
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !173
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28) #18
  br label %34

34:                                               ; preds = %25, %26, %30, %4
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !176
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !200

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %41

40:                                               ; preds = %41, %34
  ret void

41:                                               ; preds = %38, %41
  %42 = phi i64 [ 0, %38 ], [ %49, %41 ]
  %43 = load ptr, ptr %39, align 8, !tbaa !192
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !193
  %46 = load ptr, ptr %45, align 8, !tbaa !173
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  %49 = add nuw nsw i64 %42, 1
  %50 = load i32, ptr %35, align 4, !tbaa !176
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %41, label %40, !prof !201, !llvm.loop !202
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !173
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !176
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !192
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %1) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !176
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !203
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !149
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !173
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2) #18
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !176
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !192
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %1, ptr noundef %2) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !176
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !204
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !175

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !176
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !205

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %16

15:                                               ; preds = %16, %9
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !192
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !193
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #18
  %24 = add nuw nsw i64 %17, 1
  %25 = load i32, ptr %10, align 4, !tbaa !176
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %16, label %15, !prof !201, !llvm.loop !206
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !207 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9, !prof !208

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  %11 = load ptr, ptr %6, align 8, !tbaa !149
  br i1 %10, label %12, label %43, !prof !209

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  %15 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %14, i32 noundef %2) #18
  %16 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %17 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %18 = load ptr, ptr %11, align 8, !tbaa !173
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %15, ptr noundef %16, ptr noundef %17) #18
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !210
  %23 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25, !prof !211

25:                                               ; preds = %12
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i32 [ 0, %25 ], [ %41, %28 ]
  %30 = load ptr, ptr %26, align 8, !tbaa !212
  %31 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %30) #18
  %32 = load ptr, ptr %6, align 8, !tbaa !149
  %33 = load ptr, ptr %27, align 8, !tbaa !213
  %34 = load ptr, ptr %33, align 8, !tbaa !173
  %35 = getelementptr inbounds ptr, ptr %34, i64 10
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef %31) #18
  %38 = load ptr, ptr %32, align 8, !tbaa !173
  %39 = getelementptr inbounds ptr, ptr %38, i64 11
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %37) #18
  %41 = add nuw i32 %29, 1
  %42 = icmp eq i32 %41, %23
  br i1 %42, label %49, label %28, !prof !214, !llvm.loop !215

43:                                               ; preds = %9
  %44 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %45 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %46 = load ptr, ptr %11, align 8, !tbaa !173
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %44, ptr noundef %45) #18
  br label %49

49:                                               ; preds = %28, %12, %43, %5
  %50 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %51 = load i32, ptr %50, align 4, !tbaa !176
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !216

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %59

55:                                               ; preds = %59, %49
  %56 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %57 = load i32, ptr %56, align 8, !tbaa !198
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %71, !prof !208

59:                                               ; preds = %53, %59
  %60 = phi i64 [ 0, %53 ], [ %67, %59 ]
  %61 = load ptr, ptr %54, align 8, !tbaa !192
  %62 = getelementptr inbounds ptr, ptr %61, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !193
  %64 = load ptr, ptr %63, align 8, !tbaa !173
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #18
  %67 = add nuw nsw i64 %60, 1
  %68 = load i32, ptr %50, align 4, !tbaa !176
  %69 = zext i32 %68 to i64
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %59, label %55, !prof !201, !llvm.loop !217

71:                                               ; preds = %55
  %72 = add i32 %57, -1
  store i32 %72, ptr %56, align 8, !tbaa !198
  br label %73

73:                                               ; preds = %71, %55
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !173
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !176
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !192
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !176
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !218
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !219 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !198
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8, !prof !220

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !221

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !173
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2) #18
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !176
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20, !prof !222

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %30, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !192
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !193
  %27 = load ptr, ptr %26, align 8, !tbaa !173
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  %30 = add nuw nsw i64 %23, 1
  %31 = load i32, ptr %17, align 4, !tbaa !176
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %22, label %34, !prof !201, !llvm.loop !223

34:                                               ; preds = %22, %16, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !176
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !205

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

7:                                                ; preds = %18, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !198
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !210
  tail call void @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !212
  tail call void @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %12) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(40) %14) #18
  ret void

18:                                               ; preds = %5, %18
  %19 = phi i64 [ 0, %5 ], [ %26, %18 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !192
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds ptr, ptr %23, i64 9
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %2, align 4, !tbaa !176
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %7, !prof !201, !llvm.loop !224
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !175

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %7) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !173
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %8) #18
  %12 = load ptr, ptr %2, align 8, !tbaa !149
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %16

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !176
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !205

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %23

22:                                               ; preds = %23, %16
  ret void

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 0, %20 ], [ %31, %23 ]
  %25 = load ptr, ptr %21, align 8, !tbaa !192
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !193
  %28 = load ptr, ptr %27, align 8, !tbaa !173
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27) #18
  %31 = add nuw nsw i64 %24, 1
  %32 = load i32, ptr %17, align 4, !tbaa !176
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %23, label %22, !prof !201, !llvm.loop !225
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #1 align 2 !prof !207 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  br i1 %6, label %15, label %11, !prof !208

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !198
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !198
  br label %15

15:                                               ; preds = %11, %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !149
  %18 = icmp eq ptr %17, null
  br i1 %18, label %152, label %19, !prof !208

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %21 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  br i1 %21, label %22, label %104, !prof !209

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  store i32 0, ptr %9, align 4, !tbaa !226
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  %24 = load i8, ptr %23, align 8, !tbaa !169, !range !167, !noundef !168
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32, !prof !208

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !227
  %29 = load ptr, ptr %28, align 8, !tbaa !173
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(40) %28) #18
  br label %32

32:                                               ; preds = %26, %22
  %33 = icmp eq i32 %5, 0
  br i1 %33, label %34, label %40, !prof !228

34:                                               ; preds = %82, %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !210
  call void @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 4 dereferenceable(4) %9) #18
  %37 = load i8, ptr %23, align 8, !tbaa !169, !range !167, !noundef !168
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  br i1 %38, label %85, label %91, !prof !208

40:                                               ; preds = %32, %82
  %41 = phi i32 [ %83, %82 ], [ 0, %32 ]
  %42 = call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %41) #18
  %43 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  %44 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %43, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #18
  br i1 %44, label %45, label %47, !prof !229

45:                                               ; preds = %40
  %46 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi ptr [ %46, %45 ], [ null, %40 ]
  %49 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  %50 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %49, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #18
  br i1 %50, label %51, label %54, !prof !229

51:                                               ; preds = %47
  %52 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  %53 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %52, %51 ], [ null, %47 ]
  %56 = phi ptr [ %53, %51 ], [ %48, %47 ]
  %57 = load i8, ptr %23, align 8, !tbaa !169, !range !167, !noundef !168
  %58 = icmp eq i8 %57, 0
  %59 = icmp eq ptr %56, null
  br i1 %58, label %60, label %64, !prof !230

60:                                               ; preds = %54
  br i1 %59, label %61, label %65, !prof !231

61:                                               ; preds = %60
  %62 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %63 = load ptr, ptr %62, align 8, !tbaa !227
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull %42) #18
  br label %82

64:                                               ; preds = %54
  br i1 %59, label %82, label %65, !prof !232

65:                                               ; preds = %60, %64
  %66 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %67 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %68 = icmp eq ptr %55, null
  %69 = select i1 %68, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %55, !prof !185
  %70 = load ptr, ptr %16, align 8, !tbaa !149
  %71 = load ptr, ptr %70, align 8, !tbaa !173
  %72 = getelementptr inbounds ptr, ptr %71, i64 10
  %73 = load ptr, ptr %72, align 8
  call void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull %69, ptr noundef nonnull %56) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  %74 = load ptr, ptr %66, align 8, !tbaa !213
  %75 = load ptr, ptr %74, align 8, !tbaa !173
  %76 = getelementptr inbounds ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef i32 %77(ptr noundef nonnull align 8 dereferenceable(40) %74, ptr noundef nonnull %69) #18
  store i32 %78, ptr %10, align 4, !tbaa !226
  %79 = load ptr, ptr %67, align 8, !tbaa !212
  call void @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef nonnull align 4 dereferenceable(4) %10) #18
  %80 = load i32, ptr %9, align 4, !tbaa !226
  %81 = add i32 %80, 1
  store i32 %81, ptr %9, align 4, !tbaa !226
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  br label %82

82:                                               ; preds = %61, %65, %64
  %83 = add nuw i32 %41, 1
  %84 = icmp eq i32 %83, %5
  br i1 %84, label %34, label %40, !prof !233, !llvm.loop !234

85:                                               ; preds = %34
  %86 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %87 = load ptr, ptr %86, align 8, !tbaa !227
  %88 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %87) #18
  %89 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %90 = load ptr, ptr %89, align 8, !tbaa !171
  call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull %87, i32 noundef %88, ptr noundef %90, i1 noundef zeroext false) #18
  br label %94

91:                                               ; preds = %34
  %92 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %93 = load ptr, ptr %92, align 8, !tbaa !171
  call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %93, i1 noundef zeroext false) #18
  br label %94

94:                                               ; preds = %91, %85
  %95 = load ptr, ptr %16, align 8, !tbaa !149
  %96 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %97 = load ptr, ptr %96, align 8, !tbaa !171
  %98 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %97, i32 noundef %2) #18
  %99 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %100 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  %101 = load ptr, ptr %95, align 8, !tbaa !173
  %102 = getelementptr inbounds ptr, ptr %101, i64 9
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %98, ptr noundef %99, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %100) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br label %113

104:                                              ; preds = %19
  %105 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  %106 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %107 = load ptr, ptr %106, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %105, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %107, i1 noundef zeroext false) #18
  %108 = load ptr, ptr %16, align 8, !tbaa !149
  %109 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %110 = load ptr, ptr %108, align 8, !tbaa !173
  %111 = getelementptr inbounds ptr, ptr %110, i64 9
  %112 = load ptr, ptr %111, align 8
  tail call void %112(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %109, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %105) #18
  br label %113

113:                                              ; preds = %104, %94
  br i1 %6, label %114, label %152, !prof !208

114:                                              ; preds = %113
  %115 = call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  %116 = load ptr, ptr %16, align 8, !tbaa !149
  br i1 %115, label %117, label %147

117:                                              ; preds = %114
  %118 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %119 = load ptr, ptr %118, align 8, !tbaa !171
  %120 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %119, i32 noundef %2) #18
  %121 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %122 = load ptr, ptr %116, align 8, !tbaa !173
  %123 = getelementptr inbounds ptr, ptr %122, i64 4
  %124 = load ptr, ptr %123, align 8
  call void %124(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef %120, ptr noundef %121, ptr noundef %20) #18
  %125 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %126 = load ptr, ptr %125, align 8, !tbaa !210
  %127 = call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %126) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %152, label %129

129:                                              ; preds = %117
  %130 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %131 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  br label %132

132:                                              ; preds = %129, %132
  %133 = phi i32 [ 0, %129 ], [ %145, %132 ]
  %134 = load ptr, ptr %130, align 8, !tbaa !212
  %135 = call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %134) #18
  %136 = load ptr, ptr %16, align 8, !tbaa !149
  %137 = load ptr, ptr %131, align 8, !tbaa !213
  %138 = load ptr, ptr %137, align 8, !tbaa !173
  %139 = getelementptr inbounds ptr, ptr %138, i64 10
  %140 = load ptr, ptr %139, align 8
  %141 = call noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(40) %137, i32 noundef %135) #18
  %142 = load ptr, ptr %136, align 8, !tbaa !173
  %143 = getelementptr inbounds ptr, ptr %142, i64 11
  %144 = load ptr, ptr %143, align 8
  call void %144(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef %141) #18
  %145 = add nuw i32 %133, 1
  %146 = icmp eq i32 %145, %127
  br i1 %146, label %152, label %132, !llvm.loop !235

147:                                              ; preds = %114
  %148 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %149 = load ptr, ptr %116, align 8, !tbaa !173
  %150 = getelementptr inbounds ptr, ptr %149, i64 4
  %151 = load ptr, ptr %150, align 8
  call void %151(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %148, ptr noundef %20) #18
  br label %152

152:                                              ; preds = %132, %117, %113, %147, %15
  %153 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %154 = load i32, ptr %153, align 4, !tbaa !176
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156, !prof !216

156:                                              ; preds = %152
  %157 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %159

158:                                              ; preds = %159, %152
  ret void

159:                                              ; preds = %156, %159
  %160 = phi i64 [ 0, %156 ], [ %167, %159 ]
  %161 = load ptr, ptr %157, align 8, !tbaa !192
  %162 = getelementptr inbounds ptr, ptr %161, i64 %160
  %163 = load ptr, ptr %162, align 8, !tbaa !193
  %164 = load ptr, ptr %163, align 8, !tbaa !173
  %165 = getelementptr inbounds ptr, ptr %164, i64 11
  %166 = load ptr, ptr %165, align 8
  call void %166(ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #18
  %167 = add nuw nsw i64 %160, 1
  %168 = load i32, ptr %153, align 4, !tbaa !176
  %169 = zext i32 %168 to i64
  %170 = icmp ult i64 %167, %169
  br i1 %170, label %159, label %158, !prof !201, !llvm.loop !236
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !173
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !176
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !192
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !176
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !237
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !147 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !176
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !205

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %12

11:                                               ; preds = %12, %5
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %20, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !192
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %20 = add nuw nsw i64 %13, 1
  %21 = load i32, ptr %6, align 4, !tbaa !176
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %12, label %11, !prof !201, !llvm.loop !238
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #19
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #19
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10) #18
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #20
          to label %36 unwind label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #19
  br label %34

23:                                               ; preds = %25, %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %34

25:                                               ; preds = %9
  %26 = load ptr, ptr %14, align 8, !tbaa !173
  %27 = icmp eq i32 %3, 2
  %28 = select i1 %27, i64 4, i64 3
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, i64 2, i64 %28
  %31 = getelementptr inbounds ptr, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10) #18
          to label %33 unwind label %23

33:                                               ; preds = %25, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #19
  ret void

34:                                               ; preds = %23, %21
  %35 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #19
  resume { ptr, i32 } %35

36:                                               ; preds = %20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !175

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #2 align 2 !prof !148 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #1 align 2 !prof !148 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !173
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2) #18
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %8 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %9 = load ptr, ptr %4, align 8, !tbaa !173
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8) #18
  br label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !173
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %1) #18
  br label %22

22:                                               ; preds = %13, %17, %6
  %23 = phi ptr [ %12, %6 ], [ %21, %17 ], [ null, %13 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  %9 = or i1 %8, %3
  br i1 %9, label %73, label %10

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %13 = icmp eq i32 %11, 8
  %14 = and i32 %11, -2
  %15 = icmp eq i32 %14, 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 128, ptr noundef %17) #18
  switch i32 %12, label %23 [
    i32 4, label %18
    i32 2, label %18
    i32 1, label %18
  ]

18:                                               ; preds = %10, %10, %10
  %19 = load ptr, ptr %16, align 8, !tbaa !172
  %20 = invoke noundef ptr @_ZN11xercesc_2_79XMLAttDef19getDefAttTypeStringENS0_11DefAttTypesEPNS_13MemoryManagerE(i32 noundef %12, ptr noundef %19) #18
          to label %23 unwind label %21

21:                                               ; preds = %64, %60, %52, %49, %18
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %71

23:                                               ; preds = %18, %10
  %24 = phi ptr [ @_ZN11xercesc_2_76XMLUni12fgNullStringE, %10 ], [ %20, %18 ]
  br i1 %15, label %25, label %49

25:                                               ; preds = %23
  %26 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %27 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %26) #18
  br i1 %13, label %28, label %32

28:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE) #18
          to label %29 unwind label %30

29:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 32) #18
          to label %32 unwind label %30

30:                                               ; preds = %37, %32, %29, %28
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %71

32:                                               ; preds = %29, %25
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 40) #18
          to label %33 unwind label %30

33:                                               ; preds = %32
  %34 = icmp eq i32 %27, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %27 to i64
  br label %38

37:                                               ; preds = %46, %33
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 41) #18
          to label %49 unwind label %30

38:                                               ; preds = %35, %46
  %39 = phi i64 [ 0, %35 ], [ %47, %46 ]
  %40 = getelementptr inbounds i16, ptr %26, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !239
  %42 = icmp eq i16 %41, 32
  %43 = select i1 %42, i16 124, i16 %41
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext %43) #18
          to label %46 unwind label %44

44:                                               ; preds = %38
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %71

46:                                               ; preds = %38
  %47 = add nuw nsw i64 %39, 1
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %37, label %38, !llvm.loop !241

49:                                               ; preds = %37, %23
  %50 = load ptr, ptr %6, align 8, !tbaa !189
  %51 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
          to label %52 unwind label %21

52:                                               ; preds = %49
  %53 = load ptr, ptr %2, align 8, !tbaa !173
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(72) %2) #18
          to label %57 unwind label %21

57:                                               ; preds = %52
  br i1 %15, label %58, label %60

58:                                               ; preds = %57
  %59 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  br label %64

60:                                               ; preds = %57
  %61 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %62 = load ptr, ptr %16, align 8, !tbaa !172
  %63 = invoke noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %61, ptr noundef %62) #18
          to label %64 unwind label %21

64:                                               ; preds = %60, %58
  %65 = phi ptr [ %59, %58 ], [ %63, %60 ]
  %66 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %67 = load ptr, ptr %50, align 8, !tbaa !173
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %51, ptr noundef %56, ptr noundef %65, ptr noundef %24, ptr noundef %66) #18
          to label %70 unwind label %21

70:                                               ; preds = %64
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  br label %73

71:                                               ; preds = %30, %44, %21
  %72 = phi { ptr, i32 } [ %22, %21 ], [ %45, %44 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  resume { ptr, i32 } %72

73:                                               ; preds = %4, %70
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !173
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 !prof !148 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !190
  %9 = icmp ne ptr %8, null
  %10 = or i1 %4, %5
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %14 = load ptr, ptr %8, align 8, !tbaa !173
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %13, ptr noundef %2, ptr noundef %3) #18
  br label %17

17:                                               ; preds = %12, %6
  %18 = zext i1 %5 to i8
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 %18, ptr %19, align 4, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !189
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %10 = load ptr, ptr %1, align 8, !tbaa !173
  %11 = getelementptr inbounds ptr, ptr %10, i64 15
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(80) %1) #18
  %14 = load ptr, ptr %5, align 8, !tbaa !173
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %13) #18
  br label %17

17:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 4, !tbaa !242, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !173
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  br label %13

13:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE) #18
  %9 = load ptr, ptr %2, align 8, !tbaa !190
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  br i1 %3, label %63, label %6

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %14 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %15 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %16 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %17 = load ptr, ptr %10, align 8, !tbaa !173
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
  br label %63

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !189
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %20
  %25 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null) #18
  br i1 %2, label %26, label %43

26:                                               ; preds = %24
  %27 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %25) #18
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %29 = load ptr, ptr %28, align 8, !tbaa !172
  %30 = add i32 %27, 2
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 1
  %33 = load ptr, ptr %29, align 8, !tbaa !173
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %32) #18
          to label %37 unwind label %41

37:                                               ; preds = %26
  %38 = load ptr, ptr %28, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %36, ptr noundef %38) #18
          to label %39 unwind label %41

39:                                               ; preds = %37
  store i16 37, ptr %36, align 2, !tbaa !239
  %40 = getelementptr inbounds i16, ptr %36, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %40, ptr noundef %25) #18
          to label %43 unwind label %41

41:                                               ; preds = %39, %37, %26
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %61

43:                                               ; preds = %39, %24
  %44 = phi ptr [ %25, %24 ], [ %36, %39 ]
  %45 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %46 = load ptr, ptr %21, align 8, !tbaa !189
  br i1 %45, label %47, label %55

47:                                               ; preds = %43
  %48 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %49 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %50 = load ptr, ptr %46, align 8, !tbaa !173
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %44, ptr noundef %48, ptr noundef %49) #18
          to label %60 unwind label %53

53:                                               ; preds = %55, %47
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %61

55:                                               ; preds = %43
  %56 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %57 = load ptr, ptr %46, align 8, !tbaa !173
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %44, ptr noundef %56) #18
          to label %60 unwind label %53

60:                                               ; preds = %55, %47
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %63

61:                                               ; preds = %53, %41
  %62 = phi { ptr, i32 } [ %54, %53 ], [ %42, %41 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  resume { ptr, i32 } %62

63:                                               ; preds = %12, %8, %60, %20, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %2, align 4, !tbaa !242
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !173
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  %12 = load ptr, ptr %5, align 8, !tbaa !173
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %10, ptr noundef %11) #18
  br label %15

15:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #1 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE) #18
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !148 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #4 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr nocapture noundef %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #4 align 2 {
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(248) %9, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !148 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #4 align 2 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(248) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #2 align 2 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv(ptr nocapture readnone %0) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  %6 = tail call noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %1, ptr noundef %2, ptr poison) #18
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #4 align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr nocapture noundef %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv(ptr nocapture readnone %0) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZN11xercesc_2_713SAX2XMLReaderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !173
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !173
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !173
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !173
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %9, align 8, !tbaa !243
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %10, align 4, !tbaa !242
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  store i32 0, ptr %11, align 8, !tbaa !198
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  store i32 0, ptr %12, align 4, !tbaa !176
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  store i32 32, ptr %13, align 8, !tbaa !191
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  invoke void @_ZN11xercesc_2_717VecAttributesImplC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
          to label %15 unwind label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %16, i8 0, i64 136, i1 false)
  store ptr %1, ptr %17, align 8, !tbaa !172
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 32
  store ptr %2, ptr %18, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv to i64), i64 0) #18
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
          to label %36 unwind label %23

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  br label %40

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = call ptr @__cxa_begin_catch(ptr %25) #19
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  invoke void @__cxa_rethrow() #20
          to label %48 unwind label %31

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %45

33:                                               ; preds = %31
  %34 = extractvalue { ptr, i32 } %32, 1
  %35 = extractvalue { ptr, i32 } %32, 0
  br label %37

36:                                               ; preds = %15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void

37:                                               ; preds = %33, %23
  %38 = phi i32 [ %34, %33 ], [ %26, %23 ]
  %39 = phi ptr [ %35, %33 ], [ %25, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  call void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  br label %40

40:                                               ; preds = %37, %19
  %41 = phi i32 [ %38, %37 ], [ %22, %19 ]
  %42 = phi ptr [ %39, %37 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @_ZN11xercesc_2_713SAX2XMLReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %43 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %44 = insertvalue { ptr, i32 } %43, i32 %41, 1
  resume { ptr, i32 } %44

45:                                               ; preds = %31
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #16
  unreachable

48:                                               ; preds = %29
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !245 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !147 {
  store ptr getelementptr inbounds ({ [46 x ptr] }, ptr @_ZTVN11xercesc_2_713SAX2XMLReaderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717VecAttributesImplC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) #1 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !171
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !173
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(776) %10) #17
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !213
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !173
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(40) %18) #17
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !212
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_712ValueStackOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %26) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #17
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !227
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !173
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(40) %31) #17
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !210
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_712ValueStackOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %39) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %39) #17
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %44 = load ptr, ptr %43, align 8, !tbaa !187
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %44) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %44) #17
  br label %47

47:                                               ; preds = %46, %42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !247 {
  store ptr %1, ptr %0, align 8, !tbaa !248
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !250
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 32
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  %7 = load ptr, ptr %2, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7) #18
          to label %8 unwind label %50

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  store ptr %4, ptr %9, align 8, !tbaa !187
  %10 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 29
  store ptr %10, ptr %11, align 8, !tbaa !188
  %12 = load ptr, ptr %9, align 8, !tbaa !187
  %13 = load ptr, ptr %2, align 8, !tbaa !172
  %14 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef null, ptr noundef %12, ptr noundef %13) #18
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !171
  %16 = load ptr, ptr %11, align 8, !tbaa !188
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %14, ptr noundef %16) #18
  %17 = load ptr, ptr %2, align 8, !tbaa !172
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !191
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = load ptr, ptr %17, align 8, !tbaa !173
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %21) #18
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  store ptr %25, ptr %26, align 8, !tbaa !192
  %27 = load i32, ptr %18, align 8, !tbaa !191
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %25, i8 0, i64 %29, i1 false)
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext true) #18
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext true) #18
  %30 = load ptr, ptr %2, align 8, !tbaa !172
  %31 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %30) #18
  %32 = load ptr, ptr %2, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef 109, ptr noundef %32) #18
          to label %33 unwind label %52

33:                                               ; preds = %8
  %34 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  store ptr %31, ptr %34, align 8, !tbaa !213
  %35 = load ptr, ptr %2, align 8, !tbaa !172
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %35) #18
  %37 = load ptr, ptr %2, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef 30, ptr noundef %37, i1 noundef zeroext false) #18
          to label %38 unwind label %54

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  store ptr %36, ptr %39, align 8, !tbaa !212
  %40 = load ptr, ptr %2, align 8, !tbaa !172
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %40) #18
  %42 = load ptr, ptr %2, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %41, i32 noundef 10, i1 noundef zeroext false, ptr noundef %42) #18
          to label %43 unwind label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  store ptr %41, ptr %44, align 8, !tbaa !227
  %45 = load ptr, ptr %2, align 8, !tbaa !172
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %45) #18
  %47 = load ptr, ptr %2, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef 10, ptr noundef %47, i1 noundef zeroext false) #18
          to label %48 unwind label %58

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  store ptr %46, ptr %49, align 8, !tbaa !210
  ret void

50:                                               ; preds = %1
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  br label %60

52:                                               ; preds = %8
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #17
  br label %60

54:                                               ; preds = %33
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #17
  br label %60

56:                                               ; preds = %38
  %57 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #17
  br label %60

58:                                               ; preds = %43
  %59 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %46, ptr noundef %45) #17
  br label %60

60:                                               ; preds = %58, %56, %54, %52, %50
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ]
  resume { ptr, i32 } %61
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !147 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %2 = load ptr, ptr %0, align 8, !tbaa !248
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !185

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !250
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !175

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !250
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !173
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !168
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(248) %11) #18
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
declare void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !246 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !173
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !173
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !173
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  tail call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  tail call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  tail call void @_ZN11xercesc_2_713SAX2XMLReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #16
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !247 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !247 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 !prof !247 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !179 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #18
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 !prof !253 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i8 %5, ptr %0, align 8, !tbaa !254
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !256
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !257
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !258
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !259
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !173
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #18
  store ptr %15, ptr %8, align 8, !tbaa !258
  %16 = load i32, ptr %7, align 8, !tbaa !257
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !179 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !260
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !262
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !263
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !264
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !265
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !173
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #18
  store ptr %16, ptr %9, align 8, !tbaa !264
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !266

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !264
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !193
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !267, !llvm.loop !268
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !260, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !182

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !262
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !269

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !264
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %16) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #17
  %19 = load i32, ptr %6, align 4, !tbaa !262
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !270, !llvm.loop !271

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !265
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !264
  %30 = load ptr, ptr %27, align 8, !tbaa !173
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #18
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !262
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !265
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !260, !range !167, !noundef !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !264
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !193
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %25) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #17
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !264
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !262
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !262
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !260, !range !167, !noundef !168
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !264
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %17) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #17
  %20 = load ptr, ptr %7, align 8, !tbaa !264
  %21 = load i32, ptr %2, align 4, !tbaa !262
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !193
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !272
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !262
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !265
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !260, !range !167, !noundef !168
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !264
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %22) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #17
  %25 = load i32, ptr %3, align 4, !tbaa !262
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
  %40 = load ptr, ptr %39, align 8, !tbaa !264
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !264
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !264
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !193
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !193
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !273

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !193
  store i32 %28, ptr %3, align 4, !tbaa !262
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !262
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !262
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !260, !range !167, !noundef !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !264
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !193
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %15) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !260, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !262
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !264
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %16) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #17
  %19 = load i32, ptr %6, align 4, !tbaa !262
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !274

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !265
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !264
  %30 = load ptr, ptr %27, align 8, !tbaa !173
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !179 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !275 {
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %0) #18
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
declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !148 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !247 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !253 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !258
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #18
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  store ptr %1, ptr %3, align 8, !tbaa !279
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !292
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 8, !tbaa !293
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !295
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  store ptr %1, ptr %3, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store ptr %1, ptr %3, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !247 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !298
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 1, !tbaa !300
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 4, !tbaa !301
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(248) %0) #13 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  store i8 0, ptr %2, align 1, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !148 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !302 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !303

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !239
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !304

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !239
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !305, !llvm.loop !306

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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !307
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !247 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !309 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !311
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) local_unnamed_addr #0 align 2 !prof !314 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !315 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !262
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !316

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !265
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !264
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !193
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !317 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !318

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !239
  %8 = load i16, ptr %1, align 2, !tbaa !239
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !319

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !320

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !239
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !183

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !321

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !239
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !322

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !323

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !239
  %28 = load i16, ptr %26, align 2, !tbaa !239
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !324, !llvm.loop !325

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !326 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 comdat align 2 !prof !330 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 comdat align 2 !prof !332 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !275 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #18
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !264
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !262
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !193
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !262
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 !prof !333 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !334 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !262
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !335 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !311
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !333 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !336

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIjE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 80, ptr noundef %7) #18
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #19
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #18
  %14 = load i32, ptr %13, align 4, !tbaa !226
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #18
  ret i32 %14
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !337 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !338
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !340 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !341
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !275 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !262
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !263
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !342

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !265
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !173
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #18
  %21 = load i32, ptr %3, align 4, !tbaa !262
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !193
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !264
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !193
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !193
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !343

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !265
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !264
  %49 = load ptr, ptr %46, align 8, !tbaa !173
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #18
  store ptr %20, ptr %47, align 8, !tbaa !264
  store i32 %12, ptr %6, align 8, !tbaa !263
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 !prof !344 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #18
  %3 = load i32, ptr %1, align 4, !tbaa !226
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !258
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !256
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !226
  %10 = load i32, ptr %6, align 4, !tbaa !256
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !344 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !256
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !257
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !345

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !259
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !173
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #18
  %22 = load i32, ptr %3, align 4, !tbaa !256
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !258
  br i1 %23, label %26, label %32, !prof !346

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !259
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !173
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #18
  store ptr %21, ptr %28, align 8, !tbaa !258
  store i32 %13, ptr %6, align 8, !tbaa !257
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !226
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !226
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !256
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !347, !llvm.loop !348

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !349 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !256
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIjE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !256
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !351

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !259
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !258
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !352 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !256
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !353

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !259
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %32, label %16, !prof !353

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !258
  %21 = zext i32 %1 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !226
  %27 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %26, ptr %27, align 4, !tbaa !226
  %28 = load i32, ptr %3, align 4, !tbaa !256
  %29 = add i32 %28, -1
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %22, label %32, !llvm.loop !354

32:                                               ; preds = %22, %16, %13
  %33 = phi i32 [ %14, %16 ], [ %14, %13 ], [ %29, %22 ]
  store i32 %33, ptr %3, align 4, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !148 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !355 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !356
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !360 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !361
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !362 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i32 0, ptr %0, align 8, !tbaa !363
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !364
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !365
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !366
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !367
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !173
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #18
  store ptr %16, ptr %9, align 8, !tbaa !368
  store i16 0, ptr %16, align 2, !tbaa !239
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLAttDef19getDefAttTypeStringENS0_11DefAttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !369
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !370 {
  store i32 0, ptr %0, align 8, !tbaa !363
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !371 {
  %3 = load i32, ptr %0, align 8, !tbaa !363
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !364
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !372

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #18
  %8 = load i32, ptr %0, align 8, !tbaa !363
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !368
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !363
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !239
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !373 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !368
  %4 = load i32, ptr %0, align 8, !tbaa !363
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !239
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !374 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !375
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !367
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !368
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #18
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
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !376 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !377

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !239
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !378

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !239
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !379, !llvm.loop !380

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !363
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !364
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !381

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #18
  %21 = load i32, ptr %0, align 8, !tbaa !363
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !368
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !363
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !363
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !382
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !383
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !384
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !382
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !385 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store ptr %1, ptr %0, align 8, !tbaa !386
  %3 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %4 = load ptr, ptr %0, align 8, !tbaa !386
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !388
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !173
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #18
  br label %15

14:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #21
  br label %15

15:                                               ; preds = %10, %14, %3
  store ptr %1, ptr %0, align 8, !tbaa !386
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !388
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !383
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 true, i1 %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !389
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !390 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #18
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

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !390 {
  %3 = load ptr, ptr %0, align 8, !tbaa !386
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !391

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !388
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !392

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !173
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #18
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #21
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !386
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !393
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !396
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !397
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !400
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = icmp eq i32 %1, 1
  %6 = select i1 %5, i32 1, i32 2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 %6
  tail call void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %8) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  store i8 %3, ptr %4, align 1, !tbaa !401
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %3, ptr %4, align 4, !tbaa !402
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 %3, ptr %4, align 1, !tbaa !403
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %3, ptr %4, align 1, !tbaa !404
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 2, !tbaa !405
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !404, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 1, !tbaa !406
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !407
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  store i8 %3, ptr %4, align 1, !tbaa !408
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  store i8 %3, ptr %4, align 2, !tbaa !409
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  store i8 %3, ptr %4, align 1, !tbaa !410
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  store i8 %3, ptr %4, align 4, !tbaa !411
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  store i8 %3, ptr %4, align 1, !tbaa !412
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  store i8 %3, ptr %4, align 2, !tbaa !413
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !173
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !414
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !416
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #18
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !416
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !417
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) local_unnamed_addr #0 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !401, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 4, !tbaa !402, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %3 = load i8, ptr %2, align 1, !tbaa !403, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !300, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 4, !tbaa !301, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 2, !tbaa !405, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !406, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !407, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %3 = load i8, ptr %2, align 1, !tbaa !408, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 2, !tbaa !409, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  %3 = load i8, ptr %2, align 1, !tbaa !410, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  %3 = load i8, ptr %2, align 4, !tbaa !411, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %3 = load i8, ptr %2, align 1, !tbaa !412, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %3 = load i8, ptr %2, align 2, !tbaa !413, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !419
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !420
  %7 = load ptr, ptr %4, align 8, !tbaa !173
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !419
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !420
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !419
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !421
  %7 = load ptr, ptr %4, align 8, !tbaa !173
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !419
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !421
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  store ptr %1, ptr %3, align 8, !tbaa !422
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !173
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(12) %1) #18
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %9, ptr %10, align 4, !tbaa !423
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %11, align 8, !tbaa !424
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !425 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !426

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #18
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !173
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !420
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !421
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %3 = load ptr, ptr %2, align 8, !tbaa !422
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %1, ptr %3, align 8, !tbaa !427
  %4 = icmp eq i32 %1, 1
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !428 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 2, !tbaa !429
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !430 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !429, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 %3, ptr %4, align 2, !tbaa !431
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 2, !tbaa !431, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  store i64 %1, ptr %3, align 8, !tbaa !432
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %5 = trunc i64 %1 to i32
  tail call void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %0, i32 noundef %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !246 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  br i1 %6, label %8, label %17, !prof !433

8:                                                ; preds = %3
  store ptr %1, ptr %7, align 8, !tbaa !434
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !365
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !364
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %18, !prof !183

13:                                               ; preds = %8
  store i32 %2, ptr %10, align 4, !tbaa !364
  %14 = load i32, ptr %0, align 8, !tbaa !363
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) #18
  br label %18

17:                                               ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !434
  br label %18

18:                                               ; preds = %8, %16, %13, %17
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !435
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !436
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #18
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!146}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!36 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setContentHandlerEPNS_14ContentHandlerE, ptr @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13setDTDHandlerEPNS_10DTDHandlerE, ptr @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setEntityResolverEPNS_14EntityResolverE, ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE, i64 1}
!41 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @__cxa_allocate_exception, i64 1}
!42 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_, i64 9}
!44 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb, i64 1}
!45 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setLexicalHandlerEPNS_14LexicalHandlerE, ptr @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE, i64 1}
!48 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv, i64 832910}
!49 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 832909}
!50 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 832910}
!51 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 832910}
!52 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, i64 832912}
!53 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv, ptr @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv, i64 2}
!54 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv, i64 1}
!55 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 832910}
!56 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv, i64 832911}
!57 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj, i64 832913}
!58 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 200913}
!59 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 200913}
!60 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 401826}
!61 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv, i64 4}
!62 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, i64 200913}
!63 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, i64 2}
!64 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, i64 1}
!65 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv, i64 1}
!66 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb, i64 832910}
!67 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 832909}
!68 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 832910}
!69 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, i64 10}
!70 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!71 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_713SAX2XMLReaderC2Ev, i64 1}
!72 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev, i64 1}
!73 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLErrorReporterC2Ev, i64 1}
!74 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLEntityHandlerC2Ev, i64 1}
!75 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_714DocTypeHandlerC2Ev, i64 1}
!76 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717VecAttributesImplC1Ev, i64 1}
!77 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE, i64 1}
!78 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, i64 1}
!79 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv, i64 1}
!80 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev, i64 1}
!81 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_712ValueStackOfIjED2Ev, i64 2}
!82 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!83 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_715GrammarResolverD1Ev, i64 1}
!84 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!85 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, i64 1}
!86 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv, i64 1}
!87 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 1}
!88 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE, i64 1}
!89 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb, i64 1}
!90 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb, i64 1}
!91 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!92 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb, i64 2}
!93 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, i64 1}
!94 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, i64 1}
!95 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717VecAttributesImplD1Ev, i64 1}
!96 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, i64 1}
!97 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, i64 1}
!98 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, i64 1}
!99 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, i64 1}
!100 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_713SAX2XMLReaderD2Ev, i64 1}
!101 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb, ptr @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb, i64 2}
!102 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb, ptr @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb, i64 2}
!103 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!104 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb, i64 2}
!105 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, i64 4}
!106 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 12}
!107 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!108 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMLAttrD2Ev, i64 5}
!109 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!110 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev, i64 4}
!111 = !{ptr @_ZN11xercesc_2_77XMLAttrD2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!112 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjED2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIjED2Ev, i64 2}
!113 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!114 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv, ptr @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv, i64 2}
!115 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!116 = !{ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv, ptr @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv, i64 1665822}
!117 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!118 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!119 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!120 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!121 = !{ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, ptr @_ZN11xercesc_2_75QName9getPrefixEv, i64 200913}
!122 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!123 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 10}
!124 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj, ptr @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj, i64 832913}
!125 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1666922}
!126 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv, i64 832913}
!127 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @__cxa_allocate_exception, i64 1}
!128 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIjE16getMemoryManagerEv, i64 1}
!129 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!130 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, i64 832912}
!131 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj, i64 832912}
!132 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj, ptr @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj, i64 833040}
!133 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!134 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!135 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!136 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!137 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!138 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!139 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!140 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!141 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPt, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 191815}
!142 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!143 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!144 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE, ptr @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE, i64 1}
!145 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!146 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!147 = !{!"function_entry_count", i64 1}
!148 = !{!"function_entry_count", i64 0}
!149 = !{!150, !162, i64 96}
!150 = !{!"_ZTSN11xercesc_2_717SAX2XMLReaderImplE", !151, i64 0, !152, i64 8, !153, i64 16, !154, i64 24, !155, i64 32, !156, i64 40, !156, i64 41, !156, i64 42, !156, i64 43, !156, i64 44, !159, i64 48, !159, i64 52, !159, i64 56, !160, i64 64, !162, i64 96, !162, i64 104, !162, i64 112, !162, i64 120, !162, i64 128, !162, i64 136, !162, i64 144, !162, i64 152, !162, i64 160, !162, i64 168, !162, i64 176, !162, i64 184, !162, i64 192, !162, i64 200, !162, i64 208, !162, i64 216, !162, i64 224, !162, i64 232, !162, i64 240}
!151 = !{!"_ZTSN11xercesc_2_713SAX2XMLReaderE"}
!152 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!153 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!154 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!155 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!156 = !{!"bool", !157, i64 0}
!157 = !{!"omnipotent char", !158, i64 0}
!158 = !{!"Simple C++ TBAA"}
!159 = !{!"int", !157, i64 0}
!160 = !{!"_ZTSN11xercesc_2_717VecAttributesImplE", !161, i64 0, !156, i64 8, !159, i64 12, !162, i64 16, !162, i64 24}
!161 = !{!"_ZTSN11xercesc_2_710AttributesE"}
!162 = !{!"any pointer", !157, i64 0}
!163 = !{!150, !162, i64 136}
!164 = !{!150, !162, i64 144}
!165 = !{!150, !162, i64 160}
!166 = !{!150, !156, i64 42}
!167 = !{i8 0, i8 2}
!168 = !{}
!169 = !{!150, !156, i64 40}
!170 = !{!150, !156, i64 41}
!171 = !{!150, !162, i64 200}
!172 = !{!150, !162, i64 232}
!173 = !{!174, !174, i64 0}
!174 = !{!"vtable pointer", !158, i64 0}
!175 = !{!"branch_weights", i32 1, i32 2}
!176 = !{!150, !159, i64 52}
!177 = !{!"branch_weights", i32 2, i32 1}
!178 = !{!150, !162, i64 152}
!179 = !{!"function_entry_count", i64 4}
!180 = !{!150, !156, i64 43}
!181 = !{!"branch_weights", i32 5, i32 1}
!182 = !{!"branch_weights", i32 2, i32 4}
!183 = !{!"branch_weights", i32 1, i32 4}
!184 = !{!"branch_weights", i32 2, i32 3}
!185 = !{!"branch_weights", i32 2, i32 2}
!186 = !{!150, !162, i64 224}
!187 = !{!150, !162, i64 208}
!188 = !{!150, !162, i64 216}
!189 = !{!150, !162, i64 184}
!190 = !{!150, !162, i64 176}
!191 = !{!150, !159, i64 56}
!192 = !{!150, !162, i64 192}
!193 = !{!162, !162, i64 0}
!194 = distinct !{!194, !195}
!195 = !{!"llvm.loop.mustprogress"}
!196 = !{!150, !162, i64 168}
!197 = !{!"function_entry_count", i64 598800}
!198 = !{!150, !159, i64 48}
!199 = !{!"branch_weights", i32 1, i32 598801}
!200 = !{!"branch_weights", i32 598800, i32 1}
!201 = !{!"branch_weights", i32 0, i32 1}
!202 = distinct !{!202, !195}
!203 = distinct !{!203, !195}
!204 = distinct !{!204, !195}
!205 = !{!"branch_weights", i32 1, i32 1}
!206 = distinct !{!206, !195}
!207 = !{!"function_entry_count", i64 832911}
!208 = !{!"branch_weights", i32 1, i32 832912}
!209 = !{!"branch_weights", i32 832912, i32 1}
!210 = !{!150, !162, i64 128}
!211 = !{!"branch_weights", i32 832909, i32 3}
!212 = !{!150, !162, i64 120}
!213 = !{!150, !162, i64 112}
!214 = !{!"branch_weights", i32 3, i32 0}
!215 = distinct !{!215, !195}
!216 = !{!"branch_weights", i32 832911, i32 1}
!217 = distinct !{!217, !195}
!218 = distinct !{!218, !195}
!219 = !{!"function_entry_count", i64 912716}
!220 = !{!"branch_weights", i32 3, i32 912715}
!221 = !{!"branch_weights", i32 1, i32 912715}
!222 = !{!"branch_weights", i32 912714, i32 1}
!223 = distinct !{!223, !195}
!224 = distinct !{!224, !195}
!225 = distinct !{!225, !195}
!226 = !{!159, !159, i64 0}
!227 = !{!150, !162, i64 104}
!228 = !{!"branch_weights", i32 631998, i32 200914}
!229 = !{!"branch_weights", i32 2, i32 200913}
!230 = !{!"branch_weights", i32 1, i32 200914}
!231 = !{!"branch_weights", i32 3, i32 3}
!232 = !{!"branch_weights", i32 2147451581, i32 32067}
!233 = !{!"branch_weights", i32 200914, i32 0}
!234 = distinct !{!234, !195}
!235 = distinct !{!235, !195}
!236 = distinct !{!236, !195}
!237 = distinct !{!237, !195}
!238 = distinct !{!238, !195}
!239 = !{!240, !240, i64 0}
!240 = !{!"short", !157, i64 0}
!241 = distinct !{!241, !195}
!242 = !{!150, !156, i64 44}
!243 = !{!156, !156, i64 0}
!244 = !{!150, !162, i64 240}
!245 = !{!"function_entry_count", i64 5836268}
!246 = !{!"function_entry_count", i64 3}
!247 = !{!"function_entry_count", i64 2}
!248 = !{!249, !162, i64 0}
!249 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEE", !162, i64 0, !157, i64 8}
!250 = !{!249, !157, i64 8}
!251 = !{!252, !162, i64 8}
!252 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !156, i64 0, !156, i64 1, !156, i64 2, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48, !162, i64 56, !162, i64 64, !162, i64 72}
!253 = !{!"function_entry_count", i64 12}
!254 = !{!255, !156, i64 0}
!255 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !156, i64 0, !159, i64 4, !159, i64 8, !162, i64 16, !162, i64 24}
!256 = !{!255, !159, i64 4}
!257 = !{!255, !159, i64 8}
!258 = !{!255, !162, i64 16}
!259 = !{!255, !162, i64 24}
!260 = !{!261, !156, i64 8}
!261 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !156, i64 8, !159, i64 12, !159, i64 16, !162, i64 24, !162, i64 32}
!262 = !{!261, !159, i64 12}
!263 = !{!261, !159, i64 16}
!264 = !{!261, !162, i64 24}
!265 = !{!261, !162, i64 32}
!266 = !{!"branch_weights", i32 1, i32 159}
!267 = !{!"branch_weights", i32 159, i32 3265}
!268 = distinct !{!268, !195}
!269 = !{!"branch_weights", i32 1, i32 127}
!270 = !{!"branch_weights", i32 225, i32 127}
!271 = distinct !{!271, !195}
!272 = distinct !{!272, !195}
!273 = distinct !{!273, !195}
!274 = distinct !{!274, !195}
!275 = !{!"function_entry_count", i64 10}
!276 = !{!277, !162, i64 40}
!277 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !278, i64 8, !162, i64 16, !159, i64 24, !162, i64 32, !162, i64 40}
!278 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !157, i64 0}
!279 = !{!280, !162, i64 120}
!280 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !281, i64 0, !282, i64 8, !156, i64 16, !156, i64 17, !156, i64 18, !156, i64 19, !156, i64 20, !156, i64 21, !156, i64 22, !156, i64 23, !156, i64 24, !156, i64 25, !156, i64 26, !156, i64 27, !156, i64 28, !156, i64 29, !156, i64 30, !156, i64 31, !156, i64 32, !156, i64 33, !156, i64 34, !156, i64 35, !156, i64 36, !156, i64 37, !156, i64 38, !159, i64 40, !159, i64 44, !159, i64 48, !159, i64 52, !159, i64 56, !159, i64 60, !159, i64 64, !159, i64 68, !162, i64 72, !159, i64 80, !159, i64 84, !159, i64 88, !159, i64 92, !159, i64 96, !162, i64 104, !162, i64 112, !162, i64 120, !162, i64 128, !162, i64 136, !162, i64 144, !162, i64 152, !162, i64 160, !162, i64 168, !156, i64 176, !283, i64 184, !162, i64 264, !286, i64 272, !162, i64 280, !162, i64 288, !162, i64 296, !162, i64 304, !162, i64 312, !162, i64 320, !162, i64 328, !162, i64 336, !162, i64 344, !285, i64 352, !162, i64 360, !287, i64 368, !288, i64 392, !288, i64 432, !288, i64 472, !288, i64 512, !288, i64 552, !288, i64 592, !288, i64 632, !289, i64 672}
!281 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!282 = !{!"long", !157, i64 0}
!283 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !284, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !159, i64 40, !162, i64 48, !156, i64 56, !285, i64 60, !156, i64 64, !162, i64 72}
!284 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!285 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !157, i64 0}
!286 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !157, i64 0}
!287 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !159, i64 0, !162, i64 8, !162, i64 16}
!288 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !159, i64 0, !159, i64 4, !159, i64 8, !156, i64 12, !162, i64 16, !162, i64 24, !162, i64 32}
!289 = !{!"_ZTSN11xercesc_2_79ElemStackE", !159, i64 0, !159, i64 4, !290, i64 8, !162, i64 48, !159, i64 56, !159, i64 60, !159, i64 64, !159, i64 68, !159, i64 72, !159, i64 76, !159, i64 80, !162, i64 88, !162, i64 96}
!290 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !291, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !159, i64 32, !159, i64 36}
!291 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!292 = !{!280, !162, i64 264}
!293 = !{!280, !159, i64 40}
!294 = !{!280, !162, i64 128}
!295 = !{!280, !162, i64 144}
!296 = !{!280, !162, i64 152}
!297 = !{!280, !162, i64 160}
!298 = !{!280, !162, i64 136}
!299 = !{!283, !162, i64 24}
!300 = !{!280, !156, i64 19}
!301 = !{!280, !156, i64 20}
!302 = !{!"function_entry_count", i64 2453164456}
!303 = !{!"branch_weights", i32 1, i32 -1841802839}
!304 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!305 = !{!"branch_weights", i32 408669070, i32 -279908792}
!306 = distinct !{!306, !195}
!307 = !{!308, !162, i64 24}
!308 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !291, i64 0, !159, i64 8, !159, i64 12, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48, !162, i64 56, !162, i64 64}
!309 = !{!"function_entry_count", i64 553}
!310 = !{!"function_entry_count", i64 1668291}
!311 = !{!312, !162, i64 16}
!312 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !291, i64 0, !162, i64 8, !162, i64 16, !313, i64 24, !159, i64 28, !156, i64 32}
!313 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !157, i64 0}
!314 = !{!"function_entry_count", i64 1665822}
!315 = !{!"function_entry_count", i64 1366334}
!316 = !{!"branch_weights", i32 1366335, i32 1}
!317 = !{!"function_entry_count", i64 1231717351}
!318 = !{!"branch_weights", i32 621, i32 -1469098093}
!319 = !{!"branch_weights", i32 408901017, i32 1}
!320 = !{!"branch_weights", i32 267, i32 4}
!321 = !{!"branch_weights", i32 156, i32 112}
!322 = !{!"branch_weights", i32 1, i32 112}
!323 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!324 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!325 = distinct !{!325, !195}
!326 = !{!"function_entry_count", i64 360600}
!327 = !{!328, !162, i64 16}
!328 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !156, i64 0, !329, i64 4, !159, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !156, i64 48}
!329 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !157, i64 0}
!330 = !{!"function_entry_count", i64 200913}
!331 = !{!328, !162, i64 24}
!332 = !{!"function_entry_count", i64 159625}
!333 = !{!"function_entry_count", i64 832913}
!334 = !{!"function_entry_count", i64 190440}
!335 = !{!"function_entry_count", i64 1666922}
!336 = !{!"branch_weights", i32 1, i32 832914}
!337 = !{!"function_entry_count", i64 211020}
!338 = !{!339, !162, i64 24}
!339 = !{!"_ZTSN11xercesc_2_75QNameE", !291, i64 0, !159, i64 8, !159, i64 12, !159, i64 16, !159, i64 20, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48}
!340 = !{!"function_entry_count", i64 2192223}
!341 = !{!339, !162, i64 32}
!342 = !{!"branch_weights", i32 1, i32 11}
!343 = distinct !{!343, !195}
!344 = !{!"function_entry_count", i64 833040}
!345 = !{!"branch_weights", i32 18, i32 833024}
!346 = !{!"branch_weights", i32 1, i32 143}
!347 = !{!"branch_weights", i32 2177, i32 143}
!348 = distinct !{!348, !195}
!349 = !{!"function_entry_count", i64 832990}
!350 = !{!"function_entry_count", i64 832914}
!351 = !{!"branch_weights", i32 832915, i32 1}
!352 = !{!"function_entry_count", i64 832960}
!353 = !{!"branch_weights", i32 832961, i32 1}
!354 = distinct !{!354, !195}
!355 = !{!"function_entry_count", i64 593014}
!356 = !{!357, !329, i64 12}
!357 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !291, i64 0, !358, i64 8, !329, i64 12, !359, i64 16, !156, i64 20, !156, i64 21, !159, i64 24, !162, i64 32, !162, i64 40, !162, i64 48}
!358 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !157, i64 0}
!359 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !157, i64 0}
!360 = !{!"function_entry_count", i64 401820}
!361 = !{!357, !358, i64 8}
!362 = !{!"function_entry_count", i64 496321}
!363 = !{!288, !159, i64 0}
!364 = !{!288, !159, i64 4}
!365 = !{!288, !159, i64 8}
!366 = !{!288, !156, i64 12}
!367 = !{!288, !162, i64 16}
!368 = !{!288, !162, i64 32}
!369 = !{!357, !162, i64 40}
!370 = !{!"function_entry_count", i64 190774}
!371 = !{!"function_entry_count", i64 7992849}
!372 = !{!"branch_weights", i32 1, i32 7992850}
!373 = !{!"function_entry_count", i64 10769804}
!374 = !{!"function_entry_count", i64 19496}
!375 = !{!357, !162, i64 32}
!376 = !{!"function_entry_count", i64 789922}
!377 = !{!"branch_weights", i32 1, i32 789923}
!378 = !{!"branch_weights", i32 285, i32 789639}
!379 = !{!"branch_weights", i32 789639, i32 41628304}
!380 = distinct !{!380, !195}
!381 = !{!"branch_weights", i32 789637, i32 3}
!382 = !{!308, !162, i64 32}
!383 = !{!308, !162, i64 40}
!384 = !{!308, !162, i64 48}
!385 = !{!"function_entry_count", i64 191815}
!386 = !{!387, !162, i64 0}
!387 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !162, i64 0, !162, i64 8}
!388 = !{!387, !162, i64 8}
!389 = !{!308, !162, i64 16}
!390 = !{!"function_entry_count", i64 243874}
!391 = !{!"branch_weights", i32 191816, i32 52060}
!392 = !{!"branch_weights", i32 1, i32 52060}
!393 = !{!394, !162, i64 16}
!394 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !291, i64 0, !159, i64 8, !159, i64 12, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48}
!395 = !{!394, !162, i64 24}
!396 = !{!394, !162, i64 32}
!397 = !{!398, !162, i64 8}
!398 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !399, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40}
!399 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !157, i64 0}
!400 = !{!398, !162, i64 16}
!401 = !{!280, !156, i64 27}
!402 = !{!280, !156, i64 28}
!403 = !{!280, !156, i64 31}
!404 = !{!280, !156, i64 29}
!405 = !{!280, !156, i64 30}
!406 = !{!280, !156, i64 17}
!407 = !{!280, !156, i64 16}
!408 = !{!280, !156, i64 33}
!409 = !{!280, !156, i64 34}
!410 = !{!280, !156, i64 35}
!411 = !{!280, !156, i64 36}
!412 = !{!280, !156, i64 37}
!413 = !{!280, !156, i64 38}
!414 = !{!415, !162, i64 16}
!415 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !162, i64 8, !162, i64 16}
!416 = !{!415, !162, i64 8}
!417 = !{!283, !156, i64 64}
!418 = !{!"function_entry_count", i64 498}
!419 = !{!280, !162, i64 360}
!420 = !{!280, !162, i64 328}
!421 = !{!280, !162, i64 336}
!422 = !{!280, !162, i64 344}
!423 = !{!280, !159, i64 44}
!424 = !{!280, !159, i64 48}
!425 = !{!"function_entry_count", i64 558789}
!426 = !{!"branch_weights", i32 158605, i32 400186}
!427 = !{!280, !286, i64 272}
!428 = !{!"function_entry_count", i64 5}
!429 = !{!280, !156, i64 18}
!430 = !{!"function_entry_count", i64 1666453}
!431 = !{!280, !156, i64 26}
!432 = !{!280, !282, i64 8}
!433 = !{!"branch_weights", i32 16, i32 9}
!434 = !{!288, !162, i64 24}
!435 = !{!280, !162, i64 304}
!436 = !{!283, !162, i64 16}
