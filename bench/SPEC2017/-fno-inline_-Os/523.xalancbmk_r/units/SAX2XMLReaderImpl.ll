; ModuleID = 'SAX2XMLReaderImpl.cpp'
source_filename = "SAX2XMLReaderImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::SAX2XMLReaderImpl" = type { %"class.xercesc_2_7::SAX2XMLReader", %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", i8, i8, i8, i8, i8, i32, i32, i32, %"class.xercesc_2_7::VecAttributesImpl", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SAX2XMLReader" = type { ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::VecAttributesImpl" = type { %"class.xercesc_2_7::Attributes", i8, i32, ptr, ptr }
%"class.xercesc_2_7::Attributes" = type { ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713SAX2XMLReaderC2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerC2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterC2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerC2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIjED2Ev = comdat any

$_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner12getValidatorEv = comdat any

$_ZN11xercesc_2_710XMLScanner13getErrorCountEv = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv = comdat any

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

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl8getValueEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

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

$_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv = comdat any

$_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv = comdat any

$_ZN11xercesc_2_710XMLScanner11setDoSchemaEb = comdat any

$_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv = comdat any

$_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm = comdat any

$_ZN11xercesc_2_713SAX2XMLReaderD2Ev = comdat any

$_ZN11xercesc_2_713SAX2XMLReaderD0Ev = comdat any

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

$_ZN11xercesc_2_718XMLDocumentHandlerD2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD0Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD0Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD0Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD0Ev = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj = comdat any

$_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv = comdat any

$_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv = comdat any

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

$_ZN11xercesc_2_713ValueVectorOfIjED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv = comdat any

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

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTSN11xercesc_2_724SAXNotSupportedExceptionE = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

$_ZTIN11xercesc_2_724SAXNotSupportedExceptionE = comdat any

$_ZTSN11xercesc_2_725SAXNotRecognizedExceptionE = comdat any

$_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE = comdat any

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

$_ZTVN11xercesc_2_718XMLDocumentHandlerE = comdat any

$_ZTVN11xercesc_2_716XMLErrorReporterE = comdat any

$_ZTVN11xercesc_2_716XMLEntityHandlerE = comdat any

$_ZTVN11xercesc_2_714DocTypeHandlerE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

$_ZTVN11xercesc_2_712SAXExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN11xercesc_2_717SAX2XMLReaderImplE = dso_local unnamed_addr constant { [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] } { [86 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getContentHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getDTDHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getEntityResolverEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getErrorHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getFeatureEPKt, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getPropertyEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setContentHandlerEPNS_14ContentHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13setDTDHandlerEPNS_10DTDHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setEntityResolverEPNS_14EntityResolverE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11setPropertyEPKtPv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKc, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl21getDeclarationHandlerEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getLexicalHandlerEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl21setDeclarationHandlerEPNS_11DeclHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setLexicalHandlerEPNS_14LexicalHandlerE, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getValidatorEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getErrorCountEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl24getExitOnFirstFatalErrorEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl28getValidationConstraintFatalEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10getGrammarEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14getRootGrammarEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getURITextEj, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getSrcOffsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12setValidatorEPNS_12XMLValidatorE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl24setExitOnFirstFatalErrorEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl28setValidationConstraintFatalEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKtRNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKcRNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl9parseNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseResetERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKtsb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKcsb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl22resetCachedGrammarPoolEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl18setInputBufferSizeEm, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl20installAdvDocHandlerEPNS_18XMLDocumentHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl19removeAdvDocHandlerEPNS_18XMLDocumentHandlerE, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl20getXMLEntityResolverEv, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl14getPSVIHandlerEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl20setXMLEntityResolverEPNS_17XMLEntityResolverE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_], [17 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_717SAX2XMLReaderImplE, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD1Ev, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv, ptr @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [22 x i8] c"SAX2XMLReaderImpl.cpp\00", align 1
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgNullStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNotationStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13gDTDEntityStrE = internal constant [6 x i16] [i16 91, i16 100, i16 116, i16 100, i16 93, i16 0], align 2
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@.str.1 = private unnamed_addr constant [52 x i8] c"Feature modification is not supported during parse.\00", align 1
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
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown Feature\00", align 1
@_ZTSN11xercesc_2_725SAXNotRecognizedExceptionE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_725SAXNotRecognizedExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_725SAXNotRecognizedExceptionE, ptr @_ZTIN11xercesc_2_712SAXExceptionE }, comdat, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"Property modification is not supported during parse.\00", align 1
@_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [17 x i8] c"Unknown Property\00", align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_713SAX2XMLReaderE = linkonce_odr dso_local unnamed_addr constant { [46 x ptr] } { [46 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713SAX2XMLReaderE, ptr @_ZN11xercesc_2_713SAX2XMLReaderD2Ev, ptr @_ZN11xercesc_2_713SAX2XMLReaderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_713SAX2XMLReaderE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713SAX2XMLReaderE\00", comdat, align 1
@_ZTIN11xercesc_2_713SAX2XMLReaderE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713SAX2XMLReaderE }, comdat, align 8
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
@_ZTVN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SAXExceptionE, ptr @_ZN11xercesc_2_712SAXExceptionD2Ev, ptr @_ZN11xercesc_2_712SAXExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.6 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.7 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1

@_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_717SAX2XMLReaderImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
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
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !148
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !148
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !148
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !148
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %9, align 8, !tbaa !151
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %10, align 4, !tbaa !154
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  store i32 0, ptr %11, align 8, !tbaa !165
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  store i32 0, ptr %12, align 4, !tbaa !166
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  store i32 32, ptr %13, align 8, !tbaa !167
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  invoke void @_ZN11xercesc_2_717VecAttributesImplC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
          to label %15 unwind label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %16, i8 0, i64 136, i1 false)
  store ptr %1, ptr %17, align 8, !tbaa !168
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 32
  store ptr %2, ptr %18, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
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
  %27 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = call ptr @__cxa_begin_catch(ptr %25) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  invoke void @__cxa_rethrow() #19
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void

37:                                               ; preds = %33, %23
  %38 = phi i32 [ %34, %33 ], [ %26, %23 ]
  %39 = phi ptr [ %35, %33 ], [ %25, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  br label %40

40:                                               ; preds = %37, %19
  %41 = phi i32 [ %38, %37 ], [ %22, %19 ]
  %42 = phi ptr [ %39, %37 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @_ZN11xercesc_2_713SAX2XMLReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %43 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %44 = insertvalue { ptr, i32 } %43, i32 %41, 1
  resume { ptr, i32 } %44

45:                                               ; preds = %31
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #17
  unreachable

48:                                               ; preds = %29
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !170 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !147 {
  store ptr getelementptr inbounds ({ [46 x ptr] }, ptr @_ZTVN11xercesc_2_713SAX2XMLReaderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717VecAttributesImplC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) #4 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = load ptr, ptr %3, align 8, !tbaa !148
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !148
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(776) %10) #20
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !148
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(40) %18) #20
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !175
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_712ValueStackOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %26) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #20
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !176
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !148
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(40) %31) #20
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !177
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_712ValueStackOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %39) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %39) #20
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %44 = load ptr, ptr %43, align 8, !tbaa !178
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %44) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %44) #20
  br label %47

47:                                               ; preds = %46, %42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #3 comdat align 2 !prof !179 {
  store ptr %1, ptr %0, align 8, !tbaa !180
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !182
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 32
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = load ptr, ptr %2, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7) #18
          to label %8 unwind label %50

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  store ptr %4, ptr %9, align 8, !tbaa !178
  %10 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 29
  store ptr %10, ptr %11, align 8, !tbaa !183
  %12 = load ptr, ptr %9, align 8, !tbaa !178
  %13 = load ptr, ptr %2, align 8, !tbaa !168
  %14 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef null, ptr noundef %12, ptr noundef %13) #18
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !173
  %16 = load ptr, ptr %11, align 8, !tbaa !183
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %14, ptr noundef %16) #18
  %17 = load ptr, ptr %2, align 8, !tbaa !168
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !167
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = load ptr, ptr %17, align 8, !tbaa !148
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %21) #18
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  store ptr %25, ptr %26, align 8, !tbaa !172
  %27 = load i32, ptr %18, align 8, !tbaa !167
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %25, i8 0, i64 %29, i1 false)
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext true) #18
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext true) #18
  %30 = load ptr, ptr %2, align 8, !tbaa !168
  %31 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %30) #18
  %32 = load ptr, ptr %2, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef 109, ptr noundef %32) #18
          to label %33 unwind label %52

33:                                               ; preds = %8
  %34 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  store ptr %31, ptr %34, align 8, !tbaa !174
  %35 = load ptr, ptr %2, align 8, !tbaa !168
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %35) #18
  %37 = load ptr, ptr %2, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef 30, ptr noundef %37, i1 noundef zeroext false) #18
          to label %38 unwind label %54

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  store ptr %36, ptr %39, align 8, !tbaa !175
  %40 = load ptr, ptr %2, align 8, !tbaa !168
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %40) #18
  %42 = load ptr, ptr %2, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %41, i32 noundef 10, i1 noundef zeroext false, ptr noundef %42) #18
          to label %43 unwind label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  store ptr %41, ptr %44, align 8, !tbaa !176
  %45 = load ptr, ptr %2, align 8, !tbaa !168
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %45) #18
  %47 = load ptr, ptr %2, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef 10, ptr noundef %47, i1 noundef zeroext false) #18
          to label %48 unwind label %58

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  store ptr %46, ptr %49, align 8, !tbaa !177
  ret void

50:                                               ; preds = %1
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  br label %60

52:                                               ; preds = %8
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #20
  br label %60

54:                                               ; preds = %33
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #20
  br label %60

56:                                               ; preds = %38
  %57 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #20
  br label %60

58:                                               ; preds = %43
  %59 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %46, ptr noundef %45) #20
  br label %60

60:                                               ; preds = %58, %56, %54, %52, %50
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ]
  resume { ptr, i32 } %61
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !147 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !184

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !182
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !185

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !148
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !186
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
  tail call void @__clang_call_terminate(ptr %26) #17
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !148
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !148
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !148
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  tail call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  tail call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  tail call void @_ZN11xercesc_2_713SAX2XMLReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #17
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #20
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 !prof !179 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !187 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #18
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20installAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !166
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !167
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  br label %40

11:                                               ; preds = %2
  %12 = uitofp i32 %4 to double
  %13 = fmul double %12, 1.500000e+00
  %14 = fptoui double %13 to i32
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %16, align 8, !tbaa !148
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %18) #18
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !172
  %25 = load i32, ptr %5, align 8, !tbaa !167
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %24, i64 %27, i1 false)
  %28 = load i32, ptr %5, align 8, !tbaa !167
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %22, i64 %29
  %31 = sub i32 %14, %28
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %33, i1 false)
  %34 = load ptr, ptr %15, align 8, !tbaa !168
  %35 = load ptr, ptr %23, align 8, !tbaa !172
  %36 = load ptr, ptr %34, align 8, !tbaa !148
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %35) #18
  store ptr %22, ptr %23, align 8, !tbaa !172
  store i32 %14, ptr %5, align 8, !tbaa !167
  %39 = load i32, ptr %3, align 4, !tbaa !166
  br label %40

40:                                               ; preds = %8, %11
  %41 = phi i32 [ %4, %8 ], [ %39, %11 ]
  %42 = phi ptr [ %10, %8 ], [ %22, %11 ]
  %43 = add i32 %41, 1
  store i32 %43, ptr %3, align 4, !tbaa !166
  %44 = zext i32 %41 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %1, ptr %45, align 8, !tbaa !190
  %46 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %47 = load ptr, ptr %46, align 8, !tbaa !173
  %48 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %47, ptr noundef nonnull %48) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !171 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  store ptr %1, ptr %3, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl19removeAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef readnone %1) unnamed_addr #3 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !166
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %40
  %11 = phi i64 [ 0, %6 ], [ %41, %40 ]
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !190
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
  %24 = load ptr, ptr %7, align 8, !tbaa !172
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr %26, ptr %27, align 8, !tbaa !190
  br label %23

28:                                               ; preds = %17, %15
  %29 = add i32 %4, -1
  store i32 %29, ptr %3, align 4, !tbaa !166
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %8, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !190
  %32 = icmp eq i32 %29, 0
  %33 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %39 = load ptr, ptr %38, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %39, ptr noundef null) #18
  br label %43

40:                                               ; preds = %10
  %41 = add nuw nsw i64 %11, 1
  %42 = icmp eq i64 %41, %9
  br i1 %42, label %43, label %10, !llvm.loop !204

43:                                               ; preds = %40, %37, %28, %2
  %44 = phi i1 [ false, %2 ], [ true, %28 ], [ true, %37 ], [ false, %40 ]
  ret i1 %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12setValidatorEPNS_12XMLValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 30
  store ptr %1, ptr %3, align 8, !tbaa !206
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #3 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #3 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 8, !tbaa !208
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setContentHandlerEPNS_14ContentHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !209
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !185

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %7, ptr noundef nonnull %8) #18
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !166
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef null) #18
  br label %16

16:                                               ; preds = %9, %13, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13setDTDHandlerEPNS_10DTDHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  store ptr %1, ptr %3, align 8, !tbaa !210
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  br i1 %4, label %9, label %7, !prof !185

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
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !171 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !211
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  store ptr %1, ptr %3, align 8, !tbaa !212
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  br i1 %4, label %10, label %7, !prof !185

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !212
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi ptr [ null, %10 ], [ %9, %7 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %13, ptr noundef %12) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !171 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  store ptr %1, ptr %3, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14setPSVIHandlerEPNS_11PSVIHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 23
  store ptr %1, ptr %3, align 8, !tbaa !215
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !173
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store ptr %1, ptr %3, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setLexicalHandlerEPNS_14LexicalHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  store ptr %1, ptr %3, align 8, !tbaa !217
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  br i1 %4, label %9, label %7, !prof !185

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
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl21setDeclarationHandlerEPNS_11DeclHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  store ptr %1, ptr %3, align 8, !tbaa !218
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !173
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  store ptr %1, ptr %3, align 8, !tbaa !219
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  br i1 %4, label %10, label %7, !prof !220

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  store ptr null, ptr %9, align 8, !tbaa !221
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !222
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  store ptr %1, ptr %3, align 8, !tbaa !221
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  br i1 %4, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  store ptr null, ptr %9, align 8, !tbaa !219
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 1, !tbaa !223
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 4, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !225, !range !226, !noundef !186
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7, !prof !220

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 393, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #16
  br label %39

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %4, align 1, !tbaa !225
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !173
  %19 = load ptr, ptr %18, align 8, !tbaa !148
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
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = call ptr @__cxa_begin_catch(ptr %24) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  invoke void @__cxa_rethrow() #19
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void

36:                                               ; preds = %32, %22
  %37 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %38 = phi ptr [ %34, %32 ], [ %24, %22 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
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
  call void @__clang_call_terminate(ptr %46) #17
  unreachable

47:                                               ; preds = %28
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(248) %0) #11 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  store i8 0, ptr %2, align 1, !tbaa !225
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKt(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !225, !range !226, !noundef !186
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #16
  br label %36

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %4, align 1, !tbaa !225
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #18
          to label %32 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = call ptr @__cxa_begin_catch(ptr %21) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  invoke void @__cxa_rethrow() #19
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %35 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
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
  call void @__clang_call_terminate(ptr %43) #17
  unreachable

44:                                               ; preds = %25
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKc(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !225, !range !226, !noundef !186
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 435, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #16
  br label %36

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %4, align 1, !tbaa !225
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !173
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #18
          to label %19 unwind label %20

19:                                               ; preds = %16
  store i8 0, ptr %4, align 1, !tbaa !225
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  invoke void @__cxa_rethrow() #19
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
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
  call void @__clang_call_terminate(ptr %43) #17
  unreachable

44:                                               ; preds = %26
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !225, !range !226, !noundef !186
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) #18
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !225, !range !226, !noundef !186
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 477, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) #18
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !225, !range !226, !noundef !186
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 4 dereferenceable(8) %2) #18
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 4 dereferenceable(8) %1) #18
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseResetERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 4 dereferenceable(8) %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 !prof !227 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !165
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8, !prof !228

8:                                                ; preds = %4
  br i1 %3, label %9, label %17, !prof !228

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !148
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  br label %17

17:                                               ; preds = %13, %9, %8
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !209
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !228

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !148
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, i32 noundef %2) #18
  br label %25

25:                                               ; preds = %21, %17
  br i1 %3, label %26, label %34, !prof !228

26:                                               ; preds = %25
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %28 = load ptr, ptr %27, align 8, !tbaa !217
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !148
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28) #18
  br label %34

34:                                               ; preds = %25, %26, %30, %4
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !166
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !229

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %41

40:                                               ; preds = %41, %34
  ret void

41:                                               ; preds = %38, %41
  %42 = phi i64 [ 0, %38 ], [ %49, %41 ]
  %43 = load ptr, ptr %39, align 8, !tbaa !172
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !190
  %46 = load ptr, ptr %45, align 8, !tbaa !148
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  %49 = add nuw nsw i64 %42, 1
  %50 = load i32, ptr %35, align 4, !tbaa !166
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %41, label %40, !prof !230, !llvm.loop !231
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #12 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !148
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !166
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !172
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %1) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !166
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !232
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !233 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !234

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !235
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !237

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !235
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !238, !llvm.loop !239

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

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !147 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !166
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !240

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %12

11:                                               ; preds = %12, %5
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %20, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !172
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = load ptr, ptr %16, align 8, !tbaa !148
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %20 = add nuw nsw i64 %13, 1
  %21 = load i32, ptr %6, align 4, !tbaa !166
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %12, label %11, !prof !230, !llvm.loop !241
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !148
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2) #18
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !166
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !172
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %1, ptr noundef %2) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !166
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !242
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !185

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !148
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !166
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !240

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %16

15:                                               ; preds = %16, %9
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !172
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = load ptr, ptr %20, align 8, !tbaa !148
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #18
  %24 = add nuw nsw i64 %17, 1
  %25 = load i32, ptr %10, align 4, !tbaa !166
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %16, label %15, !prof !230, !llvm.loop !243
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !148
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !166
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !172
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !166
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !244
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 !prof !247 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !165
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8, !prof !248

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !209
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !249

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !148
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2) #18
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !166
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20, !prof !250

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %30, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !172
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = load ptr, ptr %26, align 8, !tbaa !148
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  %30 = add nuw nsw i64 %23, 1
  %31 = load i32, ptr %17, align 4, !tbaa !166
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %22, label %34, !prof !230, !llvm.loop !251

34:                                               ; preds = %22, %16, %4
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #12 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !166
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !240

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

7:                                                ; preds = %18, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !165
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  tail call void @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !175
  tail call void @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %12) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !174
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(40) %14) #18
  ret void

18:                                               ; preds = %5, %18
  %19 = phi i64 [ 0, %5 ], [ %26, %18 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !172
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = getelementptr inbounds ptr, ptr %23, i64 9
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %2, align 4, !tbaa !166
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %7, !prof !230, !llvm.loop !252
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr nocapture noundef %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !185

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %7) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !148
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %8) #18
  %12 = load ptr, ptr %2, align 8, !tbaa !209
  %13 = load ptr, ptr %12, align 8, !tbaa !148
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %16

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !166
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !240

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %23

22:                                               ; preds = %23, %16
  ret void

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 0, %20 ], [ %31, %23 ]
  %25 = load ptr, ptr %21, align 8, !tbaa !172
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !190
  %28 = load ptr, ptr %27, align 8, !tbaa !148
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27) #18
  %31 = add nuw nsw i64 %24, 1
  %32 = load i32, ptr %17, align 4, !tbaa !166
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %23, label %22, !prof !230, !llvm.loop !253
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #4 align 2 !prof !255 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  br i1 %6, label %15, label %11, !prof !256

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !165
  br label %15

15:                                               ; preds = %11, %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !209
  %18 = icmp eq ptr %17, null
  br i1 %18, label %152, label %19, !prof !256

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %21 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  br i1 %21, label %22, label %104, !prof !257

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !tbaa !258
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  %24 = load i8, ptr %23, align 8, !tbaa !259, !range !226, !noundef !186
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32, !prof !256

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !176
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(40) %28) #18
  br label %32

32:                                               ; preds = %26, %22
  %33 = icmp eq i32 %5, 0
  br i1 %33, label %34, label %40, !prof !260

34:                                               ; preds = %82, %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !177
  call void @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 4 dereferenceable(4) %9) #18
  %37 = load i8, ptr %23, align 8, !tbaa !259, !range !226, !noundef !186
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  br i1 %38, label %85, label %91, !prof !256

40:                                               ; preds = %32, %82
  %41 = phi i32 [ %83, %82 ], [ 0, %32 ]
  %42 = call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %41) #18
  %43 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  %44 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %43, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #18
  br i1 %44, label %45, label %47, !prof !261

45:                                               ; preds = %40
  %46 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi ptr [ %46, %45 ], [ null, %40 ]
  %49 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  %50 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %49, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #18
  br i1 %50, label %51, label %54, !prof !261

51:                                               ; preds = %47
  %52 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  %53 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %42) #18
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %52, %51 ], [ null, %47 ]
  %56 = phi ptr [ %53, %51 ], [ %48, %47 ]
  %57 = load i8, ptr %23, align 8, !tbaa !259, !range !226, !noundef !186
  %58 = icmp eq i8 %57, 0
  %59 = icmp eq ptr %56, null
  br i1 %58, label %60, label %64, !prof !262

60:                                               ; preds = %54
  br i1 %59, label %61, label %65, !prof !263

61:                                               ; preds = %60
  %62 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %63 = load ptr, ptr %62, align 8, !tbaa !176
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull %42) #18
  br label %82

64:                                               ; preds = %54
  br i1 %59, label %82, label %65, !prof !264

65:                                               ; preds = %60, %64
  %66 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %67 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %68 = icmp eq ptr %55, null
  %69 = select i1 %68, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %55, !prof !184
  %70 = load ptr, ptr %16, align 8, !tbaa !209
  %71 = load ptr, ptr %70, align 8, !tbaa !148
  %72 = getelementptr inbounds ptr, ptr %71, i64 10
  %73 = load ptr, ptr %72, align 8
  call void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull %69, ptr noundef nonnull %56) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %74 = load ptr, ptr %66, align 8, !tbaa !174
  %75 = load ptr, ptr %74, align 8, !tbaa !148
  %76 = getelementptr inbounds ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef i32 %77(ptr noundef nonnull align 8 dereferenceable(40) %74, ptr noundef nonnull %69) #18
  store i32 %78, ptr %10, align 4, !tbaa !258
  %79 = load ptr, ptr %67, align 8, !tbaa !175
  call void @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef nonnull align 4 dereferenceable(4) %10) #18
  %80 = load i32, ptr %9, align 4, !tbaa !258
  %81 = add i32 %80, 1
  store i32 %81, ptr %9, align 4, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %82

82:                                               ; preds = %61, %65, %64
  %83 = add nuw i32 %41, 1
  %84 = icmp eq i32 %83, %5
  br i1 %84, label %34, label %40, !prof !265, !llvm.loop !266

85:                                               ; preds = %34
  %86 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %87 = load ptr, ptr %86, align 8, !tbaa !176
  %88 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %87) #18
  %89 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %90 = load ptr, ptr %89, align 8, !tbaa !173
  call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull %87, i32 noundef %88, ptr noundef %90, i1 noundef zeroext false) #18
  br label %94

91:                                               ; preds = %34
  %92 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %93 = load ptr, ptr %92, align 8, !tbaa !173
  call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %93, i1 noundef zeroext false) #18
  br label %94

94:                                               ; preds = %91, %85
  %95 = load ptr, ptr %16, align 8, !tbaa !209
  %96 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %97 = load ptr, ptr %96, align 8, !tbaa !173
  %98 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %97, i32 noundef %2) #18
  %99 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %100 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  %101 = load ptr, ptr %95, align 8, !tbaa !148
  %102 = getelementptr inbounds ptr, ptr %101, i64 9
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %98, ptr noundef %99, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %100) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %113

104:                                              ; preds = %19
  %105 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  %106 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %107 = load ptr, ptr %106, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %105, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %107, i1 noundef zeroext false) #18
  %108 = load ptr, ptr %16, align 8, !tbaa !209
  %109 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %110 = load ptr, ptr %108, align 8, !tbaa !148
  %111 = getelementptr inbounds ptr, ptr %110, i64 9
  %112 = load ptr, ptr %111, align 8
  tail call void %112(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %109, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %105) #18
  br label %113

113:                                              ; preds = %104, %94
  br i1 %6, label %114, label %152, !prof !256

114:                                              ; preds = %113
  %115 = call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  %116 = load ptr, ptr %16, align 8, !tbaa !209
  br i1 %115, label %117, label %147

117:                                              ; preds = %114
  %118 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %119 = load ptr, ptr %118, align 8, !tbaa !173
  %120 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %119, i32 noundef %2) #18
  %121 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %122 = load ptr, ptr %116, align 8, !tbaa !148
  %123 = getelementptr inbounds ptr, ptr %122, i64 4
  %124 = load ptr, ptr %123, align 8
  call void %124(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef %120, ptr noundef %121, ptr noundef %20) #18
  %125 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %126 = load ptr, ptr %125, align 8, !tbaa !177
  %127 = call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %126) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %152, label %129

129:                                              ; preds = %117
  %130 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %131 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  br label %132

132:                                              ; preds = %129, %132
  %133 = phi i32 [ 0, %129 ], [ %145, %132 ]
  %134 = load ptr, ptr %130, align 8, !tbaa !175
  %135 = call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %134) #18
  %136 = load ptr, ptr %16, align 8, !tbaa !209
  %137 = load ptr, ptr %131, align 8, !tbaa !174
  %138 = load ptr, ptr %137, align 8, !tbaa !148
  %139 = getelementptr inbounds ptr, ptr %138, i64 10
  %140 = load ptr, ptr %139, align 8
  %141 = call noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(40) %137, i32 noundef %135) #18
  %142 = load ptr, ptr %136, align 8, !tbaa !148
  %143 = getelementptr inbounds ptr, ptr %142, i64 11
  %144 = load ptr, ptr %143, align 8
  call void %144(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef %141) #18
  %145 = add nuw i32 %133, 1
  %146 = icmp eq i32 %145, %127
  br i1 %146, label %152, label %132, !llvm.loop !267

147:                                              ; preds = %114
  %148 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %149 = load ptr, ptr %116, align 8, !tbaa !148
  %150 = getelementptr inbounds ptr, ptr %149, i64 4
  %151 = load ptr, ptr %150, align 8
  call void %151(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %148, ptr noundef %20) #18
  br label %152

152:                                              ; preds = %132, %117, %113, %147, %15
  %153 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %154 = load i32, ptr %153, align 4, !tbaa !166
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156, !prof !268

156:                                              ; preds = %152
  %157 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %159

158:                                              ; preds = %159, %152
  ret void

159:                                              ; preds = %156, %159
  %160 = phi i64 [ 0, %156 ], [ %167, %159 ]
  %161 = load ptr, ptr %157, align 8, !tbaa !172
  %162 = getelementptr inbounds ptr, ptr %161, i64 %160
  %163 = load ptr, ptr %162, align 8, !tbaa !190
  %164 = load ptr, ptr %163, align 8, !tbaa !148
  %165 = getelementptr inbounds ptr, ptr %164, i64 11
  %166 = load ptr, ptr %165, align 8
  call void %166(ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #18
  %167 = add nuw nsw i64 %160, 1
  %168 = load i32, ptr %153, align 4, !tbaa !166
  %169 = zext i32 %168 to i64
  %170 = icmp ult i64 %167, %169
  br i1 %170, label %159, label %158, !prof !230, !llvm.loop !269
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !270 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) local_unnamed_addr #3 align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !275 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !276
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !278

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !279
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 241, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !280
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !190
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !281 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !282

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !235
  %8 = load i16, ptr %1, align 2, !tbaa !235
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !283

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !284

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !235
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !285

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !286

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !235
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !287

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !288

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !235
  %28 = load i16, ptr %26, align 2, !tbaa !235
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !289, !llvm.loop !290

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 !prof !291 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !292
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !295 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !297 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !298 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #18
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !276
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !190
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !276
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 !prof !299 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !300 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !276
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !301 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !299 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !302

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIjE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.6, i32 noundef 70, i32 noundef 80, ptr noundef %7) #18
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #18
  %14 = load i32, ptr %13, align 4, !tbaa !258
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #18
  ret i32 %14
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #12 align 2 {
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(248) %9, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !255 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !209
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9, !prof !256

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #18
  %11 = load ptr, ptr %6, align 8, !tbaa !209
  br i1 %10, label %12, label %43, !prof !257

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  %15 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %14, i32 noundef %2) #18
  %16 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %17 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %18 = load ptr, ptr %11, align 8, !tbaa !148
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %15, ptr noundef %16, ptr noundef %17) #18
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !177
  %23 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25, !prof !303

25:                                               ; preds = %12
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i32 [ 0, %25 ], [ %41, %28 ]
  %30 = load ptr, ptr %26, align 8, !tbaa !175
  %31 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %30) #18
  %32 = load ptr, ptr %6, align 8, !tbaa !209
  %33 = load ptr, ptr %27, align 8, !tbaa !174
  %34 = load ptr, ptr %33, align 8, !tbaa !148
  %35 = getelementptr inbounds ptr, ptr %34, i64 10
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef %31) #18
  %38 = load ptr, ptr %32, align 8, !tbaa !148
  %39 = getelementptr inbounds ptr, ptr %38, i64 11
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %37) #18
  %41 = add nuw i32 %29, 1
  %42 = icmp eq i32 %41, %23
  br i1 %42, label %49, label %28, !prof !304, !llvm.loop !305

43:                                               ; preds = %9
  %44 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %45 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %46 = load ptr, ptr %11, align 8, !tbaa !148
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %44, ptr noundef %45) #18
  br label %49

49:                                               ; preds = %28, %12, %43, %5
  %50 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %51 = load i32, ptr %50, align 4, !tbaa !166
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !268

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %59

55:                                               ; preds = %59, %49
  %56 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %57 = load i32, ptr %56, align 8, !tbaa !165
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %71, !prof !256

59:                                               ; preds = %53, %59
  %60 = phi i64 [ 0, %53 ], [ %67, %59 ]
  %61 = load ptr, ptr %54, align 8, !tbaa !172
  %62 = getelementptr inbounds ptr, ptr %61, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !190
  %64 = load ptr, ptr %63, align 8, !tbaa !148
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #18
  %67 = add nuw nsw i64 %60, 1
  %68 = load i32, ptr %50, align 4, !tbaa !166
  %69 = zext i32 %68 to i64
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %59, label %55, !prof !230, !llvm.loop !306

71:                                               ; preds = %55
  %72 = add i32 %57, -1
  store i32 %72, ptr %56, align 8, !tbaa !165
  br label %73

73:                                               ; preds = %71, %55
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #12 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !148
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !166
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !172
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !166
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !307
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = icmp eq ptr %7, null
  %9 = or i1 %8, %3
  br i1 %9, label %73, label %10

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %13 = icmp eq i32 %11, 8
  %14 = and i32 %11, -2
  %15 = icmp eq i32 %14, 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 128, ptr noundef %17) #18
  switch i32 %12, label %23 [
    i32 4, label %18
    i32 2, label %18
    i32 1, label %18
  ]

18:                                               ; preds = %10, %10, %10
  %19 = load ptr, ptr %16, align 8, !tbaa !168
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
  %41 = load i16, ptr %40, align 2, !tbaa !235
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
  br i1 %48, label %37, label %38, !llvm.loop !308

49:                                               ; preds = %37, %23
  %50 = load ptr, ptr %6, align 8, !tbaa !218
  %51 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
          to label %52 unwind label %21

52:                                               ; preds = %49
  %53 = load ptr, ptr %2, align 8, !tbaa !148
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
  %62 = load ptr, ptr %16, align 8, !tbaa !168
  %63 = invoke noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %61, ptr noundef %62) #18
          to label %64 unwind label %21

64:                                               ; preds = %60, %58
  %65 = phi ptr [ %59, %58 ], [ %63, %60 ]
  %66 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %67 = load ptr, ptr %50, align 8, !tbaa !148
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %51, ptr noundef %56, ptr noundef %65, ptr noundef %24, ptr noundef %66) #18
          to label %70 unwind label %21

70:                                               ; preds = %64
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  br label %73

71:                                               ; preds = %30, %44, %21
  %72 = phi { ptr, i32 } [ %22, %21 ], [ %45, %44 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  resume { ptr, i32 } %72

73:                                               ; preds = %4, %70
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !309 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !310
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !314 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !315
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !316 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i32 0, ptr %0, align 8, !tbaa !317
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !318
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !319
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !320
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !321
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !148
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #18
  store ptr %16, ptr %9, align 8, !tbaa !322
  store i16 0, ptr %16, align 2, !tbaa !235
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLAttDef19getDefAttTypeStringENS0_11DefAttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !324 {
  store i32 0, ptr %0, align 8, !tbaa !317
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !325 {
  %3 = load i32, ptr %0, align 8, !tbaa !317
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !318
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !326

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #18
  %8 = load i32, ptr %0, align 8, !tbaa !317
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !322
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !317
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !235
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !327 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !322
  %4 = load i32, ptr %0, align 8, !tbaa !317
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !235
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !328 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !329
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !316 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = load ptr, ptr %3, align 8, !tbaa !148
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
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #12 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !148
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %7) #18
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #4 align 2 !prof !146 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = icmp ne ptr %8, null
  %10 = or i1 %4, %5
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %14 = load ptr, ptr %8, align 8, !tbaa !148
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %13, ptr noundef %2, ptr noundef %3) #18
  br label %17

17:                                               ; preds = %12, %6
  %18 = zext i1 %5 to i8
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 %18, ptr %19, align 4, !tbaa !154
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #12 align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  %10 = load ptr, ptr %1, align 8, !tbaa !148
  %11 = getelementptr inbounds ptr, ptr %10, i64 15
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(80) %1) #18
  %14 = load ptr, ptr %5, align 8, !tbaa !148
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %13) #18
  br label %17

17:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #12 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 4, !tbaa !154, !range !226, !noundef !186
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !148
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  br label %13

13:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !148
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE) #18
  %9 = load ptr, ptr %2, align 8, !tbaa !217
  %10 = load ptr, ptr %9, align 8, !tbaa !148
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  br i1 %3, label %63, label %6

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !210
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %14 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %15 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %16 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %17 = load ptr, ptr %10, align 8, !tbaa !148
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
  br label %63

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !218
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %20
  %25 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null) #18
  br i1 %2, label %26, label %43

26:                                               ; preds = %24
  %27 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %25) #18
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %29 = load ptr, ptr %28, align 8, !tbaa !168
  %30 = add i32 %27, 2
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 1
  %33 = load ptr, ptr %29, align 8, !tbaa !148
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %32) #18
          to label %37 unwind label %41

37:                                               ; preds = %26
  %38 = load ptr, ptr %28, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %36, ptr noundef %38) #18
          to label %39 unwind label %41

39:                                               ; preds = %37
  store i16 37, ptr %36, align 2, !tbaa !235
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
  %46 = load ptr, ptr %21, align 8, !tbaa !218
  br i1 %45, label %47, label %55

47:                                               ; preds = %43
  %48 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %49 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %50 = load ptr, ptr %46, align 8, !tbaa !148
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
  %57 = load ptr, ptr %46, align 8, !tbaa !148
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %44, ptr noundef %56) #18
          to label %60 unwind label %53

60:                                               ; preds = %55, %47
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %63

61:                                               ; preds = %53, %41
  %62 = phi { ptr, i32 } [ %54, %53 ], [ %42, %41 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %62

63:                                               ; preds = %12, %8, %60, %20, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !330
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !330
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !333 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store ptr %1, ptr %0, align 8, !tbaa !334
  %3 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %4 = load ptr, ptr %0, align 8, !tbaa !334
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !336
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !148
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #18
  br label %15

14:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #21
  br label %15

15:                                               ; preds = %10, %14, %3
  store ptr %1, ptr %0, align 8, !tbaa !334
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !336
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 true, i1 %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #18
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

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #12 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %2, align 4, !tbaa !154
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !148
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr nocapture noundef %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !210
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  %12 = load ptr, ptr %5, align 8, !tbaa !148
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %10, ptr noundef %11) #18
  br label %15

15:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !339
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !341
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #12 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv(ptr nocapture readnone %0) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !148
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE) #18
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #13 align 2 !prof !146 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #13 align 2 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv(ptr nocapture readnone %0) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #4 align 2 !prof !146 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !148
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2) #18
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #12 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  %6 = tail call noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %1, ptr noundef %2, ptr poison) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !219
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %8 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %9 = load ptr, ptr %4, align 8, !tbaa !148
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8) #18
  br label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !148
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %1) #18
  br label %22

22:                                               ; preds = %13, %17, %6
  %23 = phi ptr [ %12, %6 ], [ %21, %17 ], [ null, %13 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !343
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !346
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #13 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #13 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !185

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !148
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr nocapture noundef readonly %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(248) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !212
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #16
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10) #18
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #19
          to label %36 unwind label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #16
  br label %34

23:                                               ; preds = %25, %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %34

25:                                               ; preds = %9
  %26 = load ptr, ptr %14, align 8, !tbaa !148
  %27 = icmp eq i32 %3, 2
  %28 = select i1 %27, i64 4, i64 3
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, i64 2, i64 %28
  %31 = getelementptr inbounds ptr, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10) #18
          to label %33 unwind label %23

33:                                               ; preds = %25, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  ret void

34:                                               ; preds = %23, %21
  %35 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  resume { ptr, i32 } %35

36:                                               ; preds = %20
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #12 align 2 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(248) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !225, !range !226, !noundef !186
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8, !prof !347

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.1, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724SAXNotSupportedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %158

15:                                               ; preds = %3
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !348

18:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %2) #18
  br label %157

19:                                               ; preds = %15
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31, !prof !285

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  store i8 %4, ptr %23, align 2, !tbaa !349
  br i1 %2, label %24, label %30

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !350, !range !226, !noundef !186
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
  br i1 %33, label %34, label %36, !prof !351

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  store i8 %4, ptr %35, align 8, !tbaa !259
  br label %157

36:                                               ; preds = %31
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXercesDynamicE) #18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48, !prof !184

39:                                               ; preds = %36
  %40 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  store i8 %4, ptr %40, align 1, !tbaa !350
  %41 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  %42 = load i8, ptr %41, align 2, !tbaa !349, !range !226, !noundef !186
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44, !prof !185

44:                                               ; preds = %39
  br i1 %2, label %45, label %46, !prof !220

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
  br i1 %50, label %51, label %52, !prof !220

51:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %2) #18
  br label %157

52:                                               ; preds = %48
  %53 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %57 = load ptr, ptr %56, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %57, i1 noundef zeroext %2) #18
  br label %157

58:                                               ; preds = %52
  %59 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %63 = load ptr, ptr %62, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %63, i1 noundef zeroext %2) #18
  br label %157

64:                                               ; preds = %58
  %65 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %69 = load ptr, ptr %68, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %69, i1 noundef zeroext %2) #18
  br label %157

70:                                               ; preds = %64
  %71 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE) #18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %75 = load ptr, ptr %74, align 8, !tbaa !173
  %76 = xor i1 %2, true
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %75, i1 noundef zeroext %76) #18
  br label %157

77:                                               ; preds = %70
  %78 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE) #18
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %82 = load ptr, ptr %81, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %82, i1 noundef zeroext %2) #18
  br label %157

83:                                               ; preds = %77
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %88 = load ptr, ptr %87, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %88, i1 noundef zeroext %2) #18
  br i1 %2, label %89, label %157

89:                                               ; preds = %86
  %90 = load ptr, ptr %87, align 8, !tbaa !173
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
  %97 = load ptr, ptr %96, align 8, !tbaa !173
  %98 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %97) #18
  br i1 %98, label %157, label %99

99:                                               ; preds = %95, %94
  %100 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %101 = load ptr, ptr %100, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %101, i1 noundef zeroext %2) #18
  br label %157

102:                                              ; preds = %91
  %103 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE) #18
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %107 = load ptr, ptr %106, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %107, i1 noundef zeroext %2) #18
  br label %157

108:                                              ; preds = %102
  %109 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE) #18
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %113 = load ptr, ptr %112, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %113, i1 noundef zeroext %2) #18
  br label %157

114:                                              ; preds = %108
  %115 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE) #18
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %119 = load ptr, ptr %118, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %119, i1 noundef zeroext %2) #18
  br label %157

120:                                              ; preds = %114
  %121 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE) #18
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %125 = load ptr, ptr %124, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %125, i1 noundef zeroext %2) #18
  br label %157

126:                                              ; preds = %120
  %127 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %131 = load ptr, ptr %130, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %131, i1 noundef zeroext %2) #18
  br label %157

132:                                              ; preds = %126
  %133 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE) #18
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %137 = load ptr, ptr %136, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %137, i1 noundef zeroext %2) #18
  br label %157

138:                                              ; preds = %132
  %139 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE) #18
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %143 = load ptr, ptr %142, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %143, i1 noundef zeroext %2) #18
  br label %157

144:                                              ; preds = %138
  %145 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE) #18
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %149 = load ptr, ptr %148, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %149, i1 noundef zeroext %2) #18
  br label %157

150:                                              ; preds = %144
  %151 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  %152 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %153 = load ptr, ptr %152, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %151, ptr noundef nonnull @.str.2, ptr noundef %153) #18
          to label %154 unwind label %155

154:                                              ; preds = %150
  tail call void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #19
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
  tail call void @__cxa_free_exception(ptr %159) #16
  resume { ptr, i32 } %160
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = icmp eq i32 %1, 1
  %6 = select i1 %5, i32 1, i32 2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 %6
  tail call void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %8) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  store i8 %3, ptr %4, align 1, !tbaa !352
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %3, ptr %4, align 4, !tbaa !353
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 %3, ptr %4, align 1, !tbaa !354
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %3, ptr %4, align 1, !tbaa !355
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 2, !tbaa !356
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !355, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 1, !tbaa !357
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !358
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  store i8 %3, ptr %4, align 1, !tbaa !359
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  store i8 %3, ptr %4, align 2, !tbaa !360
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  store i8 %3, ptr %4, align 1, !tbaa !361
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  store i8 %3, ptr %4, align 4, !tbaa !362
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  store i8 %3, ptr %4, align 1, !tbaa !363
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  store i8 %3, ptr %4, align 2, !tbaa !364
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !367
  %6 = load ptr, ptr %3, align 8, !tbaa !148
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
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getFeatureEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
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
  %12 = load i8, ptr %11, align 2, !tbaa !349, !range !226, !noundef !186
  %13 = icmp ne i8 %12, 0
  br label %146

14:                                               ; preds = %7
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgSAX2CoreNameSpacePrefixesE) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  %19 = load i8, ptr %18, align 8, !tbaa !259, !range !226, !noundef !186
  %20 = icmp ne i8 %19, 0
  br label %146

21:                                               ; preds = %14
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXercesDynamicE) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !350, !range !226, !noundef !186
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
  %38 = load ptr, ptr %37, align 8, !tbaa !173
  %39 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %38) #18
  br label %146

40:                                               ; preds = %33
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %45 = load ptr, ptr %44, align 8, !tbaa !173
  %46 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %45) #18
  br label %146

47:                                               ; preds = %40
  %48 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %52 = load ptr, ptr %51, align 8, !tbaa !173
  %53 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %52) #18
  br label %146

54:                                               ; preds = %47
  %55 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %59 = load ptr, ptr %58, align 8, !tbaa !173
  %60 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %59) #18
  %61 = xor i1 %60, true
  br label %146

62:                                               ; preds = %54
  %63 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE) #18
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %67 = load ptr, ptr %66, align 8, !tbaa !173
  %68 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %67) #18
  br label %146

69:                                               ; preds = %62
  %70 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %74 = load ptr, ptr %73, align 8, !tbaa !173
  %75 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %74) #18
  br label %146

76:                                               ; preds = %69
  %77 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE) #18
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %81 = load ptr, ptr %80, align 8, !tbaa !173
  %82 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %81) #18
  br label %146

83:                                               ; preds = %76
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %88 = load ptr, ptr %87, align 8, !tbaa !173
  %89 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %88) #18
  br label %146

90:                                               ; preds = %83
  %91 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %95 = load ptr, ptr %94, align 8, !tbaa !173
  %96 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %95) #18
  br label %146

97:                                               ; preds = %90
  %98 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE) #18
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %102 = load ptr, ptr %101, align 8, !tbaa !173
  %103 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %102) #18
  br label %146

104:                                              ; preds = %97
  %105 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE) #18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %109 = load ptr, ptr %108, align 8, !tbaa !173
  %110 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %109) #18
  br label %146

111:                                              ; preds = %104
  %112 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE) #18
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %116 = load ptr, ptr %115, align 8, !tbaa !173
  %117 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %116) #18
  br label %146

118:                                              ; preds = %111
  %119 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE) #18
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %123 = load ptr, ptr %122, align 8, !tbaa !173
  %124 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %123) #18
  br label %146

125:                                              ; preds = %118
  %126 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE) #18
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %130 = load ptr, ptr %129, align 8, !tbaa !173
  %131 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %130) #18
  br label %146

132:                                              ; preds = %125
  %133 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE) #18
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %137 = load ptr, ptr %136, align 8, !tbaa !173
  %138 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %137) #18
  br label %146

139:                                              ; preds = %132
  %140 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  %141 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %142 = load ptr, ptr %141, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %140, ptr noundef nonnull @.str.2, ptr noundef %142) #18
          to label %143 unwind label %144

143:                                              ; preds = %139
  tail call void @__cxa_throw(ptr nonnull %140, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #19
  unreachable

144:                                              ; preds = %139
  %145 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %140) #16
  resume { ptr, i32 } %145

146:                                              ; preds = %135, %128, %121, %114, %107, %100, %93, %86, %79, %72, %65, %57, %50, %43, %36, %31, %24, %17, %10, %5
  %147 = phi i1 [ %6, %5 ], [ %13, %10 ], [ %20, %17 ], [ %27, %24 ], [ %32, %31 ], [ %39, %36 ], [ %46, %43 ], [ %53, %50 ], [ %61, %57 ], [ %68, %65 ], [ %75, %72 ], [ %82, %79 ], [ %89, %86 ], [ %96, %93 ], [ %103, %100 ], [ %110, %107 ], [ %117, %114 ], [ %124, %121 ], [ %131, %128 ], [ %138, %135 ]
  ret i1 %147
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) local_unnamed_addr #3 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !352, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 4, !tbaa !353, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %3 = load i8, ptr %2, align 1, !tbaa !354, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !223, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 4, !tbaa !224, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 2, !tbaa !356, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !357, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !358, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !368 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %3 = load i8, ptr %2, align 1, !tbaa !359, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 2, !tbaa !360, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  %3 = load i8, ptr %2, align 1, !tbaa !361, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  %3 = load i8, ptr %2, align 4, !tbaa !362, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %3 = load i8, ptr %2, align 1, !tbaa !363, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %3 = load i8, ptr %2, align 2, !tbaa !364, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setPropertyEPKtPv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !225, !range !226, !noundef !186
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull @.str.3, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724SAXNotSupportedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #19
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
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef %2) #18
  br label %62

20:                                               ; preds = %14
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %25 = load ptr, ptr %24, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %25, ptr noundef %2) #18
  br label %62

26:                                               ; preds = %20
  %27 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE) #18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %31 = load ptr, ptr %30, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %31, ptr noundef %2) #18
  br label %62

32:                                               ; preds = %26
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE) #18
  br i1 %33, label %34, label %55

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 30
  %36 = load ptr, ptr %35, align 8, !tbaa !206
  %37 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %38 = load ptr, ptr %37, align 8, !tbaa !178
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %40 = load ptr, ptr %39, align 8, !tbaa !168
  %41 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %36, ptr noundef %38, ptr noundef %40) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %45 = load ptr, ptr %44, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %41, ptr noundef %45) #18
  %46 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !183
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %41, ptr noundef %47) #18
  %48 = load ptr, ptr %44, align 8, !tbaa !173
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %48, align 8, !tbaa !148
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(776) %48) #20
  br label %54

54:                                               ; preds = %50, %43
  store ptr %41, ptr %44, align 8, !tbaa !173
  br label %62

55:                                               ; preds = %32
  %56 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  %57 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %58 = load ptr, ptr %57, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull @.str.4, ptr noundef %58) #18
          to label %59 unwind label %60

59:                                               ; preds = %55
  tail call void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #19
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
  tail call void @__cxa_free_exception(ptr %64) #16
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !370
  %7 = load ptr, ptr %4, align 8, !tbaa !148
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !369
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !370
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !371
  %7 = load ptr, ptr %4, align 8, !tbaa !148
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !369
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !371
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  store ptr %1, ptr %3, align 8, !tbaa !372
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !148
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(12) %1) #18
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %9, ptr %10, align 4, !tbaa !373
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %11, align 8, !tbaa !374
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getPropertyEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %7) #18
  br label %39

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  %15 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %14) #18
  br label %39

16:                                               ; preds = %9
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %21) #18
  br label %39

23:                                               ; preds = %16
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE) #18
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %27 = load ptr, ptr %26, align 8, !tbaa !173
  %28 = load ptr, ptr %27, align 8, !tbaa !148
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(776) %27) #18
  br label %39

32:                                               ; preds = %23
  %33 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  %34 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %35 = load ptr, ptr %34, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull @.str.4, ptr noundef %35) #18
          to label %36 unwind label %37

36:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #19
  unreachable

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %33) #16
  resume { ptr, i32 } %38

39:                                               ; preds = %25, %19, %12, %5
  %40 = phi ptr [ %8, %5 ], [ %15, %12 ], [ %22, %19 ], [ %31, %25 ]
  ret ptr %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %3 = load ptr, ptr %2, align 8, !tbaa !372
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !171 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %1, ptr %3, align 8, !tbaa !375
  %4 = icmp eq i32 %1, 1
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !376 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 2, !tbaa !377
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !378 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !377, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !179 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 %3, ptr %4, align 2, !tbaa !379
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 2, !tbaa !379, !range !226, !noundef !186
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !225, !range !226, !noundef !186
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1470, i32 noundef 43, ptr noundef %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  tail call void @__cxa_free_exception(ptr %10) #16
  br label %39

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %6, align 1, !tbaa !225
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  %21 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret ptr %21

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call ptr @__cxa_begin_catch(ptr %25) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  invoke void @__cxa_rethrow() #19
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
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
  call void @__clang_call_terminate(ptr %46) #17
  unreachable

47:                                               ; preds = %29
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !225, !range !226, !noundef !186
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1496, i32 noundef 43, ptr noundef %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  tail call void @__cxa_free_exception(ptr %10) #16
  br label %39

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %6, align 1, !tbaa !225
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  %21 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret ptr %21

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call ptr @__cxa_begin_catch(ptr %25) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  invoke void @__cxa_rethrow() #19
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
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
  call void @__clang_call_terminate(ptr %46) #17
  unreachable

47:                                               ; preds = %29
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !225, !range !226, !noundef !186
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1522, i32 noundef 43, ptr noundef %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  tail call void @__cxa_free_exception(ptr %10) #16
  br label %42

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv to i64), i64 0) #18
  store i8 1, ptr %6, align 1, !tbaa !225
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  %21 = load ptr, ptr %20, align 8, !tbaa !148
  %22 = getelementptr inbounds ptr, ptr %21, i64 10
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %25 unwind label %26

25:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret ptr %24

26:                                               ; preds = %18
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = call ptr @__cxa_begin_catch(ptr %28) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  invoke void @__cxa_rethrow() #19
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
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
  call void @__clang_call_terminate(ptr %49) #17
  unreachable

50:                                               ; preds = %32
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl18setInputBufferSizeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i64 noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(776) %4, i64 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  store i64 %1, ptr %3, align 8, !tbaa !380
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %5 = trunc i64 %1 to i32
  tail call void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %0, i32 noundef %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #18
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !147 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getContentHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getDTDHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl21getDeclarationHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getLexicalHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getURITextEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl20getXMLEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !381
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !382
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !146 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !385 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !386
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !388 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !389
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !390 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !391

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !235
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !392

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !235
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !393, !llvm.loop !394

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !317
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !318
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !395

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #18
  %21 = load i32, ptr %0, align 8, !tbaa !317
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !322
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !317
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !317
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !367
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !396
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !397 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !398

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #18
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !148
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !171 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  br i1 %6, label %8, label %17, !prof !399

8:                                                ; preds = %3
  store ptr %1, ptr %7, align 8, !tbaa !400
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !319
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !318
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %18, !prof !285

13:                                               ; preds = %8
  store i32 %2, ptr %10, align 4, !tbaa !318
  %14 = load i32, ptr %0, align 8, !tbaa !317
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) #18
  br label %18

17:                                               ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !400
  br label %18

18:                                               ; preds = %8, %16, %13, %17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !401
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !402
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
declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 !prof !403 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i8 %5, ptr %0, align 8, !tbaa !404
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !406
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !407
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !408
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !409
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !148
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #18
  store ptr %15, ptr %8, align 8, !tbaa !408
  %16 = load i32, ptr %7, align 8, !tbaa !407
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !187 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !410
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !276
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !411
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !280
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !279
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !148
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #18
  store ptr %16, ptr %9, align 8, !tbaa !280
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !412

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !280
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !190
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !413, !llvm.loop !414
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !410, !range !226, !noundef !186
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !348

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !276
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !415

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !280
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %16) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #20
  %19 = load i32, ptr %6, align 4, !tbaa !276
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !416, !llvm.loop !417

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !279
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !280
  %30 = load ptr, ptr %27, align 8, !tbaa !148
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #18
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !276
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !279
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 67, i32 noundef 116, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !410, !range !226, !noundef !186
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !280
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !190
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %25) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #20
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !280
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !276
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !276
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !410, !range !226, !noundef !186
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !280
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !190
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %17) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #20
  %20 = load ptr, ptr %7, align 8, !tbaa !280
  %21 = load i32, ptr %2, align 4, !tbaa !276
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !190
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !418
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !276
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !279
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 144, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !410, !range !226, !noundef !186
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !280
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %22) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #20
  %25 = load i32, ptr %3, align 4, !tbaa !276
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
  %40 = load ptr, ptr %39, align 8, !tbaa !280
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !280
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !280
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !190
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !190
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !419

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !190
  store i32 %28, ptr %3, align 4, !tbaa !276
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !276
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !276
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !410, !range !226, !noundef !186
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !280
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %15) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #20
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !410, !range !226, !noundef !186
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !276
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !280
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %16) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #20
  %19 = load i32, ptr %6, align 4, !tbaa !276
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !420

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !279
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !280
  %30 = load ptr, ptr %27, align 8, !tbaa !148
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !187 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %0) #18
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !382
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !146 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !403 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !409
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !408
  %6 = load ptr, ptr %3, align 8, !tbaa !148
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
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !406
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !276
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !411
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !421

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !279
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !148
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #18
  %21 = load i32, ptr %3, align 4, !tbaa !276
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !190
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !280
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !190
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !190
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !422

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !279
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !280
  %49 = load ptr, ptr %46, align 8, !tbaa !148
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #18
  store ptr %20, ptr %47, align 8, !tbaa !280
  store i32 %12, ptr %6, align 8, !tbaa !411
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 !prof !423 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #18
  %3 = load i32, ptr %1, align 4, !tbaa !258
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !408
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !406
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !258
  %10 = load i32, ptr %6, align 4, !tbaa !406
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !406
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !423 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !406
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !407
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !424

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !409
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !148
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #18
  %22 = load i32, ptr %3, align 4, !tbaa !406
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !408
  br i1 %23, label %26, label %32, !prof !425

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !409
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !148
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #18
  store ptr %21, ptr %28, align 8, !tbaa !408
  store i32 %13, ptr %6, align 8, !tbaa !407
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !258
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !258
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !406
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !426, !llvm.loop !427

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !428 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !406
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIjE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !409
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !429 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !406
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !430

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !409
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.7, i32 noundef 206, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !408
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !431 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !406
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !432

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !409
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.7, i32 noundef 156, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %32, label %16, !prof !432

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !408
  %21 = zext i32 %1 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !258
  %27 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %26, ptr %27, align 4, !tbaa !258
  %28 = load i32, ptr %3, align 4, !tbaa !406
  %29 = add i32 %28, -1
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %22, label %32, !llvm.loop !433

32:                                               ; preds = %22, %16, %13
  %33 = phi i32 [ %14, %16 ], [ %14, %13 ], [ %29, %22 ]
  store i32 %33, ptr %3, align 4, !tbaa !406
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !146 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !382
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !146 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %3 = load ptr, ptr %0, align 8, !tbaa !334
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !434

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !336
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !435

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !148
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #18
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #21
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !334
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !336
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { optsize }
attributes #19 = { noreturn }
attributes #20 = { nounwind optsize }
attributes #21 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!145}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!35 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_713SAX2XMLReaderC2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLErrorReporterC2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLEntityHandlerC2Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_714DocTypeHandlerC2Ev, i64 1}
!41 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717VecAttributesImplC1Ev, i64 1}
!42 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEE7releaseEv, i64 1}
!45 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev, i64 1}
!46 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_712ValueStackOfIjED2Ev, i64 2}
!47 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!48 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_715GrammarResolverD1Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!50 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 1}
!53 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE, i64 1}
!54 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb, i64 1}
!55 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb, i64 1}
!56 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb, i64 2}
!58 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, i64 1}
!59 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, i64 1}
!60 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717VecAttributesImplD1Ev, i64 1}
!61 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, i64 1}
!62 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, i64 1}
!63 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, i64 1}
!64 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, i64 1}
!65 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_713SAX2XMLReaderD2Ev, i64 1}
!66 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb, ptr @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb, i64 2}
!67 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb, ptr @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb, i64 2}
!68 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!69 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb, i64 2}
!70 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, i64 4}
!71 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjED2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIjED2Ev, i64 2}
!72 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setContentHandlerEPNS_14ContentHandlerE, ptr @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE, i64 1}
!73 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13setDTDHandlerEPNS_10DTDHandlerE, ptr @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE, i64 1}
!74 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE, i64 1}
!75 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE, i64 1}
!76 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setLexicalHandlerEPNS_14LexicalHandlerE, ptr @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE, i64 1}
!77 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl17setEntityResolverEPNS_14EntityResolverE, ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 1}
!78 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!79 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEC2EPS1_MS1_FvvE, i64 1}
!80 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEED2Ev, i64 1}
!81 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv, ptr @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv, i64 2}
!82 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE17removeAllElementsEv, ptr @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv, i64 2}
!83 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv, i64 1}
!84 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 832910}
!85 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv, i64 832911}
!86 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj, i64 832913}
!87 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 200913}
!88 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 200913}
!89 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 401826}
!90 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv, i64 4}
!91 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, i64 200913}
!92 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, i64 2}
!93 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, i64 1}
!94 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE4sizeEv, i64 1}
!95 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb, i64 832910}
!96 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 832909}
!97 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 832910}
!98 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, i64 10}
!99 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!100 = !{ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv, ptr @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv, i64 1665822}
!101 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!102 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!103 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!104 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!105 = !{ptr @_ZNK11xercesc_2_77XMLAttr9getPrefixEv, ptr @_ZN11xercesc_2_75QName9getPrefixEv, i64 200913}
!106 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!107 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 10}
!108 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE4pushERKj, ptr @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj, i64 832913}
!109 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1666922}
!110 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv, i64 832913}
!111 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @__cxa_allocate_exception, i64 1}
!112 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIjE16getMemoryManagerEv, i64 1}
!113 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!114 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, i64 832912}
!115 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj, i64 832912}
!116 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv, i64 832910}
!117 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 832909}
!118 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 832910}
!119 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 832910}
!120 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, i64 832912}
!121 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!122 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!123 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!124 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPt, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 191815}
!125 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!126 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @__cxa_allocate_exception, i64 1}
!127 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE, i64 1}
!128 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_, i64 9}
!129 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb, i64 1}
!130 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE, ptr @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE, i64 1}
!131 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!132 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!133 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 12}
!134 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!135 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMLAttrD2Ev, i64 5}
!136 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!137 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev, i64 4}
!138 = !{ptr @_ZN11xercesc_2_77XMLAttrD2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!139 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj, ptr @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj, i64 833040}
!140 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!141 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!142 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!143 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!144 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!145 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!146 = !{!"function_entry_count", i64 0}
!147 = !{!"function_entry_count", i64 1}
!148 = !{!149, !149, i64 0}
!149 = !{!"vtable pointer", !150, i64 0}
!150 = !{!"Simple C++ TBAA"}
!151 = !{!152, !152, i64 0}
!152 = !{!"bool", !153, i64 0}
!153 = !{!"omnipotent char", !150, i64 0}
!154 = !{!155, !152, i64 44}
!155 = !{!"_ZTSN11xercesc_2_717SAX2XMLReaderImplE", !156, i64 0, !157, i64 8, !158, i64 16, !159, i64 24, !160, i64 32, !152, i64 40, !152, i64 41, !152, i64 42, !152, i64 43, !152, i64 44, !161, i64 48, !161, i64 52, !161, i64 56, !162, i64 64, !164, i64 96, !164, i64 104, !164, i64 112, !164, i64 120, !164, i64 128, !164, i64 136, !164, i64 144, !164, i64 152, !164, i64 160, !164, i64 168, !164, i64 176, !164, i64 184, !164, i64 192, !164, i64 200, !164, i64 208, !164, i64 216, !164, i64 224, !164, i64 232, !164, i64 240}
!156 = !{!"_ZTSN11xercesc_2_713SAX2XMLReaderE"}
!157 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!158 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!159 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!160 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!161 = !{!"int", !153, i64 0}
!162 = !{!"_ZTSN11xercesc_2_717VecAttributesImplE", !163, i64 0, !152, i64 8, !161, i64 12, !164, i64 16, !164, i64 24}
!163 = !{!"_ZTSN11xercesc_2_710AttributesE"}
!164 = !{!"any pointer", !153, i64 0}
!165 = !{!155, !161, i64 48}
!166 = !{!155, !161, i64 52}
!167 = !{!155, !161, i64 56}
!168 = !{!155, !164, i64 232}
!169 = !{!155, !164, i64 240}
!170 = !{!"function_entry_count", i64 5836268}
!171 = !{!"function_entry_count", i64 3}
!172 = !{!155, !164, i64 192}
!173 = !{!155, !164, i64 200}
!174 = !{!155, !164, i64 112}
!175 = !{!155, !164, i64 120}
!176 = !{!155, !164, i64 104}
!177 = !{!155, !164, i64 128}
!178 = !{!155, !164, i64 208}
!179 = !{!"function_entry_count", i64 2}
!180 = !{!181, !164, i64 0}
!181 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_17SAX2XMLReaderImplEEE", !164, i64 0, !153, i64 8}
!182 = !{!181, !153, i64 8}
!183 = !{!155, !164, i64 216}
!184 = !{!"branch_weights", i32 2, i32 2}
!185 = !{!"branch_weights", i32 1, i32 2}
!186 = !{}
!187 = !{!"function_entry_count", i64 4}
!188 = !{!189, !164, i64 8}
!189 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !152, i64 0, !152, i64 1, !152, i64 2, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64, !164, i64 72}
!190 = !{!164, !164, i64 0}
!191 = !{!192, !164, i64 120}
!192 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !193, i64 0, !194, i64 8, !152, i64 16, !152, i64 17, !152, i64 18, !152, i64 19, !152, i64 20, !152, i64 21, !152, i64 22, !152, i64 23, !152, i64 24, !152, i64 25, !152, i64 26, !152, i64 27, !152, i64 28, !152, i64 29, !152, i64 30, !152, i64 31, !152, i64 32, !152, i64 33, !152, i64 34, !152, i64 35, !152, i64 36, !152, i64 37, !152, i64 38, !161, i64 40, !161, i64 44, !161, i64 48, !161, i64 52, !161, i64 56, !161, i64 60, !161, i64 64, !161, i64 68, !164, i64 72, !161, i64 80, !161, i64 84, !161, i64 88, !161, i64 92, !161, i64 96, !164, i64 104, !164, i64 112, !164, i64 120, !164, i64 128, !164, i64 136, !164, i64 144, !164, i64 152, !164, i64 160, !164, i64 168, !152, i64 176, !195, i64 184, !164, i64 264, !198, i64 272, !164, i64 280, !164, i64 288, !164, i64 296, !164, i64 304, !164, i64 312, !164, i64 320, !164, i64 328, !164, i64 336, !164, i64 344, !197, i64 352, !164, i64 360, !199, i64 368, !200, i64 392, !200, i64 432, !200, i64 472, !200, i64 512, !200, i64 552, !200, i64 592, !200, i64 632, !201, i64 672}
!193 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!194 = !{!"long", !153, i64 0}
!195 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !196, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !161, i64 40, !164, i64 48, !152, i64 56, !197, i64 60, !152, i64 64, !164, i64 72}
!196 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!197 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !153, i64 0}
!198 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !153, i64 0}
!199 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !161, i64 0, !164, i64 8, !164, i64 16}
!200 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !161, i64 0, !161, i64 4, !161, i64 8, !152, i64 12, !164, i64 16, !164, i64 24, !164, i64 32}
!201 = !{!"_ZTSN11xercesc_2_79ElemStackE", !161, i64 0, !161, i64 4, !202, i64 8, !164, i64 48, !161, i64 56, !161, i64 60, !161, i64 64, !161, i64 68, !161, i64 72, !161, i64 76, !161, i64 80, !164, i64 88, !164, i64 96}
!202 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !203, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !161, i64 32, !161, i64 36}
!203 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!204 = distinct !{!204, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !{!155, !164, i64 224}
!207 = !{!192, !164, i64 264}
!208 = !{!192, !161, i64 40}
!209 = !{!155, !164, i64 96}
!210 = !{!155, !164, i64 136}
!211 = !{!192, !164, i64 128}
!212 = !{!155, !164, i64 160}
!213 = !{!192, !164, i64 144}
!214 = !{!192, !164, i64 152}
!215 = !{!155, !164, i64 168}
!216 = !{!192, !164, i64 160}
!217 = !{!155, !164, i64 176}
!218 = !{!155, !164, i64 184}
!219 = !{!155, !164, i64 144}
!220 = !{!"branch_weights", i32 2, i32 1}
!221 = !{!155, !164, i64 152}
!222 = !{!192, !164, i64 136}
!223 = !{!192, !152, i64 19}
!224 = !{!192, !152, i64 20}
!225 = !{!155, !152, i64 43}
!226 = !{i8 0, i8 2}
!227 = !{!"function_entry_count", i64 598800}
!228 = !{!"branch_weights", i32 1, i32 598801}
!229 = !{!"branch_weights", i32 598800, i32 1}
!230 = !{!"branch_weights", i32 0, i32 1}
!231 = distinct !{!231, !205}
!232 = distinct !{!232, !205}
!233 = !{!"function_entry_count", i64 2453164456}
!234 = !{!"branch_weights", i32 1, i32 -1841802839}
!235 = !{!236, !236, i64 0}
!236 = !{!"short", !153, i64 0}
!237 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!238 = !{!"branch_weights", i32 408669070, i32 -279908794}
!239 = distinct !{!239, !205}
!240 = !{!"branch_weights", i32 1, i32 1}
!241 = distinct !{!241, !205}
!242 = distinct !{!242, !205}
!243 = distinct !{!243, !205}
!244 = distinct !{!244, !205}
!245 = !{!246, !164, i64 24}
!246 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !203, i64 0, !161, i64 8, !161, i64 12, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64}
!247 = !{!"function_entry_count", i64 912716}
!248 = !{!"branch_weights", i32 3, i32 912715}
!249 = !{!"branch_weights", i32 1, i32 912715}
!250 = !{!"branch_weights", i32 912714, i32 1}
!251 = distinct !{!251, !205}
!252 = distinct !{!252, !205}
!253 = distinct !{!253, !205}
!254 = !{!"function_entry_count", i64 553}
!255 = !{!"function_entry_count", i64 832911}
!256 = !{!"branch_weights", i32 1, i32 832912}
!257 = !{!"branch_weights", i32 832912, i32 1}
!258 = !{!161, !161, i64 0}
!259 = !{!155, !152, i64 40}
!260 = !{!"branch_weights", i32 631998, i32 200914}
!261 = !{!"branch_weights", i32 2, i32 200913}
!262 = !{!"branch_weights", i32 1, i32 200914}
!263 = !{!"branch_weights", i32 3, i32 3}
!264 = !{!"branch_weights", i32 2147451581, i32 32067}
!265 = !{!"branch_weights", i32 200914, i32 0}
!266 = distinct !{!266, !205}
!267 = distinct !{!267, !205}
!268 = !{!"branch_weights", i32 832911, i32 1}
!269 = distinct !{!269, !205}
!270 = !{!"function_entry_count", i64 1668291}
!271 = !{!272, !164, i64 16}
!272 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !203, i64 0, !164, i64 8, !164, i64 16, !273, i64 24, !161, i64 28, !152, i64 32}
!273 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !153, i64 0}
!274 = !{!"function_entry_count", i64 1665822}
!275 = !{!"function_entry_count", i64 1366334}
!276 = !{!277, !161, i64 12}
!277 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !152, i64 8, !161, i64 12, !161, i64 16, !164, i64 24, !164, i64 32}
!278 = !{!"branch_weights", i32 1366335, i32 1}
!279 = !{!277, !164, i64 32}
!280 = !{!277, !164, i64 24}
!281 = !{!"function_entry_count", i64 1231717351}
!282 = !{!"branch_weights", i32 621, i32 -1469098093}
!283 = !{!"branch_weights", i32 408901017, i32 1}
!284 = !{!"branch_weights", i32 267, i32 4}
!285 = !{!"branch_weights", i32 1, i32 4}
!286 = !{!"branch_weights", i32 156, i32 112}
!287 = !{!"branch_weights", i32 1, i32 112}
!288 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!289 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!290 = distinct !{!290, !205}
!291 = !{!"function_entry_count", i64 360600}
!292 = !{!293, !164, i64 16}
!293 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !152, i64 0, !294, i64 4, !161, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !152, i64 48}
!294 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !153, i64 0}
!295 = !{!"function_entry_count", i64 200913}
!296 = !{!293, !164, i64 24}
!297 = !{!"function_entry_count", i64 159625}
!298 = !{!"function_entry_count", i64 10}
!299 = !{!"function_entry_count", i64 832913}
!300 = !{!"function_entry_count", i64 190440}
!301 = !{!"function_entry_count", i64 1666922}
!302 = !{!"branch_weights", i32 1, i32 832914}
!303 = !{!"branch_weights", i32 832909, i32 3}
!304 = !{!"branch_weights", i32 3, i32 0}
!305 = distinct !{!305, !205}
!306 = distinct !{!306, !205}
!307 = distinct !{!307, !205}
!308 = distinct !{!308, !205}
!309 = !{!"function_entry_count", i64 593014}
!310 = !{!311, !294, i64 12}
!311 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !203, i64 0, !312, i64 8, !294, i64 12, !313, i64 16, !152, i64 20, !152, i64 21, !161, i64 24, !164, i64 32, !164, i64 40, !164, i64 48}
!312 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !153, i64 0}
!313 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !153, i64 0}
!314 = !{!"function_entry_count", i64 401820}
!315 = !{!311, !312, i64 8}
!316 = !{!"function_entry_count", i64 496321}
!317 = !{!200, !161, i64 0}
!318 = !{!200, !161, i64 4}
!319 = !{!200, !161, i64 8}
!320 = !{!200, !152, i64 12}
!321 = !{!200, !164, i64 16}
!322 = !{!200, !164, i64 32}
!323 = !{!311, !164, i64 40}
!324 = !{!"function_entry_count", i64 190774}
!325 = !{!"function_entry_count", i64 7992849}
!326 = !{!"branch_weights", i32 1, i32 7992850}
!327 = !{!"function_entry_count", i64 10769804}
!328 = !{!"function_entry_count", i64 19496}
!329 = !{!311, !164, i64 32}
!330 = !{!246, !164, i64 32}
!331 = !{!246, !164, i64 40}
!332 = !{!246, !164, i64 48}
!333 = !{!"function_entry_count", i64 191815}
!334 = !{!335, !164, i64 0}
!335 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !164, i64 0, !164, i64 8}
!336 = !{!335, !164, i64 8}
!337 = !{!246, !164, i64 16}
!338 = !{!"function_entry_count", i64 243874}
!339 = !{!340, !164, i64 16}
!340 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !203, i64 0, !161, i64 8, !161, i64 12, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48}
!341 = !{!340, !164, i64 24}
!342 = !{!340, !164, i64 32}
!343 = !{!344, !164, i64 8}
!344 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !345, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40}
!345 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !153, i64 0}
!346 = !{!344, !164, i64 16}
!347 = !{!"branch_weights", i32 5, i32 1}
!348 = !{!"branch_weights", i32 2, i32 4}
!349 = !{!155, !152, i64 42}
!350 = !{!155, !152, i64 41}
!351 = !{!"branch_weights", i32 2, i32 3}
!352 = !{!192, !152, i64 27}
!353 = !{!192, !152, i64 28}
!354 = !{!192, !152, i64 31}
!355 = !{!192, !152, i64 29}
!356 = !{!192, !152, i64 30}
!357 = !{!192, !152, i64 17}
!358 = !{!192, !152, i64 16}
!359 = !{!192, !152, i64 33}
!360 = !{!192, !152, i64 34}
!361 = !{!192, !152, i64 35}
!362 = !{!192, !152, i64 36}
!363 = !{!192, !152, i64 37}
!364 = !{!192, !152, i64 38}
!365 = !{!366, !164, i64 16}
!366 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !164, i64 8, !164, i64 16}
!367 = !{!366, !164, i64 8}
!368 = !{!"function_entry_count", i64 498}
!369 = !{!192, !164, i64 360}
!370 = !{!192, !164, i64 328}
!371 = !{!192, !164, i64 336}
!372 = !{!192, !164, i64 344}
!373 = !{!192, !161, i64 44}
!374 = !{!192, !161, i64 48}
!375 = !{!192, !198, i64 272}
!376 = !{!"function_entry_count", i64 5}
!377 = !{!192, !152, i64 18}
!378 = !{!"function_entry_count", i64 1666453}
!379 = !{!192, !152, i64 26}
!380 = !{!192, !194, i64 8}
!381 = !{!195, !164, i64 24}
!382 = !{!383, !164, i64 40}
!383 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !384, i64 8, !164, i64 16, !161, i64 24, !164, i64 32, !164, i64 40}
!384 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !153, i64 0}
!385 = !{!"function_entry_count", i64 211020}
!386 = !{!387, !164, i64 24}
!387 = !{!"_ZTSN11xercesc_2_75QNameE", !203, i64 0, !161, i64 8, !161, i64 12, !161, i64 16, !161, i64 20, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48}
!388 = !{!"function_entry_count", i64 2192223}
!389 = !{!387, !164, i64 32}
!390 = !{!"function_entry_count", i64 789922}
!391 = !{!"branch_weights", i32 1, i32 789923}
!392 = !{!"branch_weights", i32 285, i32 789639}
!393 = !{!"branch_weights", i32 789639, i32 41628304}
!394 = distinct !{!394, !205}
!395 = !{!"branch_weights", i32 789637, i32 3}
!396 = !{!195, !152, i64 64}
!397 = !{!"function_entry_count", i64 558789}
!398 = !{!"branch_weights", i32 158605, i32 400186}
!399 = !{!"branch_weights", i32 16, i32 9}
!400 = !{!200, !164, i64 24}
!401 = !{!192, !164, i64 304}
!402 = !{!195, !164, i64 16}
!403 = !{!"function_entry_count", i64 12}
!404 = !{!405, !152, i64 0}
!405 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !152, i64 0, !161, i64 4, !161, i64 8, !164, i64 16, !164, i64 24}
!406 = !{!405, !161, i64 4}
!407 = !{!405, !161, i64 8}
!408 = !{!405, !164, i64 16}
!409 = !{!405, !164, i64 24}
!410 = !{!277, !152, i64 8}
!411 = !{!277, !161, i64 16}
!412 = !{!"branch_weights", i32 1, i32 159}
!413 = !{!"branch_weights", i32 159, i32 3265}
!414 = distinct !{!414, !205}
!415 = !{!"branch_weights", i32 1, i32 127}
!416 = !{!"branch_weights", i32 225, i32 127}
!417 = distinct !{!417, !205}
!418 = distinct !{!418, !205}
!419 = distinct !{!419, !205}
!420 = distinct !{!420, !205}
!421 = !{!"branch_weights", i32 1, i32 11}
!422 = distinct !{!422, !205}
!423 = !{!"function_entry_count", i64 833040}
!424 = !{!"branch_weights", i32 18, i32 833024}
!425 = !{!"branch_weights", i32 1, i32 143}
!426 = !{!"branch_weights", i32 2177, i32 143}
!427 = distinct !{!427, !205}
!428 = !{!"function_entry_count", i64 832990}
!429 = !{!"function_entry_count", i64 832914}
!430 = !{!"branch_weights", i32 832915, i32 1}
!431 = !{!"function_entry_count", i64 832960}
!432 = !{!"branch_weights", i32 832961, i32 1}
!433 = distinct !{!433, !205}
!434 = !{!"branch_weights", i32 191816, i32 52060}
!435 = !{!"branch_weights", i32 1, i32 52060}
