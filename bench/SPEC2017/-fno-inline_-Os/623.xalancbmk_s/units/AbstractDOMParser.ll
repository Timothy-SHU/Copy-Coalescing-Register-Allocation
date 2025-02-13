; ModuleID = 'AbstractDOMParser.cpp'
source_filename = "AbstractDOMParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMTypeInfoImpl" = type { %"class.xercesc_2_7::DOMTypeInfo", %"class.xercesc_2_7::DOMPSVITypeInfo", i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMTypeInfo" = type { ptr }
%"class.xercesc_2_7::DOMPSVITypeInfo" = type { ptr }
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMAttrImpl" = type { %"class.xercesc_2_7::DOMAttr", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr }
%"class.xercesc_2_7::DOMAttr" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentTypeImpl" = type <{ %"class.xercesc_2_7::DOMDocumentType", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::DOMDocumentType" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::PSVIElement" = type { %"class.xercesc_2_7::PSVIItem", ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_711PSVIHandlerD2Ev = comdat any

$_ZN11xercesc_2_711PSVIHandlerD0Ev = comdat any

$_ZN11xercesc_2_711PSVIHandler24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerC2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterC2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerC2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerC2Ev = comdat any

$_ZN11xercesc_2_711PSVIHandlerC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD0Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_ = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD0Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD0Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD0Ev = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_710XMLScanner12getValidatorEv = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv = comdat any

$_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv = comdat any

$_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv = comdat any

$_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv = comdat any

$_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv = comdat any

$_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv = comdat any

$_ZN11xercesc_2_710XMLScanner13getErrorCountEv = comdat any

$_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv = comdat any

$_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb = comdat any

$_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE = comdat any

$_ZN11xercesc_2_710XMLScanner11setDoSchemaEb = comdat any

$_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb = comdat any

$_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb = comdat any

$_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt = comdat any

$_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc = comdat any

$_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc = comdat any

$_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE = comdat any

$_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb = comdat any

$_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb = comdat any

$_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZNK11xercesc_2_78PSVIItem11getValidityEv = comdat any

$_ZNK11xercesc_2_78PSVIItem22getValidationAttemptedEv = comdat any

$_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv = comdat any

$_ZN11xercesc_2_711PSVIElement21getElementDeclarationEv = comdat any

$_ZN11xercesc_2_78PSVIItem16getSchemaDefaultEv = comdat any

$_ZN11xercesc_2_78PSVIItem24getSchemaNormalizedValueEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv = comdat any

$_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb = comdat any

$_ZNK11xercesc_2_710XMLScanner10getLocatorEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79XMLBufBid3setEPKtj = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEPKtj = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getTypeEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb = comdat any

$_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_ = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoValidationEb = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl8getValueEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl7getNameEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl10getBaseURIEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_711PSVIHandlerE = comdat any

$_ZTSN11xercesc_2_711PSVIHandlerE = comdat any

$_ZTIN11xercesc_2_711PSVIHandlerE = comdat any

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

$_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_711PSVIHandlerE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711PSVIHandlerE, ptr @_ZN11xercesc_2_711PSVIHandlerD2Ev, ptr @_ZN11xercesc_2_711PSVIHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_711PSVIHandler24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_711PSVIHandlerE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711PSVIHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_711PSVIHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711PSVIHandlerE }, comdat, align 8
@_ZTVN11xercesc_2_717AbstractDOMParserE = dso_local unnamed_addr constant { [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_717AbstractDOMParserD0Ev, ptr @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE, ptr @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn8_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn8_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [10 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn16_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn16_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [20 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_], [7 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE] }, align 8
@_ZTSN11xercesc_2_717AbstractDOMParserE = dso_local constant [35 x i8] c"N11xercesc_2_717AbstractDOMParserE\00", align 1
@_ZTSN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718XMLDocumentHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XMLDocumentHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLErrorReporterE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLErrorReporterE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLEntityHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLEntityHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714DocTypeHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DocTypeHandlerE }, comdat, align 8
@_ZTIN11xercesc_2_717AbstractDOMParserE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717AbstractDOMParserE, i32 0, i32 6, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, i64 2, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, i64 2050, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, i64 4098, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, i64 6146, ptr @_ZTIN11xercesc_2_711PSVIHandlerE, i64 8194 }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE7cleanupEv] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [22 x i8] c"AbstractDOMParser.cpp\00", align 1
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715DOMTypeInfoImpl28g_DtdValidatedCDATAAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl25g_DtdValidatedIDAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl28g_DtdValidatedIDREFAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl29g_DtdValidatedIDREFSAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl29g_DtdValidatedENTITYAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedENTITIESAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl30g_DtdValidatedNMTOKENAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedNMTOKENSAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedNOTATIONAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl34g_DtdValidatedENUMERATIONAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_76XMLUni11fgYesStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgCDATAStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgIDRefStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgIDRefsStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgEntityStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgEntitiesStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgNmTokenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNmTokensStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNotationStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgRequiredStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgImpliedStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgFixedStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgCommentStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgElemStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS = internal constant [6 x i16] [i16 120, i16 109, i16 108, i16 110, i16 115, i16 0], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgPubIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgSysIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgNDATAStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgAttListStringE = external constant [0 x i16], align 2
@switch.table._ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb.4 = private unnamed_addr constant [10 x ptr] [ptr @_ZN11xercesc_2_715DOMTypeInfoImpl28g_DtdValidatedCDATAAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl25g_DtdValidatedIDAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl28g_DtdValidatedIDREFAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl29g_DtdValidatedIDREFSAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl29g_DtdValidatedENTITYAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedENTITIESAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl30g_DtdValidatedNMTOKENAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedNMTOKENSAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedNOTATIONAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl34g_DtdValidatedENUMERATIONAttributeE], align 8

@_ZN11xercesc_2_717AbstractDOMParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711PSVIHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711PSVIHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711PSVIHandler24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 2, !tbaa !120, !range !133, !noundef !134
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %4
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !135
  store i16 0, ptr %10, align 2, !tbaa !135
  br i1 %3, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(293) %14, ptr noundef nonnull %1) #21
  %19 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !140
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 17
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %18) #21
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %18, ptr %25, align 8, !tbaa !141
  br label %52

26:                                               ; preds = %8
  %27 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !141
  %29 = load ptr, ptr %28, align 8, !tbaa !138
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i16 %31(ptr noundef nonnull align 8 dereferenceable(8) %28) #21
  %33 = icmp eq i16 %32, 3
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load ptr, ptr %27, align 8, !tbaa !141
  %36 = load ptr, ptr %35, align 8, !tbaa !138
  %37 = getelementptr inbounds ptr, ptr %36, i64 43
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %1) #21
  br label %52

39:                                               ; preds = %26
  %40 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !137
  %42 = load ptr, ptr %41, align 8, !tbaa !138
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(293) %41, ptr noundef nonnull %1) #21
  %46 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !140
  %48 = load ptr, ptr %47, align 8, !tbaa !138
  %49 = getelementptr inbounds ptr, ptr %48, i64 17
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %45) #21
  store ptr %45, ptr %27, align 8, !tbaa !141
  br label %52

52:                                               ; preds = %34, %39, %12
  store i16 %11, ptr %10, align 2, !tbaa !135
  br label %53

53:                                               ; preds = %4, %52
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 4, !tbaa !142, !range !133, !noundef !134
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %1) #21
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = getelementptr inbounds ptr, ptr %15, i64 17
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %12) #21
  %19 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %12, ptr %19, align 8, !tbaa !141
  br label %20

20:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %1, ptr noundef %2) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !140
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = getelementptr inbounds ptr, ptr %12, i64 17
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %9) #21
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %9, ptr %16, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #2 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(293) %3, i1 noundef zeroext true) #21
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !144

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !145
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %9) #21
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8, !tbaa !143
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  %14 = getelementptr inbounds ptr, ptr %13, i64 51
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(130) %12, i1 noundef zeroext true, i1 noundef zeroext true) #21
  br label %16

16:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture nonnull readnone align 8 %1, i32 %2, i1 zeroext %3, ptr nocapture readnone %4) unnamed_addr #2 align 2 !prof !119 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %7, ptr %8, align 8, !tbaa !141
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #21
  store ptr %11, ptr %6, align 8, !tbaa !140
  %12 = load ptr, ptr %9, align 8, !tbaa !146
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %12) #21
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %15, align 2, !tbaa !120
  br label %16

16:                                               ; preds = %14, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !147, !range !133, !noundef !134
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  %13 = icmp ne i16 %12, 5
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %16) #21
  store ptr %17, ptr %7, align 8, !tbaa !140
  %18 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %17, ptr %18, align 8, !tbaa !141
  %19 = icmp eq ptr %14, null
  %20 = select i1 %13, i1 true, i1 %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load ptr, ptr %14, align 8, !tbaa !138
  %23 = getelementptr inbounds ptr, ptr %22, i64 40
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(88) %14, i1 noundef zeroext true, i1 noundef zeroext true) #21
  br label %25

25:                                               ; preds = %6, %21, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i1 zeroext %3) unnamed_addr #2 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 2, !tbaa !120, !range !133, !noundef !134
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !range !133
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %7, i1 true, i1 %10
  br i1 %11, label %45, label %12

12:                                               ; preds = %4
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i16, ptr %1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !135
  store i16 0, ptr %14, align 2, !tbaa !135
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !141
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef signext i16 %20(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load ptr, ptr %16, align 8, !tbaa !141
  %25 = load ptr, ptr %24, align 8, !tbaa !138
  %26 = getelementptr inbounds ptr, ptr %25, i64 43
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %1) #21
  br label %44

28:                                               ; preds = %12
  %29 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !137
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  %32 = getelementptr inbounds ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(293) %30, ptr noundef nonnull %1) #21
  %35 = load ptr, ptr %34, align 8, !tbaa !138
  %36 = getelementptr inbounds ptr, ptr %35, i64 53
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(56) %34, i1 noundef zeroext true) #21
  %38 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !140
  %40 = load ptr, ptr %39, align 8, !tbaa !138
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull %34) #21
  store ptr %34, ptr %16, align 8, !tbaa !141
  br label %44

44:                                               ; preds = %28, %23
  store i16 %15, ptr %14, align 2, !tbaa !135
  br label %45

45:                                               ; preds = %4, %44
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #2 align 2 !prof !118 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #2 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !144

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() #21
  br label %9

7:                                                ; preds = %1
  %8 = tail call noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef nonnull %3) #21
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !149
  %13 = load ptr, ptr %10, align 8, !tbaa !138
  %14 = getelementptr inbounds ptr, ptr %13, i64 9
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #21
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  %19 = getelementptr inbounds i8, ptr %16, i64 24
  %20 = select i1 %18, ptr null, ptr %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  store ptr %20, ptr %21, align 8, !tbaa !140
  %22 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %20, ptr %22, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(293) %16, i1 noundef zeroext false) #21
  %23 = load ptr, ptr %17, align 8, !tbaa !137
  %24 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !145
  %26 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %25) #21
  %27 = load ptr, ptr %26, align 8, !tbaa !138
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26) #21
  %31 = load ptr, ptr %23, align 8, !tbaa !138
  %32 = getelementptr inbounds ptr, ptr %31, i64 29
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(293) %23, ptr noundef %30) #21
  %34 = load ptr, ptr %17, align 8, !tbaa !137
  %35 = load ptr, ptr %24, align 8, !tbaa !145
  %36 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(776) %35) #21
  %37 = tail call noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80) %36) #21
  %38 = load ptr, ptr %34, align 8, !tbaa !138
  %39 = getelementptr inbounds ptr, ptr %38, i64 21
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(293) %34, ptr noundef %37) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %9 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %10 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %1, align 8, !tbaa !138
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load ptr, ptr %1, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr %19(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  br label %21

21:                                               ; preds = %16, %8
  %22 = phi ptr [ %20, %16 ], [ null, %8 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !145
  %25 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %24) #21
  br i1 %25, label %26, label %64

26:                                               ; preds = %21
  %27 = load ptr, ptr %23, align 8, !tbaa !145
  %28 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %27) #21
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %58, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %23, align 8, !tbaa !145
  %32 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %31, i32 noundef %2) #21
  %33 = icmp eq ptr %3, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %3, align 2, !tbaa !135
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  %38 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %38) #21
  invoke void @_ZN11xercesc_2_79XMLBufBid3setEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %3, i32 noundef 0) #21
          to label %39 unwind label %50

39:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %9, i16 noundef zeroext 58) #21
          to label %40 unwind label %50

40:                                               ; preds = %39
  %41 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
          to label %42 unwind label %50

42:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %41, i32 noundef 0) #21
          to label %43 unwind label %50

43:                                               ; preds = %42
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  %45 = load ptr, ptr %0, align 8, !tbaa !138
  %46 = getelementptr inbounds ptr, ptr %45, i64 35
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %32, ptr noundef %44) #21
          to label %49 unwind label %50

49:                                               ; preds = %43
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  br label %72

50:                                               ; preds = %43, %42, %40, %39, %37
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  br label %313

52:                                               ; preds = %34, %30
  %53 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  %54 = load ptr, ptr %0, align 8, !tbaa !138
  %55 = getelementptr inbounds ptr, ptr %54, i64 35
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %32, ptr noundef %53) #21
  br label %72

58:                                               ; preds = %26
  %59 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  %60 = load ptr, ptr %0, align 8, !tbaa !138
  %61 = getelementptr inbounds ptr, ptr %60, i64 35
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef null, ptr noundef %59) #21
  br label %72

64:                                               ; preds = %21
  %65 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !137
  %67 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  %68 = load ptr, ptr %66, align 8, !tbaa !138
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(293) %66, ptr noundef %67) #21
  br label %72

72:                                               ; preds = %58, %52, %49, %64
  %73 = phi ptr [ %71, %64 ], [ %48, %49 ], [ %57, %52 ], [ %63, %58 ]
  %74 = icmp eq i32 %5, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %77 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  br label %90

78:                                               ; preds = %176, %72
  %79 = icmp eq ptr %22, null
  br i1 %79, label %297, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %22, align 8, !tbaa !138
  %82 = getelementptr inbounds ptr, ptr %81, i64 13
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef i32 %83(ptr noundef nonnull align 8 dereferenceable(16) %22) #21
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %297, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %88 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %89 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  br label %179

90:                                               ; preds = %75, %176
  %91 = phi i32 [ 0, %75 ], [ %177, %176 ]
  %92 = call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %91) #21
  %93 = load ptr, ptr %23, align 8, !tbaa !145
  %94 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %93) #21
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %97 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %98 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %97, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #21
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load ptr, ptr %23, align 8, !tbaa !145
  %101 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %100) #21
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i32 [ %101, %99 ], [ %96, %95 ]
  %104 = load ptr, ptr %23, align 8, !tbaa !145
  %105 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %104) #21
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr %23, align 8, !tbaa !145
  %109 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %108, i32 noundef %103) #21
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi ptr [ %109, %107 ], [ null, %102 ]
  %112 = load ptr, ptr %76, align 8, !tbaa !137
  %113 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %114 = load ptr, ptr %112, align 8, !tbaa !138
  %115 = getelementptr inbounds ptr, ptr %114, i64 17
  %116 = load ptr, ptr %115, align 8
  %117 = call noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(293) %112, ptr noundef %111, ptr noundef %113) #21
  br label %125

118:                                              ; preds = %90
  %119 = load ptr, ptr %76, align 8, !tbaa !137
  %120 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %121 = load ptr, ptr %119, align 8, !tbaa !138
  %122 = getelementptr inbounds ptr, ptr %121, i64 9
  %123 = load ptr, ptr %122, align 8
  %124 = call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(293) %119, ptr noundef %120) #21
  br label %125

125:                                              ; preds = %118, %110
  %126 = phi i64 [ 45, %118 ], [ 52, %110 ]
  %127 = phi ptr [ %124, %118 ], [ %117, %110 ]
  %128 = load ptr, ptr %73, align 8, !tbaa !138
  %129 = getelementptr inbounds ptr, ptr %128, i64 %126
  %130 = load ptr, ptr %129, align 8
  %131 = call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(96) %73, ptr noundef %127) #21
  %132 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %133 = load ptr, ptr %127, align 8, !tbaa !138
  %134 = getelementptr inbounds ptr, ptr %133, i64 43
  %135 = load ptr, ptr %134, align 8
  call void %135(ptr noundef nonnull align 8 dereferenceable(72) %127, ptr noundef %132) #21
  %136 = icmp eq ptr %131, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %125
  %138 = load ptr, ptr %131, align 8, !tbaa !138
  %139 = getelementptr inbounds ptr, ptr %138, i64 39
  %140 = load ptr, ptr %139, align 8
  call void %140(ptr noundef nonnull align 8 dereferenceable(8) %131) #21
  br label %141

141:                                              ; preds = %137, %125
  %142 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load ptr, ptr %76, align 8, !tbaa !137
  %146 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !150
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 56, ptr noundef nonnull %145) #21
  %151 = load ptr, ptr %76, align 8, !tbaa !137
  call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %150, i32 noundef 500, ptr noundef %151) #21
  %152 = load ptr, ptr %76, align 8, !tbaa !137
  %153 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %152, i64 0, i32 3
  store ptr %150, ptr %153, align 8, !tbaa !150
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi ptr [ %150, %149 ], [ %147, %144 ]
  call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %155, ptr noundef nonnull %127) #21
  %156 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %127, i64 0, i32 1
  call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %156, i1 noundef zeroext true) #21
  br label %157

157:                                              ; preds = %154, %141
  %158 = call noundef zeroext i1 @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %159 = load ptr, ptr %127, align 8, !tbaa !138
  %160 = getelementptr inbounds ptr, ptr %159, i64 47
  %161 = load ptr, ptr %160, align 8
  call void %161(ptr noundef nonnull align 8 dereferenceable(72) %127, i1 noundef zeroext %158) #21
  %162 = load i8, ptr %77, align 2, !tbaa !164, !range !133, !noundef !134
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %157
  %165 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %92) #21
  %166 = load ptr, ptr %127, align 8, !tbaa !138
  %167 = getelementptr inbounds ptr, ptr %166, i64 49
  %168 = load ptr, ptr %167, align 8
  %169 = icmp ult i32 %165, 10
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = zext nneg i32 %165 to i64
  %172 = getelementptr inbounds [10 x ptr], ptr @switch.table._ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb.4, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8
  br label %174

174:                                              ; preds = %164, %170
  %175 = phi ptr [ %173, %170 ], [ @_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE, %164 ]
  call void %168(ptr noundef nonnull align 8 dereferenceable(72) %127, ptr noundef nonnull %175) #21
  br label %176

176:                                              ; preds = %174, %157
  %177 = add nuw i32 %91, 1
  %178 = icmp eq i32 %177, %5
  br i1 %178, label %78, label %90, !llvm.loop !165

179:                                              ; preds = %86, %287
  %180 = phi i32 [ 0, %86 ], [ %291, %287 ]
  %181 = load ptr, ptr %22, align 8, !tbaa !138
  %182 = getelementptr inbounds ptr, ptr %181, i64 14
  %183 = load ptr, ptr %182, align 8
  %184 = call noundef nonnull align 8 dereferenceable(56) ptr %183(ptr noundef nonnull align 8 dereferenceable(16) %22, i32 noundef %180) #21
  %185 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %184) #21
  %186 = icmp ult i32 %185, 2
  br i1 %186, label %187, label %287

187:                                              ; preds = %179
  %188 = load ptr, ptr %23, align 8, !tbaa !145
  %189 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %188) #21
  br i1 %189, label %190, label %241

190:                                              ; preds = %187
  %191 = load ptr, ptr %184, align 8, !tbaa !138
  %192 = getelementptr inbounds ptr, ptr %191, i64 5
  %193 = load ptr, ptr %192, align 8
  %194 = call noundef ptr %193(ptr noundef nonnull align 8 dereferenceable(56) %184) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %88) #21
  %195 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  store i32 -1, ptr %11, align 4, !tbaa !167
  %196 = load ptr, ptr %23, align 8, !tbaa !145
  %197 = load ptr, ptr %196, align 8, !tbaa !138
  %198 = getelementptr inbounds ptr, ptr %197, i64 7
  %199 = load ptr, ptr %198, align 8
  %200 = invoke noundef i32 %199(ptr noundef nonnull align 8 dereferenceable(776) %196, ptr noundef %194, ptr noundef nonnull align 8 dereferenceable(40) %195, i16 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %11) #21
          to label %201 unwind label %206

201:                                              ; preds = %190
  %202 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %194, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #21
  br i1 %202, label %203, label %210

203:                                              ; preds = %201
  %204 = load ptr, ptr %23, align 8, !tbaa !145
  %205 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %204) #21
  br label %210

206:                                              ; preds = %190
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %239

208:                                              ; preds = %218, %215
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %239

210:                                              ; preds = %203, %201
  %211 = phi i32 [ %205, %203 ], [ %200, %201 ]
  %212 = load ptr, ptr %23, align 8, !tbaa !145
  %213 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %212) #21
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load ptr, ptr %23, align 8, !tbaa !145
  %217 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %216, i32 noundef %211) #21
          to label %218 unwind label %208

218:                                              ; preds = %215, %210
  %219 = phi ptr [ null, %210 ], [ %217, %215 ]
  %220 = load ptr, ptr %87, align 8, !tbaa !137
  %221 = load ptr, ptr %220, align 8, !tbaa !138
  %222 = getelementptr inbounds ptr, ptr %221, i64 17
  %223 = load ptr, ptr %222, align 8
  %224 = invoke noundef ptr %223(ptr noundef nonnull align 8 dereferenceable(293) %220, ptr noundef %219, ptr noundef %194) #21
          to label %225 unwind label %208

225:                                              ; preds = %218
  %226 = load ptr, ptr %73, align 8, !tbaa !138
  %227 = getelementptr inbounds ptr, ptr %226, i64 62
  %228 = load ptr, ptr %227, align 8
  %229 = invoke noundef ptr %228(ptr noundef nonnull align 8 dereferenceable(96) %73, ptr noundef %224) #21
          to label %230 unwind label %236

230:                                              ; preds = %225
  %231 = icmp eq ptr %229, null
  br i1 %231, label %238, label %232

232:                                              ; preds = %230
  %233 = load ptr, ptr %229, align 8, !tbaa !138
  %234 = getelementptr inbounds ptr, ptr %233, i64 39
  %235 = load ptr, ptr %234, align 8
  invoke void %235(ptr noundef nonnull align 8 dereferenceable(8) %229) #21
          to label %238 unwind label %236

236:                                              ; preds = %232, %225
  %237 = landingpad { ptr, i32 }
          cleanup
  br label %239

238:                                              ; preds = %232, %230
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %260

239:                                              ; preds = %208, %236, %206
  %240 = phi { ptr, i32 } [ %207, %206 ], [ %237, %236 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %313

241:                                              ; preds = %187
  %242 = load ptr, ptr %87, align 8, !tbaa !137
  %243 = load ptr, ptr %184, align 8, !tbaa !138
  %244 = getelementptr inbounds ptr, ptr %243, i64 5
  %245 = load ptr, ptr %244, align 8
  %246 = call noundef ptr %245(ptr noundef nonnull align 8 dereferenceable(56) %184) #21
  %247 = load ptr, ptr %242, align 8, !tbaa !138
  %248 = getelementptr inbounds ptr, ptr %247, i64 9
  %249 = load ptr, ptr %248, align 8
  %250 = call noundef ptr %249(ptr noundef nonnull align 8 dereferenceable(293) %242, ptr noundef %246) #21
  %251 = load ptr, ptr %73, align 8, !tbaa !138
  %252 = getelementptr inbounds ptr, ptr %251, i64 61
  %253 = load ptr, ptr %252, align 8
  %254 = call noundef ptr %253(ptr noundef nonnull align 8 dereferenceable(96) %73, ptr noundef %250) #21
  %255 = icmp eq ptr %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %241
  %257 = load ptr, ptr %254, align 8, !tbaa !138
  %258 = getelementptr inbounds ptr, ptr %257, i64 39
  %259 = load ptr, ptr %258, align 8
  call void %259(ptr noundef nonnull align 8 dereferenceable(8) %254) #21
  br label %260

260:                                              ; preds = %241, %256, %238
  %261 = phi ptr [ %224, %238 ], [ %250, %256 ], [ %250, %241 ]
  %262 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %184) #21
  %263 = icmp eq ptr %262, null
  br i1 %263, label %272, label %264

264:                                              ; preds = %260
  %265 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %184) #21
  %266 = load ptr, ptr %261, align 8, !tbaa !138
  %267 = getelementptr inbounds ptr, ptr %266, i64 43
  %268 = load ptr, ptr %267, align 8
  call void %268(ptr noundef nonnull align 8 dereferenceable(72) %261, ptr noundef %265) #21
  %269 = load ptr, ptr %261, align 8, !tbaa !138
  %270 = getelementptr inbounds ptr, ptr %269, i64 47
  %271 = load ptr, ptr %270, align 8
  call void %271(ptr noundef nonnull align 8 dereferenceable(72) %261, i1 noundef zeroext false) #21
  br label %272

272:                                              ; preds = %264, %260
  %273 = load i8, ptr %89, align 2, !tbaa !164, !range !133, !noundef !134
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %287, label %275

275:                                              ; preds = %272
  %276 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %184) #21
  %277 = load ptr, ptr %261, align 8, !tbaa !138
  %278 = getelementptr inbounds ptr, ptr %277, i64 49
  %279 = load ptr, ptr %278, align 8
  %280 = icmp ult i32 %276, 10
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = zext nneg i32 %276 to i64
  %283 = getelementptr inbounds [10 x ptr], ptr @switch.table._ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb.4, i64 0, i64 %282
  %284 = load ptr, ptr %283, align 8
  br label %285

285:                                              ; preds = %275, %281
  %286 = phi ptr [ %284, %281 ], [ @_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE, %275 ]
  call void %279(ptr noundef nonnull align 8 dereferenceable(72) %261, ptr noundef nonnull %286) #21
  br label %287

287:                                              ; preds = %285, %272, %179
  %288 = load ptr, ptr %184, align 8, !tbaa !138
  %289 = getelementptr inbounds ptr, ptr %288, i64 6
  %290 = load ptr, ptr %289, align 8
  call void %290(ptr noundef nonnull align 8 dereferenceable(56) %184) #21
  %291 = add nuw i32 %180, 1
  %292 = load ptr, ptr %22, align 8, !tbaa !138
  %293 = getelementptr inbounds ptr, ptr %292, i64 13
  %294 = load ptr, ptr %293, align 8
  %295 = call noundef i32 %294(ptr noundef nonnull align 8 dereferenceable(16) %22) #21
  %296 = icmp ult i32 %291, %295
  br i1 %296, label %179, label %297, !llvm.loop !168

297:                                              ; preds = %287, %80, %78
  %298 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %299 = load ptr, ptr %298, align 8, !tbaa !140
  %300 = load ptr, ptr %299, align 8, !tbaa !138
  %301 = getelementptr inbounds ptr, ptr %300, i64 17
  %302 = load ptr, ptr %301, align 8
  %303 = call noundef ptr %302(ptr noundef nonnull align 8 dereferenceable(8) %299, ptr noundef %73) #21
  %304 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %305 = load ptr, ptr %304, align 8, !tbaa !146
  call void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %305, ptr noundef nonnull align 8 dereferenceable(8) %298) #21
  store ptr %73, ptr %298, align 8, !tbaa !140
  %306 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %73, ptr %306, align 8, !tbaa !141
  %307 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 1, ptr %307, align 2, !tbaa !120
  br i1 %6, label %308, label %312

308:                                              ; preds = %297
  %309 = load ptr, ptr %0, align 8, !tbaa !138
  %310 = getelementptr inbounds ptr, ptr %309, i64 6
  %311 = load ptr, ptr %310, align 8
  call void %311(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %7, ptr noundef %3) #21
  br label %312

312:                                              ; preds = %308, %297
  ret void

313:                                              ; preds = %239, %50
  %314 = phi { ptr, i32 } [ %240, %239 ], [ %51, %50 ]
  resume { ptr, i32 } %314
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 align 2 !prof !119 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds ptr, ptr %6, i64 41
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(130) %5) #21
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %3) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(776) %17) #21
  %19 = tail call noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80) %18) #21
  %20 = load ptr, ptr %13, align 8, !tbaa !138
  %21 = getelementptr inbounds ptr, ptr %20, i64 44
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(129) %13, ptr noundef %19) #21
  br label %23

23:                                               ; preds = %15, %2
  %24 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 16
  store ptr %13, ptr %24, align 8, !tbaa !169
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  %26 = load i8, ptr %25, align 8, !tbaa !147, !range !133, !noundef !134
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !137
  %31 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl29createEntityReferenceByParserEPKt(ptr noundef nonnull align 8 dereferenceable(293) %30, ptr noundef %3) #21
  %32 = load ptr, ptr %31, align 8, !tbaa !138
  %33 = getelementptr inbounds ptr, ptr %32, i64 40
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(88) %31, i1 noundef zeroext false, i1 noundef zeroext true) #21
  %35 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !140
  %37 = load ptr, ptr %36, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 17
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull %31) #21
  %41 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull align 8 dereferenceable(8) %35) #21
  store ptr %31, ptr %35, align 8, !tbaa !140
  %43 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %31, ptr %43, align 8, !tbaa !141
  br i1 %14, label %48, label %44

44:                                               ; preds = %28
  %45 = load ptr, ptr %13, align 8, !tbaa !138
  %46 = getelementptr inbounds ptr, ptr %45, i64 52
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(129) %13, ptr noundef nonnull %31) #21
  br label %48

48:                                               ; preds = %28, %44, %23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 align 2 !prof !118 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgYesStringE, ptr noundef %3) #21
  %9 = load ptr, ptr %7, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 25
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(293) %7, i1 noundef zeroext %8) #21
  %12 = load ptr, ptr %6, align 8, !tbaa !137
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  %14 = getelementptr inbounds ptr, ptr %13, i64 27
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(293) %12, ptr noundef %1) #21
  %16 = load ptr, ptr %6, align 8, !tbaa !137
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 23
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(293) %16, ptr noundef %2) #21
  %20 = load ptr, ptr %6, align 8, !tbaa !137
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 21
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(293) %20, ptr noundef %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  store ptr %1, ptr %3, align 8, !tbaa !170
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %7, ptr noundef nonnull %8) #21
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 2, !tbaa !164, !range !133, !noundef !134
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef null) #21
  br label %16

16:                                               ; preds = %9, %13, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 2, !tbaa !164, !range !133, !noundef !134
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %166, label %8

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
  %10 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 72, ptr noundef %9) #21
  tail call void @_ZN11xercesc_2_715DOMTypeInfoImplC1EPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef null, ptr noundef null) #21
  %11 = tail call noundef i32 @_ZNK11xercesc_2_78PSVIItem11getValidityEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #21
  %12 = load ptr, ptr %10, align 8, !tbaa !138
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 0, i32 noundef %11) #21
  %15 = tail call noundef i32 @_ZNK11xercesc_2_78PSVIItem22getValidationAttemptedEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #21
  %16 = load ptr, ptr %10, align 8, !tbaa !138
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 1, i32 noundef %15) #21
  %19 = load ptr, ptr %3, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %8
  %25 = load ptr, ptr %3, align 8, !tbaa !138
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %29 = tail call noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %28) #21
  %30 = load ptr, ptr %10, align 8, !tbaa !138
  %31 = getelementptr inbounds ptr, ptr %30, i64 7
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 2, i32 noundef %29) #21
  %33 = load ptr, ptr %3, align 8, !tbaa !138
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %37 = load ptr, ptr %36, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 7
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(56) %36) #21
  %41 = zext i1 %40 to i32
  %42 = load ptr, ptr %10, align 8, !tbaa !138
  %43 = getelementptr inbounds ptr, ptr %42, i64 7
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 5, i32 noundef %41) #21
  %45 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !137
  %47 = load ptr, ptr %3, align 8, !tbaa !138
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %51 = load ptr, ptr %50, align 8, !tbaa !138
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(56) %50) #21
  %55 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %46, ptr noundef %54) #21
  %56 = load ptr, ptr %10, align 8, !tbaa !138
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 4, ptr noundef %55) #21
  %59 = load ptr, ptr %45, align 8, !tbaa !137
  %60 = load ptr, ptr %3, align 8, !tbaa !138
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %64 = load ptr, ptr %63, align 8, !tbaa !138
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(56) %63) #21
  %68 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %59, ptr noundef %67) #21
  %69 = load ptr, ptr %10, align 8, !tbaa !138
  %70 = getelementptr inbounds ptr, ptr %69, i64 6
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 3, ptr noundef %68) #21
  br label %88

72:                                               ; preds = %8
  %73 = tail call noundef i32 @_ZNK11xercesc_2_78PSVIItem11getValidityEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #21
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load ptr, ptr %10, align 8, !tbaa !138
  %77 = getelementptr inbounds ptr, ptr %76, i64 7
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 2, i32 noundef 15) #21
  %79 = load ptr, ptr %10, align 8, !tbaa !138
  %80 = getelementptr inbounds ptr, ptr %79, i64 7
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 5, i32 noundef 0) #21
  %82 = load ptr, ptr %10, align 8, !tbaa !138
  %83 = getelementptr inbounds ptr, ptr %82, i64 6
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 4, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #21
  %85 = load ptr, ptr %10, align 8, !tbaa !138
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE) #21
  br label %88

88:                                               ; preds = %72, %75, %24
  %89 = load ptr, ptr %3, align 8, !tbaa !138
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %93 = icmp eq ptr %92, null
  br i1 %93, label %134, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %3, align 8, !tbaa !138
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %99 = load ptr, ptr %98, align 8, !tbaa !138
  %100 = getelementptr inbounds ptr, ptr %99, i64 7
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef zeroext i1 %101(ptr noundef nonnull align 8 dereferenceable(128) %98) #21
  %103 = zext i1 %102 to i32
  %104 = load ptr, ptr %10, align 8, !tbaa !138
  %105 = getelementptr inbounds ptr, ptr %104, i64 7
  %106 = load ptr, ptr %105, align 8
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 9, i32 noundef %103) #21
  %107 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %108 = load ptr, ptr %107, align 8, !tbaa !137
  %109 = load ptr, ptr %3, align 8, !tbaa !138
  %110 = getelementptr inbounds ptr, ptr %109, i64 3
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %113 = load ptr, ptr %112, align 8, !tbaa !138
  %114 = getelementptr inbounds ptr, ptr %113, i64 3
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(128) %112) #21
  %117 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %108, ptr noundef %116) #21
  %118 = load ptr, ptr %10, align 8, !tbaa !138
  %119 = getelementptr inbounds ptr, ptr %118, i64 6
  %120 = load ptr, ptr %119, align 8
  tail call void %120(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 8, ptr noundef %117) #21
  %121 = load ptr, ptr %107, align 8, !tbaa !137
  %122 = load ptr, ptr %3, align 8, !tbaa !138
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  %125 = tail call noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %126 = load ptr, ptr %125, align 8, !tbaa !138
  %127 = getelementptr inbounds ptr, ptr %126, i64 2
  %128 = load ptr, ptr %127, align 8
  %129 = tail call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(128) %125) #21
  %130 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %121, ptr noundef %129) #21
  %131 = load ptr, ptr %10, align 8, !tbaa !138
  %132 = getelementptr inbounds ptr, ptr %131, i64 6
  %133 = load ptr, ptr %132, align 8
  tail call void %133(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 7, ptr noundef %130) #21
  br label %134

134:                                              ; preds = %94, %88
  %135 = tail call noundef ptr @_ZN11xercesc_2_711PSVIElement21getElementDeclarationEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = tail call noundef ptr @_ZN11xercesc_2_711PSVIElement21getElementDeclarationEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #21
  %139 = tail call noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getNillableEv(ptr noundef nonnull align 8 dereferenceable(96) %138) #21
  %140 = zext i1 %139 to i32
  %141 = load ptr, ptr %10, align 8, !tbaa !138
  %142 = getelementptr inbounds ptr, ptr %141, i64 7
  %143 = load ptr, ptr %142, align 8
  tail call void %143(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 6, i32 noundef %140) #21
  br label %144

144:                                              ; preds = %137, %134
  %145 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %146 = load ptr, ptr %145, align 8, !tbaa !137
  %147 = tail call noundef ptr @_ZN11xercesc_2_78PSVIItem16getSchemaDefaultEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #21
  %148 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %146, ptr noundef %147) #21
  %149 = load ptr, ptr %10, align 8, !tbaa !138
  %150 = getelementptr inbounds ptr, ptr %149, i64 6
  %151 = load ptr, ptr %150, align 8
  tail call void %151(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 10, ptr noundef %148) #21
  %152 = load ptr, ptr %145, align 8, !tbaa !137
  %153 = tail call noundef ptr @_ZN11xercesc_2_78PSVIItem24getSchemaNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #21
  %154 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %152, ptr noundef %153) #21
  %155 = load ptr, ptr %10, align 8, !tbaa !138
  %156 = getelementptr inbounds ptr, ptr %155, i64 6
  %157 = load ptr, ptr %156, align 8
  tail call void %157(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 11, ptr noundef %154) #21
  %158 = load ptr, ptr %10, align 8, !tbaa !138
  %159 = getelementptr inbounds ptr, ptr %158, i64 7
  %160 = load ptr, ptr %159, align 8
  tail call void %160(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 12, i32 noundef 1) #21
  %161 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %162 = load ptr, ptr %161, align 8, !tbaa !140
  %163 = load ptr, ptr %162, align 8, !tbaa !138
  %164 = getelementptr inbounds ptr, ptr %163, i64 66
  %165 = load ptr, ptr %164, align 8
  tail call void %165(ptr noundef nonnull align 8 dereferenceable(128) %162, ptr noundef nonnull %10) #21
  br label %166

166:                                              ; preds = %144, %4
  %167 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %168 = load ptr, ptr %167, align 8, !tbaa !170
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr %168, align 8, !tbaa !138
  %172 = getelementptr inbounds ptr, ptr %171, i64 2
  %173 = load ptr, ptr %172, align 8
  tail call void %173(ptr noundef nonnull align 8 dereferenceable(8) %168, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  br label %174

174:                                              ; preds = %170, %166
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  br label %12

12:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 2, !tbaa !164, !range !133, !noundef !134
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %171, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZNK11xercesc_2_717PSVIAttributeList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %171, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  br label %14

14:                                               ; preds = %11, %167
  %15 = phi i32 [ 0, %11 ], [ %168, %167 ]
  %16 = tail call noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributePSVIAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %15) #21
  %17 = load ptr, ptr %12, align 8, !tbaa !141
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  %22 = tail call noundef ptr @_ZN11xercesc_2_717PSVIAttributeList28getAttributeNamespaceAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %15) #21
  %23 = tail call noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributeNameAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %15) #21
  %24 = load ptr, ptr %21, align 8, !tbaa !138
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %22, ptr noundef %23) #21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %167, label %29

29:                                               ; preds = %14
  %30 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
  %31 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 72, ptr noundef %30) #21
  tail call void @_ZN11xercesc_2_715DOMTypeInfoImplC1EPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr noundef null, ptr noundef null) #21
  %32 = tail call noundef i32 @_ZNK11xercesc_2_78PSVIItem11getValidityEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #21
  %33 = load ptr, ptr %31, align 8, !tbaa !138
  %34 = getelementptr inbounds ptr, ptr %33, i64 7
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 0, i32 noundef %32) #21
  %36 = tail call noundef i32 @_ZNK11xercesc_2_78PSVIItem22getValidationAttemptedEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #21
  %37 = load ptr, ptr %31, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 7
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 1, i32 noundef %36) #21
  %40 = load ptr, ptr %16, align 8, !tbaa !138
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %87, label %45

45:                                               ; preds = %29
  %46 = load ptr, ptr %31, align 8, !tbaa !138
  %47 = getelementptr inbounds ptr, ptr %46, i64 7
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 2, i32 noundef 16) #21
  %49 = load ptr, ptr %16, align 8, !tbaa !138
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %53 = load ptr, ptr %52, align 8, !tbaa !138
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef zeroext i1 %55(ptr noundef nonnull align 8 dereferenceable(56) %52) #21
  %57 = zext i1 %56 to i32
  %58 = load ptr, ptr %31, align 8, !tbaa !138
  %59 = getelementptr inbounds ptr, ptr %58, i64 7
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 5, i32 noundef %57) #21
  %61 = load ptr, ptr %13, align 8, !tbaa !137
  %62 = load ptr, ptr %16, align 8, !tbaa !138
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %66 = load ptr, ptr %65, align 8, !tbaa !138
  %67 = getelementptr inbounds ptr, ptr %66, i64 3
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(56) %65) #21
  %70 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %61, ptr noundef %69) #21
  %71 = load ptr, ptr %31, align 8, !tbaa !138
  %72 = getelementptr inbounds ptr, ptr %71, i64 6
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 4, ptr noundef %70) #21
  %74 = load ptr, ptr %13, align 8, !tbaa !137
  %75 = load ptr, ptr %16, align 8, !tbaa !138
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %79 = load ptr, ptr %78, align 8, !tbaa !138
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(56) %78) #21
  %83 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %74, ptr noundef %82) #21
  %84 = load ptr, ptr %31, align 8, !tbaa !138
  %85 = getelementptr inbounds ptr, ptr %84, i64 6
  %86 = load ptr, ptr %85, align 8
  tail call void %86(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 3, ptr noundef %83) #21
  br label %103

87:                                               ; preds = %29
  %88 = tail call noundef i32 @_ZNK11xercesc_2_78PSVIItem11getValidityEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #21
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load ptr, ptr %31, align 8, !tbaa !138
  %92 = getelementptr inbounds ptr, ptr %91, i64 7
  %93 = load ptr, ptr %92, align 8
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 2, i32 noundef 16) #21
  %94 = load ptr, ptr %31, align 8, !tbaa !138
  %95 = getelementptr inbounds ptr, ptr %94, i64 7
  %96 = load ptr, ptr %95, align 8
  tail call void %96(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 5, i32 noundef 0) #21
  %97 = load ptr, ptr %31, align 8, !tbaa !138
  %98 = getelementptr inbounds ptr, ptr %97, i64 6
  %99 = load ptr, ptr %98, align 8
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 4, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #21
  %100 = load ptr, ptr %31, align 8, !tbaa !138
  %101 = getelementptr inbounds ptr, ptr %100, i64 6
  %102 = load ptr, ptr %101, align 8
  tail call void %102(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #21
  br label %103

103:                                              ; preds = %87, %90, %45
  %104 = load ptr, ptr %16, align 8, !tbaa !138
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %108 = icmp eq ptr %107, null
  br i1 %108, label %148, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %16, align 8, !tbaa !138
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %114 = load ptr, ptr %113, align 8, !tbaa !138
  %115 = getelementptr inbounds ptr, ptr %114, i64 7
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef zeroext i1 %116(ptr noundef nonnull align 8 dereferenceable(128) %113) #21
  %118 = zext i1 %117 to i32
  %119 = load ptr, ptr %31, align 8, !tbaa !138
  %120 = getelementptr inbounds ptr, ptr %119, i64 7
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 9, i32 noundef %118) #21
  %122 = load ptr, ptr %13, align 8, !tbaa !137
  %123 = load ptr, ptr %16, align 8, !tbaa !138
  %124 = getelementptr inbounds ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %127 = load ptr, ptr %126, align 8, !tbaa !138
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(128) %126) #21
  %131 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %122, ptr noundef %130) #21
  %132 = load ptr, ptr %31, align 8, !tbaa !138
  %133 = getelementptr inbounds ptr, ptr %132, i64 6
  %134 = load ptr, ptr %133, align 8
  tail call void %134(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 8, ptr noundef %131) #21
  %135 = load ptr, ptr %13, align 8, !tbaa !137
  %136 = load ptr, ptr %16, align 8, !tbaa !138
  %137 = getelementptr inbounds ptr, ptr %136, i64 3
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(96) %16) #21
  %140 = load ptr, ptr %139, align 8, !tbaa !138
  %141 = getelementptr inbounds ptr, ptr %140, i64 2
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(128) %139) #21
  %144 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %135, ptr noundef %143) #21
  %145 = load ptr, ptr %31, align 8, !tbaa !138
  %146 = getelementptr inbounds ptr, ptr %145, i64 6
  %147 = load ptr, ptr %146, align 8
  tail call void %147(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 7, ptr noundef %144) #21
  br label %148

148:                                              ; preds = %109, %103
  %149 = load ptr, ptr %13, align 8, !tbaa !137
  %150 = tail call noundef ptr @_ZN11xercesc_2_78PSVIItem16getSchemaDefaultEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #21
  %151 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %149, ptr noundef %150) #21
  %152 = load ptr, ptr %31, align 8, !tbaa !138
  %153 = getelementptr inbounds ptr, ptr %152, i64 6
  %154 = load ptr, ptr %153, align 8
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 10, ptr noundef %151) #21
  %155 = load ptr, ptr %13, align 8, !tbaa !137
  %156 = tail call noundef ptr @_ZN11xercesc_2_78PSVIItem24getSchemaNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #21
  %157 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %155, ptr noundef %156) #21
  %158 = load ptr, ptr %31, align 8, !tbaa !138
  %159 = getelementptr inbounds ptr, ptr %158, i64 6
  %160 = load ptr, ptr %159, align 8
  tail call void %160(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 11, ptr noundef %157) #21
  %161 = load ptr, ptr %31, align 8, !tbaa !138
  %162 = getelementptr inbounds ptr, ptr %161, i64 7
  %163 = load ptr, ptr %162, align 8
  tail call void %163(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 12, i32 noundef 1) #21
  %164 = load ptr, ptr %27, align 8, !tbaa !138
  %165 = getelementptr inbounds ptr, ptr %164, i64 49
  %166 = load ptr, ptr %165, align 8
  tail call void %166(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull %31) #21
  br label %167

167:                                              ; preds = %148, %14
  %168 = add nuw i32 %15, 1
  %169 = tail call noundef i32 @_ZNK11xercesc_2_717PSVIAttributeList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #21
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %14, label %171, !llvm.loop !171

171:                                              ; preds = %167, %8, %4
  %172 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %173 = load ptr, ptr %172, align 8, !tbaa !170
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr %173, align 8, !tbaa !138
  %177 = getelementptr inbounds ptr, ptr %176, i64 4
  %178 = load ptr, ptr %177, align 8
  tail call void %178(ptr noundef nonnull align 8 dereferenceable(8) %173, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  br label %179

179:                                              ; preds = %175, %171
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #2 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %6) #21
  br i1 %7, label %8, label %83

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  br i1 %12, label %13, label %83

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = load ptr, ptr %2, align 8, !tbaa !138
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(72) %2) #21
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %19) #21
  %20 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #21
  switch i32 %20, label %67 [
    i32 0, label %21
    i32 1, label %24
    i32 2, label %27
    i32 3, label %30
    i32 4, label %33
    i32 5, label %36
    i32 6, label %39
    i32 7, label %42
    i32 8, label %45
    i32 9, label %48
  ]

21:                                               ; preds = %13
  %22 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %22, i16 noundef zeroext 32) #21
  %23 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgCDATAStringE) #21
  br label %67

24:                                               ; preds = %13
  %25 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %25, i16 noundef zeroext 32) #21
  %26 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgIDStringE) #21
  br label %67

27:                                               ; preds = %13
  %28 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %28, i16 noundef zeroext 32) #21
  %29 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgIDRefStringE) #21
  br label %67

30:                                               ; preds = %13
  %31 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %31, i16 noundef zeroext 32) #21
  %32 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIDRefsStringE) #21
  br label %67

33:                                               ; preds = %13
  %34 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %34, i16 noundef zeroext 32) #21
  %35 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE) #21
  br label %67

36:                                               ; preds = %13
  %37 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %37, i16 noundef zeroext 32) #21
  %38 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgEntitiesStringE) #21
  br label %67

39:                                               ; preds = %13
  %40 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %40, i16 noundef zeroext 32) #21
  %41 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE) #21
  br label %67

42:                                               ; preds = %13
  %43 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %43, i16 noundef zeroext 32) #21
  %44 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %44, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNmTokensStringE) #21
  br label %67

45:                                               ; preds = %13
  %46 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %46, i16 noundef zeroext 32) #21
  %47 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE) #21
  br label %67

48:                                               ; preds = %13
  %49 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %49, i16 noundef zeroext 32) #21
  %50 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #21
  %51 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %50) #21
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %54, i16 noundef zeroext 40) #21
  %55 = zext nneg i32 %51 to i64
  br label %58

56:                                               ; preds = %58
  %57 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %57, i16 noundef zeroext 41) #21
  br label %67

58:                                               ; preds = %53, %58
  %59 = phi i64 [ 0, %53 ], [ %65, %58 ]
  %60 = getelementptr inbounds i16, ptr %50, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !135
  %62 = icmp eq i16 %61, 32
  %63 = load ptr, ptr %14, align 8, !tbaa !172
  %64 = select i1 %62, i16 124, i16 %61
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %63, i16 noundef zeroext %64) #21
  %65 = add nuw nsw i64 %59, 1
  %66 = icmp eq i64 %65, %55
  br i1 %66, label %56, label %58, !llvm.loop !173

67:                                               ; preds = %48, %56, %13, %45, %42, %39, %36, %33, %30, %27, %24, %21
  %68 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #21
  switch i32 %68, label %75 [
    i32 2, label %71
    i32 4, label %69
    i32 1, label %70
  ]

69:                                               ; preds = %67
  br label %71

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %67, %69, %70
  %72 = phi ptr [ @_ZN11xercesc_2_76XMLUni13fgFixedStringE, %70 ], [ @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, %69 ], [ @_ZN11xercesc_2_76XMLUni16fgRequiredStringE, %67 ]
  %73 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %73, i16 noundef zeroext 32) #21
  %74 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %74, ptr noundef nonnull %72) #21
  br label %75

75:                                               ; preds = %71, %67
  %76 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #21
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %79, i16 noundef zeroext 32) #21
  %80 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %80, i16 noundef zeroext 34) #21
  %81 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef nonnull %76) #21
  %82 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %82, i16 noundef zeroext 34) #21
  br label %83

83:                                               ; preds = %75, %78, %8, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %4) #21
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE) #21
  %11 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %11, i16 noundef zeroext 32) #21
  %12 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull %1) #21
  %13 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %13, i16 noundef zeroext 32) #21
  %14 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %14, i16 noundef zeroext 45) #21
  %15 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %15, i16 noundef zeroext 45) #21
  %16 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %16, i16 noundef zeroext 62) #21
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #2 align 2 !prof !119 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  %10 = load ptr, ptr %8, align 8, !tbaa !138
  %11 = getelementptr inbounds ptr, ptr %10, i64 38
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %9, ptr noundef %2, ptr noundef %3) #21
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  store ptr %13, ptr %14, align 8, !tbaa !143
  %15 = load ptr, ptr %7, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293) %15, ptr noundef %13) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5) #21
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %9, i16 noundef zeroext 60) #21
  %10 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %10, i16 noundef zeroext 63) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %1) #21
  %12 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %12, i16 noundef zeroext 32) #21
  %13 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef %2) #21
  %14 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %14, i16 noundef zeroext 63) #21
  %15 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %15, i16 noundef zeroext 62) #21
  br label %16

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, i32 %2) unnamed_addr #2 align 2 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5) #21
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %1) #21
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #2 align 2 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5) #21
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %9, i16 noundef zeroext 60) #21
  %10 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %10, i16 noundef zeroext 33) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgElemStringE) #21
  %12 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %12, i16 noundef zeroext 32) #21
  %13 = load ptr, ptr %8, align 8, !tbaa !172
  %14 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef %14) #21
  %15 = load ptr, ptr %1, align 8, !tbaa !138
  %16 = getelementptr inbounds ptr, ptr %15, i64 15
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %21, i16 noundef zeroext 32) #21
  %22 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull %18) #21
  br label %23

23:                                               ; preds = %20, %7
  %24 = load ptr, ptr %8, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %24, i16 noundef zeroext 62) #21
  br label %25

25:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca [1000 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %6) #21
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %10, i16 noundef zeroext 62) #21
  br label %11

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr %1, align 8, !tbaa !138
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  br i1 %15, label %16, label %160

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr %19(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  %21 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  %23 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  %24 = load ptr, ptr %22, align 8, !tbaa !138
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(293) %22, ptr noundef %23) #21
  %28 = load ptr, ptr %20, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 13
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(16) %20) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %16
  %34 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %35 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %36 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  br label %48

37:                                               ; preds = %149, %16
  %38 = load ptr, ptr %5, align 8, !tbaa !143
  %39 = load ptr, ptr %38, align 8, !tbaa !138
  %40 = getelementptr inbounds ptr, ptr %39, i64 50
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(130) %38) #21
  %43 = load ptr, ptr %42, align 8, !tbaa !138
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %27) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %160, label %156

48:                                               ; preds = %33, %149
  %49 = phi i32 [ 0, %33 ], [ %150, %149 ]
  %50 = load ptr, ptr %20, align 8, !tbaa !138
  %51 = getelementptr inbounds ptr, ptr %50, i64 14
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef nonnull align 8 dereferenceable(56) ptr %52(ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef %49) #21
  %54 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %53) #21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %149, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %34, align 8, !tbaa !145
  %58 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %57) #21
  br i1 %58, label %59, label %121

59:                                               ; preds = %56
  %60 = load ptr, ptr %53, align 8, !tbaa !138
  %61 = getelementptr inbounds ptr, ptr %60, i64 5
  %62 = load ptr, ptr %61, align 8
  %63 = call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(56) %53) #21
  %64 = call noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %63) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %35) #21
  %65 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  %66 = icmp sgt i32 %64, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %4) #22
  %68 = icmp ugt i32 %64, 999
  br i1 %68, label %69, label %80

69:                                               ; preds = %67
  %70 = load ptr, ptr %36, align 8, !tbaa !149
  %71 = shl nuw i32 %64, 1
  %72 = add i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = load ptr, ptr %70, align 8, !tbaa !138
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %70, i64 noundef %73) #21
          to label %80 unwind label %78

78:                                               ; preds = %83, %87, %80, %69
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %4) #22
  br label %119

80:                                               ; preds = %67, %69
  %81 = phi ptr [ %77, %69 ], [ %4, %67 ]
  %82 = load ptr, ptr %36, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %81, ptr noundef %63, i32 noundef 0, i32 noundef %64, ptr noundef %82) #21
          to label %83 unwind label %78

83:                                               ; preds = %80
  %84 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %81, ptr noundef nonnull @_ZZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS) #21
  %85 = select i1 %84, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr noundef nonnull %85) #21
          to label %86 unwind label %78

86:                                               ; preds = %83
  br i1 %68, label %87, label %92

87:                                               ; preds = %86
  %88 = load ptr, ptr %36, align 8, !tbaa !149
  %89 = load ptr, ptr %88, align 8, !tbaa !138
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %81) #21
          to label %92 unwind label %78

92:                                               ; preds = %87, %86
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %4) #22
  br label %98

93:                                               ; preds = %59
  %94 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %63, ptr noundef nonnull @_ZZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS) #21
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #21
          to label %98 unwind label %96

96:                                               ; preds = %98, %95
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %119

98:                                               ; preds = %93, %95, %92
  %99 = load ptr, ptr %21, align 8, !tbaa !137
  %100 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %65) #21
  %101 = load ptr, ptr %99, align 8, !tbaa !138
  %102 = getelementptr inbounds ptr, ptr %101, i64 17
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(293) %99, ptr noundef %100, ptr noundef %63) #21
          to label %105 unwind label %96

105:                                              ; preds = %98
  %106 = load ptr, ptr %27, align 8, !tbaa !138
  %107 = getelementptr inbounds ptr, ptr %106, i64 52
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(96) %27, ptr noundef %104) #21
          to label %110 unwind label %116

110:                                              ; preds = %105
  %111 = icmp eq ptr %109, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %109, align 8, !tbaa !138
  %114 = getelementptr inbounds ptr, ptr %113, i64 39
  %115 = load ptr, ptr %114, align 8
  invoke void %115(ptr noundef nonnull align 8 dereferenceable(8) %109) #21
          to label %118 unwind label %116

116:                                              ; preds = %112, %105
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %119

118:                                              ; preds = %112, %110
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %140

119:                                              ; preds = %116, %96, %78
  %120 = phi { ptr, i32 } [ %117, %116 ], [ %97, %96 ], [ %79, %78 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  resume { ptr, i32 } %120

121:                                              ; preds = %56
  %122 = load ptr, ptr %21, align 8, !tbaa !137
  %123 = load ptr, ptr %53, align 8, !tbaa !138
  %124 = getelementptr inbounds ptr, ptr %123, i64 5
  %125 = load ptr, ptr %124, align 8
  %126 = call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(56) %53) #21
  %127 = load ptr, ptr %122, align 8, !tbaa !138
  %128 = getelementptr inbounds ptr, ptr %127, i64 9
  %129 = load ptr, ptr %128, align 8
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(293) %122, ptr noundef %126) #21
  %131 = load ptr, ptr %27, align 8, !tbaa !138
  %132 = getelementptr inbounds ptr, ptr %131, i64 45
  %133 = load ptr, ptr %132, align 8
  %134 = call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(96) %27, ptr noundef %130) #21
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %121
  %137 = load ptr, ptr %134, align 8, !tbaa !138
  %138 = getelementptr inbounds ptr, ptr %137, i64 39
  %139 = load ptr, ptr %138, align 8
  call void %139(ptr noundef nonnull align 8 dereferenceable(8) %134) #21
  br label %140

140:                                              ; preds = %121, %136, %118
  %141 = phi ptr [ %104, %118 ], [ %130, %136 ], [ %130, %121 ]
  %142 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %53) #21
  %143 = load ptr, ptr %141, align 8, !tbaa !138
  %144 = getelementptr inbounds ptr, ptr %143, i64 43
  %145 = load ptr, ptr %144, align 8
  call void %145(ptr noundef nonnull align 8 dereferenceable(72) %141, ptr noundef %142) #21
  %146 = load ptr, ptr %141, align 8, !tbaa !138
  %147 = getelementptr inbounds ptr, ptr %146, i64 47
  %148 = load ptr, ptr %147, align 8
  call void %148(ptr noundef nonnull align 8 dereferenceable(72) %141, i1 noundef zeroext false) #21
  br label %149

149:                                              ; preds = %48, %140
  %150 = add nuw i32 %49, 1
  %151 = load ptr, ptr %20, align 8, !tbaa !138
  %152 = getelementptr inbounds ptr, ptr %151, i64 13
  %153 = load ptr, ptr %152, align 8
  %154 = call noundef i32 %153(ptr noundef nonnull align 8 dereferenceable(16) %20) #21
  %155 = icmp ult i32 %150, %154
  br i1 %155, label %48, label %37, !llvm.loop !174

156:                                              ; preds = %37
  %157 = load ptr, ptr %46, align 8, !tbaa !138
  %158 = getelementptr inbounds ptr, ptr %157, i64 39
  %159 = load ptr, ptr %158, align 8
  call void %159(ptr noundef nonnull align 8 dereferenceable(8) %46) #21
  br label %160

160:                                              ; preds = %37, %156, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #2 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #21
  %7 = load ptr, ptr %3, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 48
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(130) %3, ptr noundef %6) #21
  %10 = load ptr, ptr %2, align 8, !tbaa !143
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %10, i64 0, i32 11
  store i8 0, ptr %11, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #2 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  %8 = load ptr, ptr %6, align 8, !tbaa !138
  %9 = getelementptr inbounds ptr, ptr %8, i64 36
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %7) #21
  %12 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  %13 = load ptr, ptr %11, align 8, !tbaa !138
  %14 = getelementptr inbounds ptr, ptr %13, i64 50
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef %12) #21
  %16 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  %17 = load ptr, ptr %11, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 51
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef %16) #21
  %20 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  %21 = load ptr, ptr %11, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 49
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef %20) #21
  %24 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  %25 = load ptr, ptr %11, align 8, !tbaa !138
  %26 = getelementptr inbounds ptr, ptr %25, i64 54
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef %24) #21
  %28 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !143
  %30 = load ptr, ptr %29, align 8, !tbaa !138
  %31 = getelementptr inbounds ptr, ptr %30, i64 41
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(130) %29) #21
  %34 = load ptr, ptr %33, align 8, !tbaa !138
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %11) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %4
  %40 = load ptr, ptr %37, align 8, !tbaa !138
  %41 = getelementptr inbounds ptr, ptr %40, i64 39
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(129) %37) #21
  br label %43

43:                                               ; preds = %39, %4
  %44 = load ptr, ptr %28, align 8, !tbaa !143
  %45 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %44) #21
  br i1 %45, label %46, label %100

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %48 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %48, i16 noundef zeroext 60) #21
  %49 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %49, i16 noundef zeroext 33) #21
  %50 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %50, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE) #21
  %51 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %51, i16 noundef zeroext 32) #21
  %52 = load ptr, ptr %47, align 8, !tbaa !172
  %53 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %52, ptr noundef %53) #21
  %54 = load ptr, ptr %11, align 8, !tbaa !138
  %55 = getelementptr inbounds ptr, ptr %54, i64 40
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(129) %11) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %46
  %60 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %60, i16 noundef zeroext 32) #21
  %61 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE) #21
  %62 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %62, i16 noundef zeroext 32) #21
  %63 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %63, i16 noundef zeroext 34) #21
  %64 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %64, ptr noundef nonnull %57) #21
  %65 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %65, i16 noundef zeroext 34) #21
  br label %66

66:                                               ; preds = %59, %46
  %67 = load ptr, ptr %11, align 8, !tbaa !138
  %68 = getelementptr inbounds ptr, ptr %67, i64 41
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(129) %11) #21
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %73, i16 noundef zeroext 32) #21
  %74 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %74, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE) #21
  %75 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %75, i16 noundef zeroext 32) #21
  %76 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %76, i16 noundef zeroext 34) #21
  %77 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %77, ptr noundef nonnull %70) #21
  %78 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %78, i16 noundef zeroext 34) #21
  br label %79

79:                                               ; preds = %72, %66
  %80 = load ptr, ptr %11, align 8, !tbaa !138
  %81 = getelementptr inbounds ptr, ptr %80, i64 42
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(129) %11) #21
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %86, i16 noundef zeroext 32) #21
  %87 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %87, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE) #21
  %88 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %88, i16 noundef zeroext 32) #21
  %89 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %89, ptr noundef nonnull %83) #21
  br label %90

90:                                               ; preds = %85, %79
  %91 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #21
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %94, i16 noundef zeroext 32) #21
  %95 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %95, i16 noundef zeroext 34) #21
  %96 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %96, ptr noundef nonnull %91) #21
  %97 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %97, i16 noundef zeroext 34) #21
  br label %98

98:                                               ; preds = %93, %90
  %99 = load ptr, ptr %47, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %99, i16 noundef zeroext 62) #21
  br label %100

100:                                              ; preds = %98, %43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  store ptr null, ptr %2, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #2 align 2 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #21
  %7 = load ptr, ptr %5, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 39
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %6) #21
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #21
  %12 = load ptr, ptr %10, align 8, !tbaa !138
  %13 = getelementptr inbounds ptr, ptr %12, i64 42
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %11) #21
  %15 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #21
  %16 = load ptr, ptr %10, align 8, !tbaa !138
  %17 = getelementptr inbounds ptr, ptr %16, i64 43
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %15) #21
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #21
  %20 = load ptr, ptr %10, align 8, !tbaa !138
  %21 = getelementptr inbounds ptr, ptr %20, i64 44
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %19) #21
  %23 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !143
  %25 = load ptr, ptr %24, align 8, !tbaa !138
  %26 = getelementptr inbounds ptr, ptr %25, i64 42
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(130) %24) #21
  %29 = load ptr, ptr %28, align 8, !tbaa !138
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %10) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = load ptr, ptr %32, align 8, !tbaa !138
  %36 = getelementptr inbounds ptr, ptr %35, i64 39
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %32) #21
  br label %38

38:                                               ; preds = %34, %3
  %39 = load ptr, ptr %23, align 8, !tbaa !143
  %40 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %39) #21
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %43 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %43, i16 noundef zeroext 60) #21
  %44 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %44, i16 noundef zeroext 33) #21
  %45 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE) #21
  %46 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %46, i16 noundef zeroext 32) #21
  %47 = load ptr, ptr %42, align 8, !tbaa !172
  %48 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #21
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef %48) #21
  %49 = load ptr, ptr %10, align 8, !tbaa !138
  %50 = getelementptr inbounds ptr, ptr %49, i64 40
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(56) %10) #21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %41
  %55 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %55, i16 noundef zeroext 32) #21
  %56 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE) #21
  %57 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %57, i16 noundef zeroext 32) #21
  %58 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %58, i16 noundef zeroext 34) #21
  %59 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull %52) #21
  %60 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %60, i16 noundef zeroext 34) #21
  br label %61

61:                                               ; preds = %54, %41
  %62 = load ptr, ptr %10, align 8, !tbaa !138
  %63 = getelementptr inbounds ptr, ptr %62, i64 41
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(56) %10) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %68, i16 noundef zeroext 32) #21
  %69 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %69, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE) #21
  %70 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %70, i16 noundef zeroext 32) #21
  %71 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %71, i16 noundef zeroext 34) #21
  %72 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %72, ptr noundef nonnull %65) #21
  %73 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %73, i16 noundef zeroext 34) #21
  br label %74

74:                                               ; preds = %67, %61
  %75 = load ptr, ptr %42, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %75, i16 noundef zeroext 62) #21
  br label %76

76:                                               ; preds = %74, %38
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %4) #21
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 60) #21
  %9 = load ptr, ptr %7, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %9, i16 noundef zeroext 33) #21
  %10 = load ptr, ptr %7, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgAttListStringE) #21
  %11 = load ptr, ptr %7, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %11, i16 noundef zeroext 32) #21
  %12 = load ptr, ptr %7, align 8, !tbaa !172
  %13 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %13) #21
  br label %14

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #5 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %3, i64 0, i32 11
  store i8 1, ptr %4, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !138
  %9 = getelementptr inbounds ptr, ptr %8, i64 48
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1) #21
  %11 = load ptr, ptr %4, align 8, !tbaa !169
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = getelementptr inbounds ptr, ptr %12, i64 46
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %2) #21
  br label %15

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds ptr, ptr %6, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %1, ptr noundef %2) #21
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #23
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn8_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #7 align 2 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD0Ev(ptr nonnull align 8 poison) #23
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #23
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn16_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #7 align 2 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD0Ev(ptr nonnull align 8 poison) #23
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #23
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #7 align 2 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD0Ev(ptr nonnull align 8 poison) #23
  unreachable
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #8 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext poison) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #8 align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(200) %7, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext poison, i1 zeroext poison) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef %1, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) unnamed_addr #8 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef %1, i32 poison) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #8 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext poison) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200) %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #3 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #8 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext poison, i1 zeroext poison) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr nocapture noundef writeonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(200) %2) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #8 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext poison) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200) %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #3 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef %1, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #23
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #7 align 2 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD0Ev(ptr nonnull align 8 poison) #23
  unreachable
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #8 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #8 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #8 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #10

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #22
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_711PSVIHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !138
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 2, i64 2), ptr %7, align 8, !tbaa !138
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 3, i64 2), ptr %8, align 8, !tbaa !138
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 4, i64 2), ptr %9, align 8, !tbaa !138
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %10, align 8, !tbaa !180
  %11 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  store i8 1, ptr %11, align 4, !tbaa !142
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  store i8 0, ptr %12, align 1, !tbaa !181
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  store i8 0, ptr %13, align 2, !tbaa !164
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %14, i8 0, i64 88, i1 false)
  store ptr %1, ptr %15, align 8, !tbaa !182
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  store ptr %2, ptr %16, align 8, !tbaa !149
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 25
  store ptr %3, ptr %17, align 8, !tbaa !183
  %18 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  invoke void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef %2) #21
          to label %19 unwind label %24

19:                                               ; preds = %4
  %20 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %18) #21
          to label %21 unwind label %28

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  store ptr %20, ptr %22, align 8, !tbaa !184
  %23 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  store ptr null, ptr %23, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv to i64), i64 0) #21
  invoke void @_ZN11xercesc_2_717AbstractDOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
          to label %45 unwind label %32

24:                                               ; preds = %4
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  br label %52

28:                                               ; preds = %19
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = extractvalue { ptr, i32 } %29, 0
  %31 = extractvalue { ptr, i32 } %29, 1
  br label %49

32:                                               ; preds = %21
  %33 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = extractvalue { ptr, i32 } %33, 1
  %36 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #22
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = call ptr @__cxa_begin_catch(ptr %34) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #21
  invoke void @__cxa_rethrow() #24
          to label %60 unwind label %40

40:                                               ; preds = %38
  %41 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %42 unwind label %57

42:                                               ; preds = %40
  %43 = extractvalue { ptr, i32 } %41, 1
  %44 = extractvalue { ptr, i32 } %41, 0
  br label %46

45:                                               ; preds = %21
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #21
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void

46:                                               ; preds = %42, %32
  %47 = phi i32 [ %43, %42 ], [ %35, %32 ]
  %48 = phi ptr [ %44, %42 ], [ %34, %32 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  br label %49

49:                                               ; preds = %46, %28
  %50 = phi i32 [ %47, %46 ], [ %31, %28 ]
  %51 = phi ptr [ %48, %46 ], [ %30, %28 ]
  call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #23
  br label %52

52:                                               ; preds = %49, %24
  %53 = phi i32 [ %50, %49 ], [ %27, %24 ]
  %54 = phi ptr [ %51, %49 ], [ %26, %24 ]
  call void @_ZN11xercesc_2_711PSVIHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #23
  call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  %55 = insertvalue { ptr, i32 } poison, ptr %54, 0
  %56 = insertvalue { ptr, i32 } %55, i32 %53, 1
  resume { ptr, i32 } %56

57:                                               ; preds = %40
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #20
  unreachable

60:                                               ; preds = %38
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !185 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711PSVIHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !118 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711PSVIHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #12

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) #2 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !144

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !138
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #23
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %11 = load i8, ptr %10, align 1, !tbaa !181, !range !133, !noundef !134
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21, !prof !144

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !188

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !138
  %19 = getelementptr inbounds ptr, ptr %18, i64 78
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(293) %15) #21
  br label %21

21:                                               ; preds = %17, %13, %9
  %22 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %23) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #23
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !145
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !138
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(776) %28) #23
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %36 = load ptr, ptr %35, align 8, !tbaa !189
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %36) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %36) #23
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %41 = load ptr, ptr %40, align 8, !tbaa !149
  %42 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !148
  %44 = load ptr, ptr %41, align 8, !tbaa !138
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %43) #21
  %47 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  %48 = load ptr, ptr %47, align 8, !tbaa !182
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50, !prof !144

50:                                               ; preds = %39
  %51 = load ptr, ptr %48, align 8, !tbaa !138
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(40) %48) #23
  br label %54

54:                                               ; preds = %50, %39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !179 {
  store ptr %1, ptr %0, align 8, !tbaa !190
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !192
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3) #21
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = load ptr, ptr %2, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7) #21
          to label %8 unwind label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  store ptr %4, ptr %9, align 8, !tbaa !189
  %10 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #21
  %11 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 22
  store ptr %10, ptr %11, align 8, !tbaa !193
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = load ptr, ptr %9, align 8, !tbaa !189
  %15 = load ptr, ptr %2, align 8, !tbaa !149
  %16 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %14, ptr noundef %15) #21
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  store ptr %16, ptr %17, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull %0) #21
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  %19 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef nonnull %19) #21
  %20 = load ptr, ptr %17, align 8, !tbaa !145
  %21 = load ptr, ptr %11, align 8, !tbaa !193
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %21) #21
  %22 = load ptr, ptr %2, align 8, !tbaa !149
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %22) #21
  %24 = load ptr, ptr %2, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 64, ptr noundef %24, i1 noundef zeroext false) #21
          to label %25 unwind label %29

25:                                               ; preds = %8
  %26 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  store ptr %23, ptr %26, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
  ret void

27:                                               ; preds = %1
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  br label %31

29:                                               ; preds = %8
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #23
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %32
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !190
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !194

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !192
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !188

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !192
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !138
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !134
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(200) %11) #21
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #20
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !138
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !138
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !138
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  tail call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  tail call void @_ZN11xercesc_2_711PSVIHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  tail call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #23
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  tail call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #20
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !195 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  store ptr %1, ptr %3, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !207
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 !prof !118 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 1, !range !133
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %25, !prof !208

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !187
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %15) #21
  %17 = load ptr, ptr %14, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 10, i1 noundef zeroext true, ptr noundef %17) #21
          to label %18 unwind label %20

18:                                               ; preds = %13
  store ptr %16, ptr %10, align 8, !tbaa !187
  %19 = load ptr, ptr %2, align 8, !tbaa !137
  br label %22

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #23
  resume { ptr, i32 } %21

22:                                               ; preds = %18, %9
  %23 = phi ptr [ %19, %18 ], [ %3, %9 ]
  %24 = phi ptr [ %16, %18 ], [ %11, %9 ]
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef %23) #21
  br label %25

25:                                               ; preds = %22, %1
  store ptr null, ptr %2, align 8, !tbaa !137
  %26 = load ptr, ptr %0, align 8, !tbaa !138
  %27 = getelementptr inbounds ptr, ptr %26, i64 29
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
  %29 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %30 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %30, align 1, !tbaa !209
  %31 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %31, align 2, !tbaa !120
  store i8 0, ptr %5, align 1, !tbaa !181
  %32 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %33 = load ptr, ptr %32, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %33) #21
  %34 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %35 = load ptr, ptr %34, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %35) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 !prof !186 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store i8 %5, ptr %0, align 8, !tbaa !210
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !212
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !213
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !214
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !215
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !138
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #21
  store ptr %15, ptr %8, align 8, !tbaa !214
  %16 = load i32, ptr %7, align 8, !tbaa !213
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = load ptr, ptr %3, align 8, !tbaa !138
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #21
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !216
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !218
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !184
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !218
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !219 {
  store i32 0, ptr %0, align 8, !tbaa !220
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  store i16 0, ptr %3, align 2, !tbaa !135
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !119 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !222
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !218
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !223
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !216
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !224
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !138
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #21
  store ptr %16, ptr %9, align 8, !tbaa !216
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !216
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !184
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !225
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !222, !range !133, !noundef !134
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !218
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !216
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(293) %16) #23
  %22 = load i32, ptr %6, align 4, !tbaa !218
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !226

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !224
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !216
  %33 = load ptr, ptr %30, align 8, !tbaa !138
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !218
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !224
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !222, !range !133, !noundef !134
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !216
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(293) %25) #23
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !216
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !218
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !218
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !222, !range !133, !noundef !134
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !216
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !184
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !138
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(293) %17) #23
  %23 = load ptr, ptr %7, align 8, !tbaa !216
  %24 = load i32, ptr %2, align 4, !tbaa !218
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !184
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !227
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !218
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !224
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !222, !range !133, !noundef !134
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !184
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !138
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(293) %22) #23
  %28 = load i32, ptr %3, align 4, !tbaa !218
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
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !216
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !216
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !184
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !184
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !228

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !184
  store i32 %31, ptr %3, align 4, !tbaa !218
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !218
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !218
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !222, !range !133, !noundef !134
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !138
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(293) %15) #23
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !222, !range !133, !noundef !134
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !218
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !216
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(293) %16) #23
  %22 = load i32, ptr %6, align 4, !tbaa !218
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !229

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !224
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !216
  %33 = load ptr, ptr %30, align 8, !tbaa !138
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #12

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !119 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !218
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !223
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !224
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #21
  %21 = load i32, ptr %3, align 4, !tbaa !218
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !184
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !216
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !184
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !184
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !233

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !224
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !216
  %49 = load ptr, ptr %46, align 8, !tbaa !138
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #21
  store ptr %20, ptr %47, align 8, !tbaa !216
  store i32 %12, ptr %6, align 8, !tbaa !223
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !234 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(200) %0) #4 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %2, align 1, !tbaa !209
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 1, !tbaa !209, !range !133, !noundef !134
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 207, i32 noundef 43, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(40) %14) #21
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %22 = load i8, ptr %21, align 1, !tbaa !181, !range !133, !noundef !134
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !138
  %30 = getelementptr inbounds ptr, ptr %29, i64 78
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(293) %26) #21
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  store ptr null, ptr %33, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !119 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser17isDocumentAdoptedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 1, !tbaa !181, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #17 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  store i8 1, ptr %2, align 1, !tbaa !181
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !235 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xercesc_2_717AbstractDOMParser12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !237 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !238, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getGenerateSyntheticAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !239 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %3 = load i8, ptr %2, align 1, !tbaa !240, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser22getValidateAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 2, !tbaa !241, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getExitOnFirstFatalErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !242, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser28getValidationConstraintFatalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 4, !tbaa !243, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser19getValidationSchemeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 2
  %7 = icmp eq i32 %4, 1
  %8 = select i1 %7, i32 1, i32 %6
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %3 = load i32, ptr %2, align 8, !tbaa !244
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 2, !tbaa !245, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getValidationSchemaFullCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !246, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIdentityConstraintCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 4, !tbaa !247, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 8, !tbaa !248
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser25getExternalSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser36getExternalNoNamespaceSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getSecurityManagerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getLoadExternalDTDEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %3 = load i8, ptr %2, align 1, !tbaa !252, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getCalculateSrcOfsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !253, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getStandardUriConformantEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !254, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser20getIgnoreAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  %3 = load i8, ptr %2, align 4, !tbaa !255, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser33getDisableDefaultEntityResolutionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %3 = load i8, ptr %2, align 1, !tbaa !256, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser20getSkipDTDValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %3 = load i8, ptr %2, align 2, !tbaa !257, !range !133, !noundef !134
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store ptr %1, ptr %3, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !259 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 2, !tbaa !238
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser31setGenerateSyntheticAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  store i8 %3, ptr %4, align 1, !tbaa !240
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser22setValidateAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  store i8 %3, ptr %4, align 2, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 1, !tbaa !242
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 4, !tbaa !243
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = icmp eq i32 %1, 1
  %6 = select i1 %5, i32 1, i32 2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 %6
  tail call void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %8) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %1, ptr %3, align 8, !tbaa !244
  %4 = icmp eq i32 %1, 1
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !179 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 %3, ptr %4, align 2, !tbaa !245
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser31setValidationSchemaFullCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  store i8 %3, ptr %4, align 1, !tbaa !246
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser29setIdentityConstraintCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %3, ptr %4, align 4, !tbaa !247
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !249
  %7 = load ptr, ptr %4, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #21
  %10 = load ptr, ptr %3, align 8, !tbaa !260
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #21
  store ptr %11, ptr %5, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !261 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !262

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #21
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !263 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !264

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !135
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !265

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !135
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !266, !llvm.loop !267

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !250
  %7 = load ptr, ptr %4, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #21
  %10 = load ptr, ptr %3, align 8, !tbaa !260
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #21
  store ptr %11, ptr %5, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !249
  %7 = load ptr, ptr %4, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #21
  %10 = load ptr, ptr %3, align 8, !tbaa !260
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #21
  store ptr %11, ptr %5, align 8, !tbaa !249
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !250
  %7 = load ptr, ptr %4, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #21
  %10 = load ptr, ptr %3, align 8, !tbaa !260
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #21
  store ptr %11, ptr %5, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setSecurityManagerEPNS_15SecurityManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !209, !range !133, !noundef !134
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 433, i32 noundef 43, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  store ptr %1, ptr %3, align 8, !tbaa !251
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !138
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(12) %1) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %9, ptr %10, align 4, !tbaa !268
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %11, align 8, !tbaa !269
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setLoadExternalDTDEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 %3, ptr %4, align 1, !tbaa !252
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setCalculateSrcOfsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 1, !tbaa !253
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser24setStandardUriConformantEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !254
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10useScannerEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4, ptr noundef %6, ptr noundef %8) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %13) #21
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !193
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %15) #21
  %16 = load ptr, ptr %12, align 8, !tbaa !145
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(776) %16) #23
  br label %22

22:                                               ; preds = %18, %11
  store ptr %9, ptr %12, align 8, !tbaa !145
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser19setCreateSchemaInfoEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  store i8 %3, ptr %4, align 2, !tbaa !164
  br i1 %1, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %7, ptr noundef nonnull %8) #21
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef null) #21
  br label %16

16:                                               ; preds = %9, %13, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20setIgnoreAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  store i8 %3, ptr %4, align 4, !tbaa !255
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser33setDisableDefaultEntityResolutionEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  store i8 %3, ptr %4, align 1, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20setSkipDTDValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  store i8 %3, ptr %4, align 2, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11setDocumentEPNS_11DOMDocumentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  store ptr %1, ptr %3, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !209, !range !133, !noundef !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7, !prof !144

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 508, i32 noundef 43, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #22
  br label %39

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv to i64), i64 0) #21
  store i8 1, ptr %4, align 1, !tbaa !209
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef nonnull align 1 %1) #21
          to label %35 unwind label %22

22:                                               ; preds = %16
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #22
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = call ptr @__cxa_begin_catch(ptr %24) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  invoke void @__cxa_rethrow() #24
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void

36:                                               ; preds = %32, %22
  %37 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %38 = phi ptr [ %34, %32 ], [ %24, %22 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
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
  call void @__clang_call_terminate(ptr %46) #20
  unreachable

47:                                               ; preds = %28
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !209, !range !133, !noundef !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 529, i32 noundef 43, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #22
  br label %36

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv to i64), i64 0) #21
  store i8 1, ptr %4, align 1, !tbaa !209
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #21
          to label %32 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #22
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = call ptr @__cxa_begin_catch(ptr %21) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  invoke void @__cxa_rethrow() #24
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %35 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
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
  call void @__clang_call_terminate(ptr %43) #20
  unreachable

44:                                               ; preds = %25
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !209, !range !133, !noundef !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 550, i32 noundef 43, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #22
  br label %36

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv to i64), i64 0) #21
  store i8 1, ptr %4, align 1, !tbaa !209
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #21
          to label %32 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #22
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = call ptr @__cxa_begin_catch(ptr %21) #22
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  invoke void @__cxa_rethrow() #24
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %35 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
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
  call void @__clang_call_terminate(ptr %43) #20
  unreachable

44:                                               ; preds = %25
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !209, !range !133, !noundef !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef 43, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2) #21
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !209, !range !133, !noundef !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 593, i32 noundef 43, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2) #21
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !209, !range !133, !noundef !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 606, i32 noundef 43, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) #21
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 1) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1) #21
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10parseResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #2 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1) #21
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #21
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !271 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #21
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMTypeInfoImplC1EPKtS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_78PSVIItem11getValidityEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !272
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_78PSVIItem22getValidationAttemptedEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !276
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !277
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_711PSVIElement21getElementDeclarationEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getNillableEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_78PSVIItem16getSchemaDefaultEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_78PSVIItem24getSchemaNormalizedValueEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !285
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_717PSVIAttributeList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #12

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributePSVIAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList28getAttributeNamespaceAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributeNameAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !286 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !287

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 80, ptr noundef %7) #21
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #22
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #21
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #21
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !286 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !289

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !214
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !286 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !289

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !289

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
  %24 = load ptr, ptr %19, align 8, !tbaa !214
  %25 = add nuw nsw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !184
  %28 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr %27, ptr %28, align 8, !tbaa !184
  %29 = icmp eq i64 %25, %21
  br i1 %29, label %30, label %22, !llvm.loop !290

30:                                               ; preds = %22, %16, %13
  store i32 %14, ptr %3, align 4, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !119 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !286 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() local_unnamed_addr #12

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(293) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !179 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  store i8 %3, ptr %4, align 4, !tbaa !291
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !292 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !295
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !296 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  store ptr %3, ptr %0, align 8, !tbaa !184
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid3setEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %4 = load ptr, ptr %0, align 8, !tbaa !299
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1, i32 noundef %2) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = load ptr, ptr %0, align 8, !tbaa !299
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %4 = load ptr, ptr %0, align 8, !tbaa !299
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1, i32 noundef %2) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !300 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !304 {
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  %5 = load i32, ptr %2, align 8, !tbaa !220
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !135
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  %4 = load ptr, ptr %0, align 8, !tbaa !299
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !305 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !306 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !307
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !309

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !310
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !311
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !184
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !316 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !317

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !135
  %8 = load i16, ptr %1, align 2, !tbaa !135
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !318

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !319

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !135
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !320

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !321

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !135
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
  %27 = load i16, ptr %25, align 2, !tbaa !135
  %28 = load i16, ptr %26, align 2, !tbaa !135
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !324, !llvm.loop !325

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !326 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %3 = load i32, ptr %2, align 8, !tbaa !327
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !329
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !330 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !331
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #12

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !332
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !135
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !332
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !333 {
  %2 = load i8, ptr %0, align 8, !tbaa !334, !range !133, !noundef !134
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !335 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !336
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !340 {
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !341 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !343 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !344
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !286 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !345 {
  store i32 0, ptr %0, align 8, !tbaa !220
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !346 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !347

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !220
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !348
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !349

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #21
  %12 = load i32, ptr %0, align 8, !tbaa !220
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !220
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !220
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #21
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !350 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !351

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !135
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !352

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !135
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !353, !llvm.loop !354

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !220
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !348
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !355

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #21
  %21 = load i32, ptr %0, align 8, !tbaa !220
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !221
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !220
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !220
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !356 {
  %3 = load i32, ptr %0, align 8, !tbaa !220
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !348
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !357

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #21
  %8 = load i32, ptr %0, align 8, !tbaa !220
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !220
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !135
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !358 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !359
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #12

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !361 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !362
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !286 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #21
  %3 = load ptr, ptr %1, align 8, !tbaa !184
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !184
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !286 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !213
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !287

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !215
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !138
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #21
  %22 = load i32, ptr %3, align 4, !tbaa !212
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !215
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !214
  %31 = load ptr, ptr %28, align 8, !tbaa !138
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #21
  store ptr %21, ptr %29, align 8, !tbaa !214
  store i32 %13, ptr %6, align 8, !tbaa !213
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !214
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !184
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !184
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !363

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl29createEntityReferenceByParserEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #21
  %5 = icmp eq i32 %4, 1
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15setDoValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 8, !tbaa !366
  %5 = zext i1 %1 to i32
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %5, ptr %6, align 8
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130)) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !367
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !368 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = load i32, ptr %0, align 8, !tbaa !220
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !135
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !369
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !372
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !373
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !376
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !377
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !378
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nosync nounwind memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noreturn nounwind }
attributes #21 = { optsize }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!117}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!36 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser5resetEv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv, i64 1}
!39 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb, i64 1}
!40 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv, i64 1}
!41 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv, i64 1}
!42 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv, i64 1}
!43 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!44 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!45 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev, i64 1}
!46 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLErrorReporterC2Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLEntityHandlerC2Ev, i64 1}
!48 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_714DocTypeHandlerC2Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_711PSVIHandlerC2Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE, i64 1}
!53 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, i64 1}
!54 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEE7releaseEv, i64 1}
!55 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev, i64 1}
!56 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEED2Ev, i64 1}
!57 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!58 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, ptr @_ZN11xercesc_2_715GrammarResolverD1Ev, i64 1}
!59 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!60 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, i64 1}
!61 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv, i64 1}
!62 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 1}
!63 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE, i64 1}
!64 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE, i64 1}
!65 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE, i64 1}
!66 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb, i64 1}
!67 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_717AbstractDOMParser5resetEv, i64 1}
!68 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, i64 1}
!69 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgrD1Ev, i64 1}
!70 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_711PSVIHandlerD2Ev, i64 1}
!71 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, i64 1}
!72 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, i64 1}
!73 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, i64 1}
!74 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, i64 1}
!75 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!76 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb, i64 1}
!77 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser5resetEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE17removeAllElementsEv, i64 2}
!78 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser5resetEv, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 2}
!79 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!80 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEED2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEED2Ev, i64 1}
!81 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv, i64 2}
!82 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb, ptr @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb, i64 2}
!83 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE, ptr @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE, i64 2}
!84 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!85 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEC2EPS1_MS1_FvvE, i64 1}
!86 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEED2Ev, i64 1}
!87 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!88 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv, i64 550}
!89 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @__cxa_allocate_exception, i64 1}
!90 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv, i64 1}
!91 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!92 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, i64 549}
!93 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, i64 549}
!94 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!95 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!96 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!97 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!98 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv, i64 550}
!99 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!100 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!101 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1666922}
!102 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!103 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!104 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!105 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!106 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!107 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!108 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!109 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!110 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_, i64 550}
!111 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!112 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!113 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!114 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!115 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!116 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj, i64 550}
!117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!118 = !{!"function_entry_count", i64 1}
!119 = !{!"function_entry_count", i64 0}
!120 = !{!121, !127, i64 42}
!121 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !122, i64 0, !123, i64 8, !124, i64 16, !125, i64 24, !126, i64 32, !127, i64 40, !127, i64 41, !127, i64 42, !127, i64 43, !127, i64 44, !127, i64 45, !127, i64 46, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !130, i64 104, !130, i64 112, !130, i64 120, !130, i64 128, !130, i64 136, !130, i64 144, !130, i64 152, !131, i64 160, !130, i64 184, !130, i64 192}
!122 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!123 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!124 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!125 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!126 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!127 = !{!"bool", !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C++ TBAA"}
!130 = !{!"any pointer", !128, i64 0}
!131 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !132, i64 0, !130, i64 8, !130, i64 16}
!132 = !{!"int", !128, i64 0}
!133 = !{i8 0, i8 2}
!134 = !{}
!135 = !{!136, !136, i64 0}
!136 = !{!"short", !128, i64 0}
!137 = !{!121, !130, i64 88}
!138 = !{!139, !139, i64 0}
!139 = !{!"vtable pointer", !129, i64 0}
!140 = !{!121, !130, i64 64}
!141 = !{!121, !130, i64 72}
!142 = !{!121, !127, i64 44}
!143 = !{!121, !130, i64 104}
!144 = !{!"branch_weights", i32 2, i32 1}
!145 = !{!121, !130, i64 48}
!146 = !{!121, !130, i64 96}
!147 = !{!121, !127, i64 40}
!148 = !{!121, !130, i64 56}
!149 = !{!121, !130, i64 144}
!150 = !{!151, !130, i64 80}
!151 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !152, i64 0, !157, i64 32, !158, i64 48, !130, i64 80, !130, i64 88, !130, i64 96, !127, i64 104, !130, i64 112, !130, i64 120, !130, i64 128, !161, i64 136, !130, i64 176, !130, i64 184, !130, i64 192, !163, i64 200, !130, i64 208, !130, i64 216, !130, i64 224, !130, i64 232, !130, i64 240, !130, i64 248, !130, i64 256, !130, i64 264, !130, i64 272, !130, i64 280, !132, i64 288, !127, i64 292}
!152 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !153, i64 0, !154, i64 8, !155, i64 16, !156, i64 24}
!153 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!154 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!155 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!156 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!157 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !130, i64 0, !136, i64 8}
!158 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !130, i64 0, !130, i64 8, !159, i64 16}
!159 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !160, i64 0, !130, i64 8}
!160 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!161 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !162, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !132, i64 32, !132, i64 36}
!162 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!163 = !{!"long", !128, i64 0}
!164 = !{!121, !127, i64 46}
!165 = distinct !{!165, !166}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!132, !132, i64 0}
!168 = distinct !{!168, !166}
!169 = !{!121, !130, i64 80}
!170 = !{!121, !130, i64 192}
!171 = distinct !{!171, !166}
!172 = !{!121, !130, i64 184}
!173 = distinct !{!173, !166}
!174 = distinct !{!174, !166}
!175 = !{!176, !127, i64 128}
!176 = !{!"_ZTSN11xercesc_2_719DOMDocumentTypeImplE", !177, i64 0, !157, i64 8, !158, i64 24, !178, i64 56, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !130, i64 104, !130, i64 112, !130, i64 120, !127, i64 128, !127, i64 129}
!177 = !{!"_ZTSN11xercesc_2_715DOMDocumentTypeE", !156, i64 0}
!178 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !130, i64 0, !130, i64 8}
!179 = !{!"function_entry_count", i64 2}
!180 = !{!127, !127, i64 0}
!181 = !{!121, !127, i64 45}
!182 = !{!121, !130, i64 136}
!183 = !{!121, !130, i64 152}
!184 = !{!130, !130, i64 0}
!185 = !{!"function_entry_count", i64 5836268}
!186 = !{!"function_entry_count", i64 3}
!187 = !{!121, !130, i64 112}
!188 = !{!"branch_weights", i32 1, i32 2}
!189 = !{!121, !130, i64 120}
!190 = !{!191, !130, i64 0}
!191 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_17AbstractDOMParserEEE", !130, i64 0, !128, i64 8}
!192 = !{!191, !128, i64 8}
!193 = !{!121, !130, i64 128}
!194 = !{!"branch_weights", i32 2, i32 2}
!195 = !{!"function_entry_count", i64 4}
!196 = !{!197, !130, i64 8}
!197 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !127, i64 0, !127, i64 1, !127, i64 2, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72}
!198 = !{!199, !130, i64 120}
!199 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !200, i64 0, !163, i64 8, !127, i64 16, !127, i64 17, !127, i64 18, !127, i64 19, !127, i64 20, !127, i64 21, !127, i64 22, !127, i64 23, !127, i64 24, !127, i64 25, !127, i64 26, !127, i64 27, !127, i64 28, !127, i64 29, !127, i64 30, !127, i64 31, !127, i64 32, !127, i64 33, !127, i64 34, !127, i64 35, !127, i64 36, !127, i64 37, !127, i64 38, !132, i64 40, !132, i64 44, !132, i64 48, !132, i64 52, !132, i64 56, !132, i64 60, !132, i64 64, !132, i64 68, !130, i64 72, !132, i64 80, !132, i64 84, !132, i64 88, !132, i64 92, !132, i64 96, !130, i64 104, !130, i64 112, !130, i64 120, !130, i64 128, !130, i64 136, !130, i64 144, !130, i64 152, !130, i64 160, !130, i64 168, !127, i64 176, !201, i64 184, !130, i64 264, !204, i64 272, !130, i64 280, !130, i64 288, !130, i64 296, !130, i64 304, !130, i64 312, !130, i64 320, !130, i64 328, !130, i64 336, !130, i64 344, !203, i64 352, !130, i64 360, !131, i64 368, !205, i64 392, !205, i64 432, !205, i64 472, !205, i64 512, !205, i64 552, !205, i64 592, !205, i64 632, !206, i64 672}
!200 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!201 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !202, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !132, i64 40, !130, i64 48, !127, i64 56, !203, i64 60, !127, i64 64, !130, i64 72}
!202 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!203 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !128, i64 0}
!204 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !128, i64 0}
!205 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !132, i64 0, !132, i64 4, !132, i64 8, !127, i64 12, !130, i64 16, !130, i64 24, !130, i64 32}
!206 = !{!"_ZTSN11xercesc_2_79ElemStackE", !132, i64 0, !132, i64 4, !161, i64 8, !130, i64 48, !132, i64 56, !132, i64 60, !132, i64 64, !132, i64 68, !132, i64 72, !132, i64 76, !132, i64 80, !130, i64 88, !130, i64 96}
!207 = !{!199, !130, i64 128}
!208 = !{!"branch_weights", i32 1, i32 7}
!209 = !{!121, !127, i64 43}
!210 = !{!211, !127, i64 0}
!211 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEE", !127, i64 0, !132, i64 4, !132, i64 8, !130, i64 16, !130, i64 24}
!212 = !{!211, !132, i64 4}
!213 = !{!211, !132, i64 8}
!214 = !{!211, !130, i64 16}
!215 = !{!211, !130, i64 24}
!216 = !{!217, !130, i64 24}
!217 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE", !127, i64 8, !132, i64 12, !132, i64 16, !130, i64 24, !130, i64 32}
!218 = !{!217, !132, i64 12}
!219 = !{!"function_entry_count", i64 8985736}
!220 = !{!205, !132, i64 0}
!221 = !{!205, !130, i64 32}
!222 = !{!217, !127, i64 8}
!223 = !{!217, !132, i64 16}
!224 = !{!217, !130, i64 32}
!225 = distinct !{!225, !166}
!226 = distinct !{!226, !166}
!227 = distinct !{!227, !166}
!228 = distinct !{!228, !166}
!229 = distinct !{!229, !166}
!230 = !{!231, !130, i64 40}
!231 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !232, i64 8, !130, i64 16, !132, i64 24, !130, i64 32, !130, i64 40}
!232 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !128, i64 0}
!233 = distinct !{!233, !166}
!234 = !{!"function_entry_count", i64 552}
!235 = !{!"function_entry_count", i64 551}
!236 = !{!199, !130, i64 264}
!237 = !{!"function_entry_count", i64 1666453}
!238 = !{!199, !127, i64 18}
!239 = !{!"function_entry_count", i64 498}
!240 = !{!199, !127, i64 33}
!241 = !{!199, !127, i64 34}
!242 = !{!199, !127, i64 19}
!243 = !{!199, !127, i64 20}
!244 = !{!199, !204, i64 272}
!245 = !{!199, !127, i64 26}
!246 = !{!199, !127, i64 27}
!247 = !{!199, !127, i64 28}
!248 = !{!199, !132, i64 40}
!249 = !{!199, !130, i64 328}
!250 = !{!199, !130, i64 336}
!251 = !{!199, !130, i64 344}
!252 = !{!199, !127, i64 31}
!253 = !{!199, !127, i64 17}
!254 = !{!199, !127, i64 16}
!255 = !{!199, !127, i64 36}
!256 = !{!199, !127, i64 37}
!257 = !{!199, !127, i64 38}
!258 = !{!199, !130, i64 160}
!259 = !{!"function_entry_count", i64 5}
!260 = !{!199, !130, i64 360}
!261 = !{!"function_entry_count", i64 558789}
!262 = !{!"branch_weights", i32 158605, i32 400186}
!263 = !{!"function_entry_count", i64 2453164456}
!264 = !{!"branch_weights", i32 1, i32 -1841802839}
!265 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!266 = !{!"branch_weights", i32 408669070, i32 -279908792}
!267 = distinct !{!267, !166}
!268 = !{!199, !132, i64 44}
!269 = !{!199, !132, i64 48}
!270 = !{!201, !127, i64 64}
!271 = !{!"function_entry_count", i64 2815}
!272 = !{!273, !274, i64 48}
!273 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !274, i64 48, !275, i64 52, !127, i64 56, !130, i64 64, !130, i64 72}
!274 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !128, i64 0}
!275 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !128, i64 0}
!276 = !{!273, !275, i64 52}
!277 = !{!278, !281, i64 36}
!278 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !279, i64 0, !281, i64 36, !136, i64 40, !130, i64 48}
!279 = !{!"_ZTSN11xercesc_2_78XSObjectE", !280, i64 8, !130, i64 16, !130, i64 24, !132, i64 32}
!280 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !128, i64 0}
!281 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !128, i64 0}
!282 = !{!283, !130, i64 80}
!283 = !{!"_ZTSN11xercesc_2_711PSVIElementE", !273, i64 0, !130, i64 80, !130, i64 88, !130, i64 96}
!284 = !{!273, !130, i64 32}
!285 = !{!273, !130, i64 24}
!286 = !{!"function_entry_count", i64 550}
!287 = !{!"branch_weights", i32 1, i32 551}
!288 = !{!"function_entry_count", i64 1100}
!289 = !{!"branch_weights", i32 551, i32 1}
!290 = distinct !{!290, !166}
!291 = !{!151, !127, i64 292}
!292 = !{!"function_entry_count", i64 553}
!293 = !{!"function_entry_count", i64 668}
!294 = !{!"function_entry_count", i64 344419}
!295 = !{!199, !132, i64 52}
!296 = !{!"function_entry_count", i64 379609}
!297 = !{!298, !130, i64 8}
!298 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !130, i64 0, !130, i64 8}
!299 = !{!298, !130, i64 0}
!300 = !{!"function_entry_count", i64 1666922}
!301 = !{!302, !130, i64 16}
!302 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !162, i64 0, !130, i64 8, !130, i64 16, !303, i64 24, !132, i64 28, !127, i64 32}
!303 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !128, i64 0}
!304 = !{!"function_entry_count", i64 10}
!305 = !{!"function_entry_count", i64 1668291}
!306 = !{!"function_entry_count", i64 1366334}
!307 = !{!308, !132, i64 12}
!308 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !127, i64 8, !132, i64 12, !132, i64 16, !130, i64 24, !130, i64 32}
!309 = !{!"branch_weights", i32 1366335, i32 1}
!310 = !{!308, !130, i64 32}
!311 = !{!308, !130, i64 24}
!312 = !{!"function_entry_count", i64 360316}
!313 = !{!314, !130, i64 24}
!314 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !127, i64 0, !315, i64 4, !132, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !127, i64 48}
!315 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !128, i64 0}
!316 = !{!"function_entry_count", i64 1231717351}
!317 = !{!"branch_weights", i32 621, i32 -1469098093}
!318 = !{!"branch_weights", i32 408901017, i32 1}
!319 = !{!"branch_weights", i32 267, i32 4}
!320 = !{!"branch_weights", i32 1, i32 4}
!321 = !{!"branch_weights", i32 156, i32 112}
!322 = !{!"branch_weights", i32 1, i32 112}
!323 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!324 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!325 = distinct !{!325, !166}
!326 = !{!"function_entry_count", i64 159625}
!327 = !{!199, !132, i64 64}
!328 = !{!"function_entry_count", i64 360600}
!329 = !{!314, !130, i64 16}
!330 = !{!"function_entry_count", i64 201563}
!331 = !{!314, !315, i64 4}
!332 = !{!157, !136, i64 8}
!333 = !{!"function_entry_count", i64 650}
!334 = !{!314, !127, i64 0}
!335 = !{!"function_entry_count", i64 401820}
!336 = !{!337, !338, i64 8}
!337 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !162, i64 0, !338, i64 8, !315, i64 12, !339, i64 16, !127, i64 20, !127, i64 21, !132, i64 24, !130, i64 32, !130, i64 40, !130, i64 48}
!338 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !128, i64 0}
!339 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !128, i64 0}
!340 = !{!"function_entry_count", i64 379607}
!341 = !{!"function_entry_count", i64 19496}
!342 = !{!337, !130, i64 32}
!343 = !{!"function_entry_count", i64 593014}
!344 = !{!337, !315, i64 12}
!345 = !{!"function_entry_count", i64 695}
!346 = !{!"function_entry_count", i64 2718768}
!347 = !{!"branch_weights", i32 1, i32 2718769}
!348 = !{!205, !132, i64 4}
!349 = !{!"branch_weights", i32 2718765, i32 5}
!350 = !{!"function_entry_count", i64 789922}
!351 = !{!"branch_weights", i32 1, i32 789923}
!352 = !{!"branch_weights", i32 285, i32 789639}
!353 = !{!"branch_weights", i32 789639, i32 41628304}
!354 = distinct !{!354, !166}
!355 = !{!"branch_weights", i32 789637, i32 3}
!356 = !{!"function_entry_count", i64 7992849}
!357 = !{!"branch_weights", i32 1, i32 7992850}
!358 = !{!"function_entry_count", i64 2192223}
!359 = !{!360, !130, i64 32}
!360 = !{!"_ZTSN11xercesc_2_75QNameE", !162, i64 0, !132, i64 8, !132, i64 12, !132, i64 16, !132, i64 20, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48}
!361 = !{!"function_entry_count", i64 6553673}
!362 = !{!360, !132, i64 20}
!363 = distinct !{!363, !166}
!364 = !{!365, !130, i64 24}
!365 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !162, i64 0, !132, i64 8, !132, i64 12, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64}
!366 = !{!199, !127, i64 24}
!367 = !{!337, !130, i64 40}
!368 = !{!"function_entry_count", i64 10769804}
!369 = !{!365, !130, i64 40}
!370 = !{!365, !130, i64 48}
!371 = !{!365, !130, i64 32}
!372 = !{!365, !130, i64 56}
!373 = !{!365, !130, i64 16}
!374 = !{!375, !130, i64 16}
!375 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !162, i64 0, !132, i64 8, !132, i64 12, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48}
!376 = !{!375, !130, i64 24}
!377 = !{!375, !130, i64 32}
!378 = !{!375, !130, i64 40}
