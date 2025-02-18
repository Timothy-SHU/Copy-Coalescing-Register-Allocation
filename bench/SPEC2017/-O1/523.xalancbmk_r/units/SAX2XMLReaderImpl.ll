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
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIjE3popEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_712SAXExceptionD2Ev = comdat any

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

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

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
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
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
@_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE = external local_unnamed_addr constant [0 x i16], align 2
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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !68 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #24
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReader18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  store ptr getelementptr inbounds ({ [46 x ptr] }, ptr @_ZTVN11xercesc_2_713SAX2XMLReaderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !70
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !70
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 2, i64 2), ptr %5, align 8, !tbaa !70
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 3, i64 2), ptr %6, align 8, !tbaa !70
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 4, i64 2), ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %8, align 8, !tbaa !73
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %9, align 1, !tbaa !86
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  store i8 1, ptr %10, align 2, !tbaa !87
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  store i8 0, ptr %11, align 1, !tbaa !88
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  store i32 0, ptr %13, align 8, !tbaa !90
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  store i32 0, ptr %14, align 4, !tbaa !91
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  store i32 32, ptr %15, align 8, !tbaa !92
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  invoke void @_ZN11xercesc_2_717VecAttributesImplC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %17 unwind label %21, !prof !93

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %18, i8 0, i64 136, i1 false)
  store ptr %1, ptr %19, align 8, !tbaa !94
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 32
  store ptr %2, ptr %20, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %38 unwind label %25, !prof !93

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  br label %51

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  %29 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = tail call ptr @__cxa_begin_catch(ptr %27) #24
  invoke void @__cxa_rethrow() #26
          to label %59 unwind label %33

33:                                               ; preds = %31
  %34 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %56

35:                                               ; preds = %33
  %36 = extractvalue { ptr, i32 } %34, 1
  %37 = extractvalue { ptr, i32 } %34, 0
  br label %39

38:                                               ; preds = %17
  ret void

39:                                               ; preds = %35, %25
  %40 = phi ptr [ null, %35 ], [ @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, %25 ]
  %41 = phi ptr [ null, %35 ], [ %0, %25 ]
  %42 = phi i32 [ %36, %35 ], [ %28, %25 ]
  %43 = phi ptr [ %37, %35 ], [ %27, %25 ]
  %44 = icmp eq ptr %41, null
  %45 = or i1 %30, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(248) %41)
          to label %50 unwind label %47

47:                                               ; preds = %46
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  tail call void @__clang_call_terminate(ptr %49) #25
  unreachable

50:                                               ; preds = %39, %46
  tail call void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #24
  br label %51

51:                                               ; preds = %50, %21
  %52 = phi i32 [ %42, %50 ], [ %24, %21 ]
  %53 = phi ptr [ %43, %50 ], [ %23, %21 ]
  %54 = insertvalue { ptr, i32 } poison, ptr %53, 0
  %55 = insertvalue { ptr, i32 } %54, i32 %52, 1
  resume { ptr, i32 } %55

56:                                               ; preds = %33
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #25
  unreachable

59:                                               ; preds = %31
  unreachable
}

declare void @_ZN11xercesc_2_717VecAttributesImplC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5), !prof !97
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !99

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(776) %10) #24, !prof !100
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !99

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(40) %18) #24, !prof !102
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28, !prof !99

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %26, i64 0, i32 1, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %26, i64 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = load ptr, ptr %30, align 8, !tbaa !70
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %39 unwind label %36, !prof !107

36:                                               ; preds = %28
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #25
  unreachable

39:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #24
  br label %40

40:                                               ; preds = %39, %24
  %41 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44, !prof !99

44:                                               ; preds = %40
  %45 = load ptr, ptr %42, align 8, !tbaa !70
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(40) %42) #24, !prof !109
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !110
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52, !prof !99

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %50, i64 0, i32 1, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !104
  %55 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %50, i64 0, i32 1, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !106
  %57 = load ptr, ptr %54, align 8, !tbaa !70
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %56)
          to label %63 unwind label %60, !prof !107

60:                                               ; preds = %52
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  tail call void @__clang_call_terminate(ptr %62) #25
  unreachable

63:                                               ; preds = %52
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %50) #24
  br label %64

64:                                               ; preds = %63, %48
  %65 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %66 = load ptr, ptr %65, align 8, !tbaa !111
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !99

68:                                               ; preds = %64
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %66) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %66) #24
  br label %69

69:                                               ; preds = %68, %64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 32
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = load ptr, ptr %2, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7)
          to label %8 unwind label %93, !prof !93

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  store ptr %4, ptr %9, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 29
  store ptr %11, ptr %12, align 8, !tbaa !114
  %13 = load ptr, ptr %2, align 8, !tbaa !94
  %14 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef null, ptr noundef nonnull %4, ptr noundef %13)
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !98
  %16 = load ptr, ptr %12, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %14, ptr noundef %16)
  %17 = load ptr, ptr %2, align 8, !tbaa !94
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = load ptr, ptr %17, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %21), !prof !115
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  store ptr %25, ptr %26, align 8, !tbaa !96
  %27 = load i32, ptr %18, align 8, !tbaa !92
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %25, i8 0, i64 %29, i1 false), !prof !116
  %30 = load ptr, ptr %15, align 8, !tbaa !98
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %30, i64 0, i32 4
  store i8 1, ptr %31, align 2, !tbaa !117
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %30, i64 0, i32 12
  store i8 1, ptr %32, align 2, !tbaa !130
  %33 = load ptr, ptr %2, align 8, !tbaa !94
  %34 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %33)
  %35 = load ptr, ptr %2, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 109, ptr noundef %35)
          to label %36 unwind label %95, !prof !93

36:                                               ; preds = %8
  %37 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  store ptr %34, ptr %37, align 8, !tbaa !101
  %38 = load ptr, ptr %2, align 8, !tbaa !94
  %39 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %38)
  %40 = load ptr, ptr %2, align 8, !tbaa !94
  %41 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1
  store i8 0, ptr %41, align 8, !tbaa !131
  %42 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 1
  store i32 0, ptr %42, align 4, !tbaa !132
  %43 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 2
  store i32 30, ptr %43, align 8, !tbaa !133
  %44 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 3
  store ptr null, ptr %44, align 8, !tbaa !106
  %45 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %39, i64 0, i32 1, i32 4
  store ptr %40, ptr %45, align 8, !tbaa !104
  %46 = load ptr, ptr %40, align 8, !tbaa !70
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef 120)
          to label %50 unwind label %97, !prof !115

50:                                               ; preds = %36
  store ptr %49, ptr %44, align 8, !tbaa !106
  %51 = load i32, ptr %43, align 8, !tbaa !133
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %49, i8 0, i64 %53, i1 false), !prof !134
  %54 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  store ptr %39, ptr %54, align 8, !tbaa !103
  %55 = load ptr, ptr %2, align 8, !tbaa !94
  %56 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %55)
  %57 = load ptr, ptr %2, align 8, !tbaa !94
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %56, i64 0, i32 1
  store i8 0, ptr %58, align 8, !tbaa !135
  %59 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %56, i64 0, i32 2
  store i32 0, ptr %59, align 4, !tbaa !137
  %60 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %56, i64 0, i32 3
  store i32 10, ptr %60, align 8, !tbaa !138
  %61 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %56, i64 0, i32 4
  store ptr null, ptr %61, align 8, !tbaa !139
  %62 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %56, i64 0, i32 5
  store ptr %57, ptr %62, align 8, !tbaa !140
  %63 = load ptr, ptr %57, align 8, !tbaa !70
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef 80)
          to label %67 unwind label %99, !prof !115

67:                                               ; preds = %50
  store ptr %66, ptr %61, align 8, !tbaa !139
  br label %68

68:                                               ; preds = %67, %68
  %69 = phi i64 [ 0, %67 ], [ %72, %68 ]
  %70 = load ptr, ptr %61, align 8, !tbaa !139
  %71 = getelementptr inbounds ptr, ptr %70, i64 %69
  store ptr null, ptr %71, align 8, !tbaa !141
  %72 = add nuw nsw i64 %69, 1
  %73 = icmp eq i64 %72, 10
  br i1 %73, label %74, label %68, !prof !142, !llvm.loop !143

74:                                               ; preds = %68
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %56, align 8, !tbaa !70
  %75 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  store ptr %56, ptr %75, align 8, !tbaa !108
  %76 = load ptr, ptr %2, align 8, !tbaa !94
  %77 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %76)
  %78 = load ptr, ptr %2, align 8, !tbaa !94
  %79 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %77, i64 0, i32 1
  store i8 0, ptr %79, align 8, !tbaa !131
  %80 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %77, i64 0, i32 1, i32 1
  store i32 0, ptr %80, align 4, !tbaa !132
  %81 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %77, i64 0, i32 1, i32 2
  store i32 10, ptr %81, align 8, !tbaa !133
  %82 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %77, i64 0, i32 1, i32 3
  store ptr null, ptr %82, align 8, !tbaa !106
  %83 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %77, i64 0, i32 1, i32 4
  store ptr %78, ptr %83, align 8, !tbaa !104
  %84 = load ptr, ptr %78, align 8, !tbaa !70
  %85 = getelementptr inbounds ptr, ptr %84, i64 2
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %78, i64 noundef 40)
          to label %88 unwind label %101, !prof !115

88:                                               ; preds = %74
  store ptr %87, ptr %82, align 8, !tbaa !106
  %89 = load i32, ptr %81, align 8, !tbaa !133
  %90 = zext i32 %89 to i64
  %91 = shl nuw nsw i64 %90, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %87, i8 0, i64 %91, i1 false), !prof !146
  %92 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  store ptr %77, ptr %92, align 8, !tbaa !110
  ret void

93:                                               ; preds = %1
  %94 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  br label %103

95:                                               ; preds = %8
  %96 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %33) #24
  br label %103

97:                                               ; preds = %36
  %98 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %39, ptr noundef %38) #24
  br label %103

99:                                               ; preds = %50
  %100 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %56, ptr noundef %55) #24
  br label %103

101:                                              ; preds = %74
  %102 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %77, ptr noundef %76) #24
  br label %103

103:                                              ; preds = %101, %99, %97, %95, %93
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %100, %99 ], [ %98, %97 ], [ %96, %95 ], [ %94, %93 ]
  resume { ptr, i32 } %104
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !70
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !70
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [86 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_717SAX2XMLReaderImplE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %6 unwind label %8, !prof !93

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_717VecAttributesImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #25
  unreachable
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #8 align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImplD0Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %2) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #24
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 2, !tbaa !117
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 12
  store i8 %5, ptr %6, align 2, !tbaa !130
  ret void
}

declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20installAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !91
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !92
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = uitofp i32 %6 to double
  %10 = fmul double %9, 1.500000e+00
  %11 = fptoui double %10 to i32
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %13, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = load i32, ptr %5, align 8, !tbaa !92
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %21, i64 %24, i1 false)
  %25 = load i32, ptr %5, align 8, !tbaa !92
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %19, i64 %26
  %28 = sub i32 %11, %25
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 %30, i1 false)
  %31 = load ptr, ptr %12, align 8, !tbaa !94
  %32 = load ptr, ptr %20, align 8, !tbaa !96
  %33 = load ptr, ptr %31, align 8, !tbaa !70
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %32)
  store ptr %19, ptr %20, align 8, !tbaa !96
  store i32 %11, ptr %5, align 8, !tbaa !92
  br label %36

36:                                               ; preds = %8, %2
  %37 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  %39 = load i32, ptr %3, align 4, !tbaa !91
  %40 = add i32 %39, 1
  store i32 %40, ptr %3, align 4, !tbaa !91
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  store ptr %1, ptr %42, align 8, !tbaa !141
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %44 = load ptr, ptr %43, align 8, !tbaa !98
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %44, i64 0, i32 41
  store ptr %45, ptr %46, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl19removeAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef readnone %1) unnamed_addr #13 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !91
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  br label %9

9:                                                ; preds = %6, %42
  %10 = phi i32 [ 0, %6 ], [ %43, %42 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %17 = icmp eq i32 %4, 1
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = add i32 %10, 1
  %20 = icmp ult i32 %19, %4
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = zext i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = load ptr, ptr %16, align 8, !tbaa !96
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !141
  %27 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr %26, ptr %27, align 8, !tbaa !141
  br i1 %20, label %23, label %28, !llvm.loop !148

28:                                               ; preds = %23, %18, %15
  %29 = add i32 %4, -1
  store i32 %29, ptr %3, align 4, !tbaa !91
  %30 = load ptr, ptr %16, align 8, !tbaa !96
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr null, ptr %32, align 8, !tbaa !141
  %33 = icmp eq i32 %29, 0
  %34 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  %37 = select i1 %33, i1 %36, i1 false
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %40 = load ptr, ptr %39, align 8, !tbaa !98
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %40, i64 0, i32 41
  store ptr null, ptr %41, align 8, !tbaa !147
  br label %45

42:                                               ; preds = %9
  %43 = add nuw i32 %10, 1
  %44 = icmp eq i32 %43, %4
  br i1 %44, label %45, label %9, !llvm.loop !149

45:                                               ; preds = %42, %38, %28, %2
  %46 = phi i1 [ false, %2 ], [ true, %28 ], [ true, %38 ], [ false, %42 ]
  ret i1 %46
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12setValidatorEPNS_12XMLValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 30
  store ptr %1, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #14 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #14 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !152
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setContentHandlerEPNS_14ContentHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !153
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5, !prof !99

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !91
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ null, %7 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %14, i64 0, i32 41
  store ptr %12, ptr %15, align 8, !tbaa !147
  br label %16

16:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13setDTDHandlerEPNS_10DTDHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  store ptr %1, ptr %3, align 8, !tbaa !154
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = select i1 %4, ptr null, ptr %7, !prof !99
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 42
  store ptr %8, ptr %9, align 8, !tbaa !155
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  store ptr %1, ptr %3, align 8, !tbaa !156
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  br i1 %4, label %11, label %7, !prof !99

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  store ptr %8, ptr %9, align 8, !tbaa !157
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 45
  store ptr %1, ptr %10, align 8, !tbaa !158
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14setPSVIHandlerEPNS_11PSVIHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 23
  store ptr %1, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 46
  store ptr %1, ptr %6, align 8, !tbaa !160
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setLexicalHandlerEPNS_14LexicalHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  store ptr %1, ptr %3, align 8, !tbaa !161
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = select i1 %4, ptr null, ptr %7, !prof !99
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 42
  store ptr %8, ptr %9, align 8, !tbaa !155
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl21setDeclarationHandlerEPNS_11DeclHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  store ptr %1, ptr %3, align 8, !tbaa !162
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = select i1 %4, ptr null, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 42
  store ptr %8, ptr %9, align 8, !tbaa !155
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  store ptr %1, ptr %3, align 8, !tbaa !163
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  br i1 %4, label %12, label %7, !prof !93

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !164
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !165
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !164
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !141
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  store ptr %1, ptr %3, align 8, !tbaa !166
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !164
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !165
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !164
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !141
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 1, !tbaa !167
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i1 noundef zeroext %1) unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 4, !tbaa !168
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !88, !range !169, !noundef !170
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !93

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 393, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #24
  br label %46

15:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !88
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds ptr, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef nonnull align 1 %1)
          to label %34 unwind label %21, !prof !171

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = tail call ptr @__cxa_begin_catch(ptr %23) #24
  invoke void @__cxa_rethrow() #26
          to label %54 unwind label %29

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %31 unwind label %51

31:                                               ; preds = %29
  %32 = extractvalue { ptr, i32 } %30, 1
  %33 = extractvalue { ptr, i32 } %30, 0
  br label %35

34:                                               ; preds = %15
  store i8 0, ptr %3, align 1, !tbaa !88
  ret void

35:                                               ; preds = %31, %21
  %36 = phi ptr [ null, %31 ], [ @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv, %21 ]
  %37 = phi ptr [ null, %31 ], [ %0, %21 ]
  %38 = phi i32 [ %32, %31 ], [ %24, %21 ]
  %39 = phi ptr [ %33, %31 ], [ %23, %21 ]
  %40 = icmp eq ptr %37, null
  %41 = or i1 %26, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(248) %37)
          to label %46 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #25
  unreachable

46:                                               ; preds = %42, %35, %11
  %47 = phi i32 [ %14, %11 ], [ %38, %35 ], [ %38, %42 ]
  %48 = phi ptr [ %13, %11 ], [ %39, %35 ], [ %39, %42 ]
  %49 = insertvalue { ptr, i32 } poison, ptr %48, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %47, 1
  resume { ptr, i32 } %50

51:                                               ; preds = %29
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #25
  unreachable

54:                                               ; preds = %27
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(248) %0) local_unnamed_addr #15 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  store i8 0, ptr %2, align 1, !tbaa !88
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKt(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !88, !range !169, !noundef !170
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #24
  br label %43

15:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !88
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1)
          to label %31 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #24
  invoke void @__cxa_rethrow() #26
          to label %51 unwind label %26

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %28 unwind label %48

28:                                               ; preds = %26
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = extractvalue { ptr, i32 } %27, 0
  br label %32

31:                                               ; preds = %15
  store i8 0, ptr %3, align 1, !tbaa !88
  ret void

32:                                               ; preds = %28, %18
  %33 = phi ptr [ null, %28 ], [ @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv, %18 ]
  %34 = phi ptr [ null, %28 ], [ %0, %18 ]
  %35 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %36 = phi ptr [ %30, %28 ], [ %20, %18 ]
  %37 = icmp eq ptr %34, null
  %38 = or i1 %23, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(248) %34)
          to label %43 unwind label %40

40:                                               ; preds = %39
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #25
  unreachable

43:                                               ; preds = %39, %32, %11
  %44 = phi i32 [ %14, %11 ], [ %35, %32 ], [ %35, %39 ]
  %45 = phi ptr [ %13, %11 ], [ %36, %32 ], [ %36, %39 ]
  %46 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %44, 1
  resume { ptr, i32 } %47

48:                                               ; preds = %26
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #25
  unreachable

51:                                               ; preds = %24
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5parseEPKc(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !88, !range !169, !noundef !170
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 435, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #24
  br label %43

15:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !88
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1)
          to label %18 unwind label %19

18:                                               ; preds = %15
  store i8 0, ptr %3, align 1, !tbaa !88
  ret void

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = tail call ptr @__cxa_begin_catch(ptr %21) #24
  invoke void @__cxa_rethrow() #26
          to label %51 unwind label %27

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %29 unwind label %48

29:                                               ; preds = %27
  %30 = extractvalue { ptr, i32 } %28, 1
  %31 = extractvalue { ptr, i32 } %28, 0
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi ptr [ null, %29 ], [ @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv, %19 ]
  %34 = phi ptr [ null, %29 ], [ %0, %19 ]
  %35 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %36 = phi ptr [ %31, %29 ], [ %21, %19 ]
  %37 = icmp eq ptr %34, null
  %38 = or i1 %24, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(248) %34)
          to label %43 unwind label %40

40:                                               ; preds = %39
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #25
  unreachable

43:                                               ; preds = %39, %32, %11
  %44 = phi i32 [ %14, %11 ], [ %35, %32 ], [ %35, %39 ]
  %45 = phi ptr [ %13, %11 ], [ %36, %32 ], [ %36, %39 ]
  %46 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %44, 1
  resume { ptr, i32 } %47

48:                                               ; preds = %27
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #25
  unreachable

51:                                               ; preds = %25
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !88, !range !169, !noundef !170
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #24
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !88, !range !169, !noundef !170
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 477, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #24
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !88, !range !169, !noundef !170
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #24
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10parseResetERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #16 align 2 !prof !68 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !90
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8, !prof !172

8:                                                ; preds = %4
  br i1 %3, label %9, label %17, !prof !172

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !161
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !70
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %17

17:                                               ; preds = %13, %9, %8
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !172

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, i32 noundef %2), !prof !173
  br label %25

25:                                               ; preds = %21, %17
  br i1 %3, label %26, label %34, !prof !172

26:                                               ; preds = %25
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %28 = load ptr, ptr %27, align 8, !tbaa !161
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !70
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28)
  br label %34

34:                                               ; preds = %25, %26, %30, %4
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !91
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !93

38:                                               ; preds = %39, %34
  ret void

39:                                               ; preds = %34, %39
  %40 = phi i64 [ %48, %39 ], [ 0, %34 ]
  %41 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %42 = load ptr, ptr %41, align 8, !tbaa !96
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !141
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  %48 = add nuw nsw i64 %40, 1
  %49 = load i32, ptr %35, align 4, !tbaa !91
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %39, label %38, !prof !99, !llvm.loop !174
}

; Function Attrs: uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13docCharactersEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #17 align 2 !prof !175 {
  %5 = getelementptr inbounds i8, ptr %0, i64 40
  %6 = load i32, ptr %5, align 8, !tbaa !90
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8, !prof !172

8:                                                ; preds = %4
  br i1 %3, label %9, label %17, !prof !172

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, ptr %0, i64 168
  %11 = load ptr, ptr %10, align 8, !tbaa !161
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !70
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %17

17:                                               ; preds = %13, %9, %8
  %18 = getelementptr inbounds i8, ptr %0, i64 88
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !172

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, i32 noundef %2), !prof !176
  br label %25

25:                                               ; preds = %21, %17
  br i1 %3, label %26, label %34, !prof !172

26:                                               ; preds = %25
  %27 = getelementptr inbounds i8, ptr %0, i64 168
  %28 = load ptr, ptr %27, align 8, !tbaa !161
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !70
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28)
  br label %34

34:                                               ; preds = %30, %26, %25, %4
  %35 = getelementptr inbounds i8, ptr %0, i64 44
  %36 = load i32, ptr %35, align 4, !tbaa !91
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38, !prof !93

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %47, %38 ], [ 0, %34 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 184
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = getelementptr inbounds ptr, ptr %41, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !141
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  %47 = add nuw nsw i64 %39, 1
  %48 = load i32, ptr %35, align 4, !tbaa !91
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %38, label %51, !prof !99, !llvm.loop !174

51:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %1, align 2, !tbaa !177
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %1, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !177
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !179

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %6, %8, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %6 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %23)
  br label %27

27:                                               ; preds = %22, %2
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %29 = load i32, ptr %28, align 4, !tbaa !91
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %34

33:                                               ; preds = %34, %27
  ret void

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %42, %34 ]
  %36 = load ptr, ptr %32, align 8, !tbaa !96
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !141
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %1)
  %42 = add nuw nsw i64 %35, 1
  %43 = load i32, ptr %28, align 4, !tbaa !91
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %34, label %33, !llvm.loop !180
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #18 align 2 !prof !68 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !68 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %12

11:                                               ; preds = %12, %5
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %20, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !96
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %20 = add nuw nsw i64 %13, 1
  %21 = load i32, ptr %6, align 4, !tbaa !91
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %12, label %11, !llvm.loop !181
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #18 align 2 !prof !69 {
  %6 = getelementptr inbounds i8, ptr %0, i64 44
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9, !prof !93

9:                                                ; preds = %5, %9
  %10 = phi i64 [ %18, %9 ], [ 0, %5 ]
  %11 = getelementptr inbounds i8, ptr %0, i64 184
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %18 = add nuw nsw i64 %10, 1
  %19 = load i32, ptr %6, align 4, !tbaa !91
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %9, label %22, !prof !99, !llvm.loop !181

22:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !70
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !91
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !96
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !141
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %1, ptr noundef %2)
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 4, !tbaa !91
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !182
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl5docPIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #18 align 2 !prof !68 {
  %4 = getelementptr inbounds i8, ptr %0, i64 88
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !70
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds i8, ptr %0, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !91
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 184
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %25, %17 ]
  %19 = load ptr, ptr %16, align 8, !tbaa !96
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !141
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %2)
  %25 = add nuw nsw i64 %18, 1
  %26 = load i32, ptr %12, align 4, !tbaa !91
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %17, label %29, !llvm.loop !182

29:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !91
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %16

15:                                               ; preds = %16, %9
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !96
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %24 = add nuw nsw i64 %17, 1
  %25 = load i32, ptr %10, align 4, !tbaa !91
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %16, label %15, !llvm.loop !183
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl11endDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #18 align 2 !prof !69 {
  %2 = getelementptr inbounds i8, ptr %0, i64 88
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !99

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3), !prof !184
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds i8, ptr %0, i64 44
  %11 = load i32, ptr %10, align 4, !tbaa !91
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13, !prof !93

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %22, %13 ], [ 0, %9 ]
  %15 = getelementptr inbounds i8, ptr %0, i64 184
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %22 = add nuw nsw i64 %14, 1
  %23 = load i32, ptr %10, align 4, !tbaa !91
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %13, label %26, !prof !99, !llvm.loop !183

26:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = load ptr, ptr %4, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8)
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !91
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %19

18:                                               ; preds = %19, %12
  ret void

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %27, %19 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !96
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %27 = add nuw nsw i64 %20, 1
  %28 = load i32, ptr %13, align 4, !tbaa !91
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %19, label %18, !llvm.loop !187
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #18 align 2 !prof !68 {
  %3 = getelementptr inbounds i8, ptr %0, i64 168
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = load ptr, ptr %4, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8)
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds i8, ptr %0, i64 44
  %14 = load i32, ptr %13, align 4, !tbaa !91
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %0, i64 184
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %26, %18 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !96
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !141
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %13, align 4, !tbaa !91
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %30, !llvm.loop !187

30:                                               ; preds = %18, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #16 align 2 !prof !68 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !90
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8, !prof !188

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !189

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2), !prof !190
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !91
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20, !prof !93

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %29, %20 ], [ 0, %16 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !141
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  %29 = add nuw nsw i64 %21, 1
  %30 = load i32, ptr %17, align 4, !tbaa !91
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %20, label %33, !prof !99, !llvm.loop !191

33:                                               ; preds = %20, %16, %4
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl19ignorableWhitespaceEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #17 align 2 !prof !192 {
  %5 = getelementptr inbounds i8, ptr %0, i64 40
  %6 = load i32, ptr %5, align 8, !tbaa !90
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8, !prof !188

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 88
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !189

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2), !prof !193
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds i8, ptr %0, i64 44
  %18 = load i32, ptr %17, align 4, !tbaa !91
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20, !prof !93

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %29, %20 ], [ 0, %16 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 184
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !141
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  %29 = add nuw nsw i64 %21, 1
  %30 = load i32, ptr %17, align 4, !tbaa !91
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %20, label %33, !prof !99, !llvm.loop !191

33:                                               ; preds = %20, %4, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !90
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %10, i64 0, i32 1, i32 1
  store i32 0, ptr %11, align 4, !tbaa !132
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %13, i64 0, i32 1, i32 1
  store i32 0, ptr %14, align 4, !tbaa !132
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(40) %16)
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %28, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !96
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds ptr, ptr %25, i64 9
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %28 = add nuw nsw i64 %21, 1
  %29 = load i32, ptr %2, align 4, !tbaa !91
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %20, label %7, !llvm.loop !194
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13resetDocumentEv(ptr nocapture noundef %0) unnamed_addr #18 align 2 !prof !69 {
  %2 = getelementptr inbounds i8, ptr %0, i64 44
  %3 = load i32, ptr %2, align 4, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5, !prof !93

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %14, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds i8, ptr %0, i64 184
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds ptr, ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %14 = add nuw nsw i64 %6, 1
  %15 = load i32, ptr %2, align 4, !tbaa !91
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %5, label %18, !prof !99, !llvm.loop !194

18:                                               ; preds = %5, %1
  %19 = getelementptr inbounds i8, ptr %0, i64 40
  store i32 0, ptr %19, align 8, !tbaa !90
  %20 = getelementptr inbounds i8, ptr %0, i64 120
  %21 = load ptr, ptr %20, align 8, !tbaa !110
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %21, i64 0, i32 1, i32 1
  store i32 0, ptr %22, align 4, !tbaa !132
  %23 = getelementptr inbounds i8, ptr %0, i64 112
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %24, i64 0, i32 1, i32 1
  store i32 0, ptr %25, align 4, !tbaa !132
  %26 = getelementptr inbounds i8, ptr %0, i64 104
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds ptr, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(40) %27), !prof !195
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !99

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %7, i64 0, i32 49
  %9 = load ptr, ptr %3, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %8), !prof !196
  %12 = load ptr, ptr %2, align 8, !tbaa !153
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12), !prof !197
  br label %16

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !91
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !93

20:                                               ; preds = %21, %16
  ret void

21:                                               ; preds = %16, %21
  %22 = phi i64 [ %30, %21 ], [ 0, %16 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !141
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %30 = add nuw nsw i64 %22, 1
  %31 = load i32, ptr %17, align 4, !tbaa !91
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %21, label %20, !prof !99, !llvm.loop !198
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #18 align 2 !prof !69 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(248) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  br i1 %6, label %13, label %9, !prof !200

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !90
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !90
  br label %13

13:                                               ; preds = %9, %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = icmp eq ptr %15, null
  br i1 %16, label %287, label %17, !prof !200

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !201
  %20 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %19)
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %22, i64 0, i32 4
  %24 = load i8, ptr %23, align 2, !tbaa !117, !range !169, !noundef !170
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %234, label %26, !prof !200

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !73, !range !169, !noundef !170
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36, !prof !200

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(40) %32)
  br label %36

36:                                               ; preds = %30, %26
  %37 = icmp eq i32 %5, 0
  br i1 %37, label %40, label %38, !prof !204

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  br label %96

40:                                               ; preds = %210, %36
  %41 = phi i32 [ 0, %36 ], [ %211, %210 ]
  %42 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !110
  %44 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !132
  %46 = add i32 %45, 1
  %47 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !133
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %84, !prof !205

50:                                               ; preds = %40
  %51 = uitofp i32 %45 to double
  %52 = fmul double %51, 1.250000e+00
  %53 = fptoui double %52 to i32
  %54 = tail call i32 @llvm.umax.i32(i32 %46, i32 %53)
  %55 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !104
  %57 = zext i32 %54 to i64
  %58 = shl nuw nsw i64 %57, 2
  %59 = load ptr, ptr %56, align 8, !tbaa !70
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef %58), !prof !206
  %63 = load i32, ptr %44, align 4, !tbaa !132
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65, !prof !207

65:                                               ; preds = %50
  %66 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !106
  br label %75

68:                                               ; preds = %75, %50
  %69 = load ptr, ptr %55, align 8, !tbaa !104
  %70 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !106
  %72 = load ptr, ptr %69, align 8, !tbaa !70
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  tail call void %74(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %71), !prof !208
  store ptr %62, ptr %70, align 8, !tbaa !106
  store i32 %54, ptr %47, align 8, !tbaa !133
  br label %84

75:                                               ; preds = %75, %65
  %76 = phi i64 [ 0, %65 ], [ %80, %75 ]
  %77 = getelementptr inbounds i32, ptr %67, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !209
  %79 = getelementptr inbounds i32, ptr %62, i64 %76
  store i32 %78, ptr %79, align 4, !tbaa !209
  %80 = add nuw nsw i64 %76, 1
  %81 = load i32, ptr %44, align 4, !tbaa !132
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %75, label %68, !prof !210, !llvm.loop !211

84:                                               ; preds = %40, %68
  %85 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !106
  %87 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !132
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %86, i64 %89
  store i32 %41, ptr %90, align 4, !tbaa !209
  %91 = load i32, ptr %87, align 4, !tbaa !132
  %92 = add i32 %91, 1
  store i32 %92, ptr %87, align 4, !tbaa !132
  %93 = load i8, ptr %27, align 8, !tbaa !73, !range !169, !noundef !170
  %94 = icmp eq i8 %93, 0
  %95 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  br i1 %94, label %215, label %221, !prof !200

96:                                               ; preds = %38, %210
  %97 = phi i64 [ 0, %38 ], [ %213, %210 ]
  %98 = phi i32 [ 0, %38 ], [ %211, %210 ]
  %99 = load i32, ptr %39, align 4, !tbaa !137
  %100 = zext i32 %99 to i64
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %109, label %102, !prof !212

102:                                              ; preds = %96
  %103 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %104 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull @.str.5, i32 noundef 241, i32 noundef 116, ptr noundef %105)
          to label %106 unwind label %107

106:                                              ; preds = %102
  tail call void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

107:                                              ; preds = %102
  %108 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %103) #24
  resume { ptr, i32 } %108

109:                                              ; preds = %96
  %110 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !139
  %112 = getelementptr inbounds ptr, ptr %111, i64 %97
  %113 = load ptr, ptr %112, align 8, !tbaa !141
  %114 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %113)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116, !prof !213

116:                                              ; preds = %109
  %117 = load i16, ptr %114, align 2, !tbaa !177
  %118 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !177
  %119 = icmp eq i16 %117, %118
  br i1 %119, label %123, label %137, !prof !214

120:                                              ; preds = %109
  %121 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !177
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %134, label %137

123:                                              ; preds = %116, %128
  %124 = phi i16 [ %131, %128 ], [ %117, %116 ]
  %125 = phi ptr [ %130, %128 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %116 ]
  %126 = phi ptr [ %129, %128 ], [ %114, %116 ]
  %127 = icmp eq i16 %124, 0
  br i1 %127, label %134, label %128, !prof !215

128:                                              ; preds = %123
  %129 = getelementptr inbounds i16, ptr %126, i64 1
  %130 = getelementptr inbounds i16, ptr %125, i64 1
  %131 = load i16, ptr %129, align 2, !tbaa !177
  %132 = load i16, ptr %130, align 2, !tbaa !177
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %123, label %137, !prof !216, !llvm.loop !217

134:                                              ; preds = %123, %120
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %113, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !218
  br label %137

137:                                              ; preds = %128, %116, %134, %120
  %138 = phi ptr [ %136, %134 ], [ null, %120 ], [ null, %116 ], [ null, %128 ]
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %113, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !221
  %141 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %140, i64 0, i32 5
  %142 = load ptr, ptr %141, align 8, !tbaa !222
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144, !prof !213

144:                                              ; preds = %137
  %145 = load i16, ptr %142, align 2, !tbaa !177
  %146 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !177
  %147 = icmp eq i16 %145, %146
  br i1 %147, label %151, label %167, !prof !224

148:                                              ; preds = %137
  %149 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !177
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %162, label %167

151:                                              ; preds = %144, %156
  %152 = phi i16 [ %159, %156 ], [ %145, %144 ]
  %153 = phi ptr [ %158, %156 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %144 ]
  %154 = phi ptr [ %157, %156 ], [ %142, %144 ]
  %155 = icmp eq i16 %152, 0
  br i1 %155, label %162, label %156, !prof !225

156:                                              ; preds = %151
  %157 = getelementptr inbounds i16, ptr %154, i64 1
  %158 = getelementptr inbounds i16, ptr %153, i64 1
  %159 = load i16, ptr %157, align 2, !tbaa !177
  %160 = load i16, ptr %158, align 2, !tbaa !177
  %161 = icmp eq i16 %159, %160
  br i1 %161, label %151, label %167, !prof !226, !llvm.loop !217

162:                                              ; preds = %151, %148
  %163 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %140, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !227
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %113, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !218
  br label %167

167:                                              ; preds = %156, %144, %162, %148
  %168 = phi ptr [ %164, %162 ], [ null, %148 ], [ null, %144 ], [ null, %156 ]
  %169 = phi ptr [ %166, %162 ], [ %138, %148 ], [ %138, %144 ], [ %138, %156 ]
  %170 = load i8, ptr %27, align 8, !tbaa !73, !range !169, !noundef !170
  %171 = icmp eq i8 %170, 0
  %172 = icmp eq ptr %169, null
  %173 = and i1 %172, %171
  br i1 %173, label %174, label %184, !prof !213

174:                                              ; preds = %167
  %175 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %176 = load ptr, ptr %175, align 8, !tbaa !108
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %176, i32 noundef 1)
  %177 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %176, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !139
  %179 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %176, i64 0, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !137
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds ptr, ptr %178, i64 %181
  store ptr %113, ptr %182, align 8, !tbaa !141
  %183 = add i32 %180, 1
  store i32 %183, ptr %179, align 4, !tbaa !137
  br label %184

184:                                              ; preds = %174, %167
  br i1 %172, label %210, label %185, !prof !228

185:                                              ; preds = %184
  %186 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  %187 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %188 = icmp eq ptr %168, null
  %189 = select i1 %188, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %168, !prof !229
  %190 = load ptr, ptr %14, align 8, !tbaa !153
  %191 = load ptr, ptr %190, align 8, !tbaa !70
  %192 = getelementptr inbounds ptr, ptr %191, i64 10
  %193 = load ptr, ptr %192, align 8
  tail call void %193(ptr noundef nonnull align 8 dereferenceable(8) %190, ptr noundef nonnull %189, ptr noundef nonnull %169), !prof !230
  %194 = load ptr, ptr %186, align 8, !tbaa !101
  %195 = load ptr, ptr %194, align 8, !tbaa !70
  %196 = getelementptr inbounds ptr, ptr %195, i64 5
  %197 = load ptr, ptr %196, align 8
  %198 = tail call noundef i32 %197(ptr noundef nonnull align 8 dereferenceable(40) %194, ptr noundef nonnull %189), !prof !231
  %199 = load ptr, ptr %187, align 8, !tbaa !103
  %200 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %199, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %200, i32 noundef 1)
  %201 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %199, i64 0, i32 1, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !106
  %203 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %199, i64 0, i32 1, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !132
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %202, i64 %205
  store i32 %198, ptr %206, align 4, !tbaa !209
  %207 = load i32, ptr %203, align 4, !tbaa !132
  %208 = add i32 %207, 1
  store i32 %208, ptr %203, align 4, !tbaa !132
  %209 = add i32 %98, 1
  br label %210

210:                                              ; preds = %185, %184
  %211 = phi i32 [ %98, %184 ], [ %209, %185 ]
  %212 = zext i32 %5 to i64
  %213 = add nuw nsw i64 %97, 1
  %214 = icmp eq i64 %213, %212
  br i1 %214, label %40, label %96, !prof !232, !llvm.loop !233

215:                                              ; preds = %84
  %216 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 15
  %217 = load ptr, ptr %216, align 8, !tbaa !108
  %218 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %217, i64 0, i32 2
  %219 = load i32, ptr %218, align 4, !tbaa !137
  %220 = load ptr, ptr %21, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull %217, i32 noundef %219, ptr noundef %220, i1 noundef zeroext false)
  br label %223

221:                                              ; preds = %84
  %222 = load ptr, ptr %21, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %222, i1 noundef zeroext false)
  br label %223

223:                                              ; preds = %221, %215
  %224 = load ptr, ptr %14, align 8, !tbaa !153
  %225 = load ptr, ptr %21, align 8, !tbaa !98
  %226 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %225, i32 noundef %2)
  %227 = load ptr, ptr %18, align 8, !tbaa !201
  %228 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %227, i64 0, i32 6
  %229 = load ptr, ptr %228, align 8, !tbaa !227
  %230 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  %231 = load ptr, ptr %224, align 8, !tbaa !70
  %232 = getelementptr inbounds ptr, ptr %231, i64 9
  %233 = load ptr, ptr %232, align 8
  tail call void %233(ptr noundef nonnull align 8 dereferenceable(8) %224, ptr noundef %226, ptr noundef %229, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %230), !prof !234
  br label %243

234:                                              ; preds = %17
  %235 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32) %235, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %22, i1 noundef zeroext false)
  %236 = load ptr, ptr %14, align 8, !tbaa !153
  %237 = load ptr, ptr %18, align 8, !tbaa !201
  %238 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %237, i64 0, i32 6
  %239 = load ptr, ptr %238, align 8, !tbaa !227
  %240 = load ptr, ptr %236, align 8, !tbaa !70
  %241 = getelementptr inbounds ptr, ptr %240, i64 9
  %242 = load ptr, ptr %241, align 8
  tail call void %242(ptr noundef nonnull align 8 dereferenceable(8) %236, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %239, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %235)
  br label %243

243:                                              ; preds = %234, %223
  br i1 %6, label %244, label %287, !prof !200

244:                                              ; preds = %243
  %245 = load ptr, ptr %21, align 8, !tbaa !98
  %246 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %245, i64 0, i32 4
  %247 = load i8, ptr %246, align 2, !tbaa !117, !range !169, !noundef !170
  %248 = icmp eq i8 %247, 0
  %249 = load ptr, ptr %14, align 8, !tbaa !153
  br i1 %248, label %280, label %250

250:                                              ; preds = %244
  %251 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %245, i32 noundef %2)
  %252 = load ptr, ptr %18, align 8, !tbaa !201
  %253 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %252, i64 0, i32 6
  %254 = load ptr, ptr %253, align 8, !tbaa !227
  %255 = load ptr, ptr %249, align 8, !tbaa !70
  %256 = getelementptr inbounds ptr, ptr %255, i64 4
  %257 = load ptr, ptr %256, align 8
  tail call void %257(ptr noundef nonnull align 8 dereferenceable(8) %249, ptr noundef %251, ptr noundef %254, ptr noundef %20)
  %258 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %259 = load ptr, ptr %258, align 8, !tbaa !110
  %260 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %259)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %287, label %262

262:                                              ; preds = %250
  %263 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %264 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  br label %265

265:                                              ; preds = %262, %265
  %266 = phi i32 [ 0, %262 ], [ %278, %265 ]
  %267 = load ptr, ptr %263, align 8, !tbaa !103
  %268 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %267)
  %269 = load ptr, ptr %14, align 8, !tbaa !153
  %270 = load ptr, ptr %264, align 8, !tbaa !101
  %271 = load ptr, ptr %270, align 8, !tbaa !70
  %272 = getelementptr inbounds ptr, ptr %271, i64 10
  %273 = load ptr, ptr %272, align 8
  %274 = tail call noundef ptr %273(ptr noundef nonnull align 8 dereferenceable(40) %270, i32 noundef %268)
  %275 = load ptr, ptr %269, align 8, !tbaa !70
  %276 = getelementptr inbounds ptr, ptr %275, i64 11
  %277 = load ptr, ptr %276, align 8
  tail call void %277(ptr noundef nonnull align 8 dereferenceable(8) %269, ptr noundef %274)
  %278 = add nuw i32 %266, 1
  %279 = icmp eq i32 %278, %260
  br i1 %279, label %287, label %265, !llvm.loop !235

280:                                              ; preds = %244
  %281 = load ptr, ptr %18, align 8, !tbaa !201
  %282 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %281, i64 0, i32 6
  %283 = load ptr, ptr %282, align 8, !tbaa !227
  %284 = load ptr, ptr %249, align 8, !tbaa !70
  %285 = getelementptr inbounds ptr, ptr %284, i64 4
  %286 = load ptr, ptr %285, align 8
  tail call void %286(ptr noundef nonnull align 8 dereferenceable(8) %249, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %283, ptr noundef %20)
  br label %287

287:                                              ; preds = %265, %250, %243, %280, %13
  %288 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %289 = load i32, ptr %288, align 4, !tbaa !91
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292, !prof !93

291:                                              ; preds = %292, %287
  ret void

292:                                              ; preds = %287, %292
  %293 = phi i64 [ %301, %292 ], [ 0, %287 ]
  %294 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %295 = load ptr, ptr %294, align 8, !tbaa !96
  %296 = getelementptr inbounds ptr, ptr %295, i64 %293
  %297 = load ptr, ptr %296, align 8, !tbaa !141
  %298 = load ptr, ptr %297, align 8, !tbaa !70
  %299 = getelementptr inbounds ptr, ptr %298, i64 11
  %300 = load ptr, ptr %299, align 8
  tail call void %300(ptr noundef nonnull align 8 dereferenceable(8) %297, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7)
  %301 = add nuw nsw i64 %293, 1
  %302 = load i32, ptr %288, align 4, !tbaa !91
  %303 = zext i32 %302 to i64
  %304 = icmp ult i64 %301, %303
  br i1 %304, label %292, label %291, !prof !99, !llvm.loop !236
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) local_unnamed_addr #14 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 2, !tbaa !117, !range !169, !noundef !170
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !238

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.6, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #24
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !132
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !239

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.7, i32 noundef 206, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = zext i32 %16 to i64
  %32 = getelementptr inbounds i32, ptr %30, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !209
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %16)
  ret i32 %33
}

; Function Attrs: uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #17 align 2 !prof !199 {
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(248) %9, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #16 align 2 !prof !199 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9, !prof !200

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %11, i64 0, i32 4
  %13 = load i8, ptr %12, align 2, !tbaa !117, !range !169, !noundef !170
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %47, label %15, !prof !200

15:                                               ; preds = %9
  %16 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %11, i32 noundef %2)
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !201
  %19 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !227
  %21 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %18)
  %22 = load ptr, ptr %7, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %16, ptr noundef %20, ptr noundef %21), !prof !240
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %29, !prof !241

29:                                               ; preds = %15
  %30 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 17
  %31 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 16
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i32 [ 0, %29 ], [ %45, %32 ]
  %34 = load ptr, ptr %30, align 8, !tbaa !103
  %35 = tail call noundef i32 @_ZN11xercesc_2_712ValueStackOfIjE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %34)
  %36 = load ptr, ptr %6, align 8, !tbaa !153
  %37 = load ptr, ptr %31, align 8, !tbaa !101
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  %39 = getelementptr inbounds ptr, ptr %38, i64 10
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(40) %37, i32 noundef %35), !prof !242
  %42 = load ptr, ptr %36, align 8, !tbaa !70
  %43 = getelementptr inbounds ptr, ptr %42, i64 11
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %41), !prof !243
  %45 = add nuw i32 %33, 1
  %46 = icmp eq i32 %45, %27
  br i1 %46, label %56, label %32, !prof !244, !llvm.loop !245

47:                                               ; preds = %9
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !201
  %50 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !227
  %52 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %49)
  %53 = load ptr, ptr %7, align 8, !tbaa !70
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %51, ptr noundef %52)
  br label %56

56:                                               ; preds = %32, %15, %47, %5
  %57 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %58 = load i32, ptr %57, align 4, !tbaa !91
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64, !prof !93

60:                                               ; preds = %64, %56
  %61 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 10
  %62 = load i32, ptr %61, align 8, !tbaa !90
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %79, label %77, !prof !200

64:                                               ; preds = %56, %64
  %65 = phi i64 [ %73, %64 ], [ 0, %56 ]
  %66 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  %68 = getelementptr inbounds ptr, ptr %67, i64 %65
  %69 = load ptr, ptr %68, align 8, !tbaa !141
  %70 = load ptr, ptr %69, align 8, !tbaa !70
  %71 = getelementptr inbounds ptr, ptr %70, i64 6
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  %73 = add nuw nsw i64 %65, 1
  %74 = load i32, ptr %57, align 4, !tbaa !91
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %64, label %60, !prof !99, !llvm.loop !246

77:                                               ; preds = %60
  %78 = add i32 %62, -1
  store i32 %78, ptr %61, align 8, !tbaa !90
  br label %79

79:                                               ; preds = %77, %60
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #17 align 2 !prof !199 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = load ptr, ptr %4, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8)
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !91
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 26
  br label %19

18:                                               ; preds = %19, %12
  ret void

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %27, %19 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !96
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %27 = add nuw nsw i64 %20, 1
  %28 = load i32, ptr %13, align 4, !tbaa !91
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %19, label %18, !llvm.loop !247
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #18 align 2 !prof !68 {
  %3 = getelementptr inbounds i8, ptr %0, i64 168
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = load ptr, ptr %4, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8)
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds i8, ptr %0, i64 44
  %14 = load i32, ptr %13, align 4, !tbaa !91
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %0, i64 184
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %26, %18 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !96
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !141
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %13, align 4, !tbaa !91
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %30, !llvm.loop !247

30:                                               ; preds = %18, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = icmp eq ptr %7, null
  %9 = or i1 %8, %3
  br i1 %9, label %171, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !248
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !252
  %15 = icmp eq i32 %12, 8
  %16 = and i32 %12, -2
  %17 = icmp eq i32 %16, 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #24
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  store i32 0, ptr %5, align 8, !tbaa !253
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 1
  store i32 128, ptr %20, align 4, !tbaa !254
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 2
  store i32 0, ptr %21, align 8, !tbaa !255
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 3
  store i8 0, ptr %22, align 4, !tbaa !256
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 4
  store ptr %19, ptr %23, align 8, !tbaa !257
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 5
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %26 = load ptr, ptr %19, align 8, !tbaa !70
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 258)
  store ptr %29, ptr %25, align 8, !tbaa !258
  store i16 0, ptr %29, align 2, !tbaa !177
  switch i32 %14, label %35 [
    i32 4, label %30
    i32 2, label %30
    i32 1, label %30
  ]

30:                                               ; preds = %10, %10, %10
  %31 = load ptr, ptr %18, align 8, !tbaa !94
  %32 = invoke noundef ptr @_ZN11xercesc_2_79XMLAttDef19getDefAttTypeStringENS0_11DefAttTypesEPNS_13MemoryManagerE(i32 noundef %14, ptr noundef %31)
          to label %35 unwind label %33

33:                                               ; preds = %123, %143, %139, %128, %30
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %160

35:                                               ; preds = %10, %30
  %36 = phi ptr [ %32, %30 ], [ @_ZN11xercesc_2_76XMLUni12fgNullStringE, %10 ]
  br i1 %17, label %37, label %123

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !259
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = load i16, ptr %39, align 2, !tbaa !177
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %46, %44 ], [ %39, %41 ]
  %46 = getelementptr inbounds i16, ptr %45, i64 1
  %47 = load i16, ptr %46, align 2, !tbaa !177
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %44, !llvm.loop !179

49:                                               ; preds = %44
  %50 = ptrtoint ptr %46 to i64
  %51 = ptrtoint ptr %39 to i64
  %52 = sub i64 %50, %51
  %53 = lshr exact i64 %52, 1
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %37, %41, %49
  %56 = phi i32 [ %54, %49 ], [ 0, %41 ], [ 0, %37 ]
  br i1 %15, label %57, label %71

57:                                               ; preds = %55
  store i32 0, ptr %5, align 8, !tbaa !253
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE)
          to label %58 unwind label %69

58:                                               ; preds = %57
  %59 = load i32, ptr %5, align 8, !tbaa !253
  %60 = load i32, ptr %20, align 4, !tbaa !254
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %63 unwind label %69

63:                                               ; preds = %62, %58
  %64 = load ptr, ptr %25, align 8, !tbaa !258
  %65 = load i32, ptr %5, align 8, !tbaa !253
  %66 = add i32 %65, 1
  store i32 %66, ptr %5, align 8, !tbaa !253
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i16, ptr %64, i64 %67
  store i16 32, ptr %68, align 2, !tbaa !177
  br label %71

69:                                               ; preds = %89, %75, %62, %57
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %160

71:                                               ; preds = %63, %55
  %72 = load i32, ptr %5, align 8, !tbaa !253
  %73 = load i32, ptr %20, align 4, !tbaa !254
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %76 unwind label %69

76:                                               ; preds = %75, %71
  %77 = load ptr, ptr %25, align 8, !tbaa !258
  %78 = load i32, ptr %5, align 8, !tbaa !253
  %79 = add i32 %78, 1
  store i32 %79, ptr %5, align 8, !tbaa !253
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i16, ptr %77, i64 %80
  store i16 40, ptr %81, align 2, !tbaa !177
  %82 = icmp eq i32 %56, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = zext i32 %56 to i64
  br label %96

85:                                               ; preds = %114, %76
  %86 = load i32, ptr %5, align 8, !tbaa !253
  %87 = load i32, ptr %20, align 4, !tbaa !254
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %90 unwind label %69

90:                                               ; preds = %89, %85
  %91 = load ptr, ptr %25, align 8, !tbaa !258
  %92 = load i32, ptr %5, align 8, !tbaa !253
  %93 = add i32 %92, 1
  store i32 %93, ptr %5, align 8, !tbaa !253
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i16, ptr %91, i64 %94
  store i16 41, ptr %95, align 2, !tbaa !177
  br label %123

96:                                               ; preds = %83, %114
  %97 = phi i64 [ 0, %83 ], [ %121, %114 ]
  %98 = getelementptr inbounds i16, ptr %39, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !177
  %100 = icmp eq i16 %99, 32
  %101 = load i32, ptr %5, align 8, !tbaa !253
  %102 = load i32, ptr %20, align 4, !tbaa !254
  %103 = icmp eq i32 %101, %102
  br i1 %100, label %104, label %110

104:                                              ; preds = %96
  br i1 %103, label %105, label %106

105:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %106 unwind label %108

106:                                              ; preds = %105, %104
  %107 = load ptr, ptr %25, align 8, !tbaa !258
  br label %114

108:                                              ; preds = %111, %105
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %160

110:                                              ; preds = %96
  br i1 %103, label %111, label %112

111:                                              ; preds = %110
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %112 unwind label %108

112:                                              ; preds = %111, %110
  %113 = load ptr, ptr %25, align 8, !tbaa !258
  br label %114

114:                                              ; preds = %112, %106
  %115 = phi ptr [ %113, %112 ], [ %107, %106 ]
  %116 = phi i16 [ %99, %112 ], [ 124, %106 ]
  %117 = load i32, ptr %5, align 8, !tbaa !253
  %118 = add i32 %117, 1
  store i32 %118, ptr %5, align 8, !tbaa !253
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i16, ptr %115, i64 %119
  store i16 %116, ptr %120, align 2, !tbaa !177
  %121 = add nuw nsw i64 %97, 1
  %122 = icmp eq i64 %121, %84
  br i1 %122, label %85, label %96, !llvm.loop !260

123:                                              ; preds = %35, %90
  %124 = load ptr, ptr %6, align 8, !tbaa !162
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !201
  %127 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %126)
          to label %128 unwind label %33

128:                                              ; preds = %123
  %129 = load ptr, ptr %2, align 8, !tbaa !70
  %130 = getelementptr inbounds ptr, ptr %129, i64 5
  %131 = load ptr, ptr %130, align 8
  %132 = invoke noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %133 unwind label %33

133:                                              ; preds = %128
  br i1 %17, label %134, label %139

134:                                              ; preds = %133
  %135 = load ptr, ptr %25, align 8, !tbaa !258
  %136 = load i32, ptr %5, align 8, !tbaa !253
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i16, ptr %135, i64 %137
  store i16 0, ptr %138, align 2, !tbaa !177
  br label %143

139:                                              ; preds = %133
  %140 = load i32, ptr %11, align 4, !tbaa !248
  %141 = load ptr, ptr %18, align 8, !tbaa !94
  %142 = invoke noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %140, ptr noundef %141)
          to label %143 unwind label %33

143:                                              ; preds = %139, %134
  %144 = phi ptr [ %135, %134 ], [ %142, %139 ]
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !261
  %147 = load ptr, ptr %124, align 8, !tbaa !70
  %148 = getelementptr inbounds ptr, ptr %147, i64 3
  %149 = load ptr, ptr %148, align 8
  invoke void %149(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef %127, ptr noundef %132, ptr noundef %144, ptr noundef %36, ptr noundef %146)
          to label %150 unwind label %33

150:                                              ; preds = %143
  %151 = load ptr, ptr %23, align 8, !tbaa !257
  %152 = load ptr, ptr %25, align 8, !tbaa !258
  %153 = load ptr, ptr %151, align 8, !tbaa !70
  %154 = getelementptr inbounds ptr, ptr %153, i64 3
  %155 = load ptr, ptr %154, align 8
  invoke void %155(ptr noundef nonnull align 8 dereferenceable(8) %151, ptr noundef %152)
          to label %159 unwind label %156

156:                                              ; preds = %150
  %157 = landingpad { ptr, i32 }
          catch ptr null
  %158 = extractvalue { ptr, i32 } %157, 0
  call void @__clang_call_terminate(ptr %158) #25
  unreachable

159:                                              ; preds = %150
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #24
  br label %171

160:                                              ; preds = %69, %108, %33
  %161 = phi { ptr, i32 } [ %34, %33 ], [ %109, %108 ], [ %70, %69 ]
  %162 = load ptr, ptr %23, align 8, !tbaa !257
  %163 = load ptr, ptr %25, align 8, !tbaa !258
  %164 = load ptr, ptr %162, align 8, !tbaa !70
  %165 = getelementptr inbounds ptr, ptr %164, i64 3
  %166 = load ptr, ptr %165, align 8
  invoke void %166(ptr noundef nonnull align 8 dereferenceable(8) %162, ptr noundef %163)
          to label %170 unwind label %167

167:                                              ; preds = %160
  %168 = landingpad { ptr, i32 }
          catch ptr null
  %169 = extractvalue { ptr, i32 } %168, 0
  call void @__clang_call_terminate(ptr %169) #25
  unreachable

170:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #24
  resume { ptr, i32 } %161

171:                                              ; preds = %4, %159
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLAttDef19getDefAttTypeStringENS0_11DefAttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #18 align 2 !prof !68 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %1, align 2, !tbaa !177
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %1, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !177
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !179

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %6, %8, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %6 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %23)
  br label %27

27:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14doctypeCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #18 align 2 !prof !68 {
  %3 = getelementptr inbounds i8, ptr %0, i64 144
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %1, align 2, !tbaa !177
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %1, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !177
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !179

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %16, %8, %6
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %6 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %23)
  br label %27

27:                                               ; preds = %2, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #4 align 2 !prof !68 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = icmp ne ptr %8, null
  %10 = or i1 %4, %5
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !201
  %15 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %16 = load ptr, ptr %8, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %15, ptr noundef %2, ptr noundef %3)
  br label %19

19:                                               ; preds = %12, %6
  %20 = zext i1 %5 to i8
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 %20, ptr %21, align 4, !tbaa !89
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #18 align 2 !prof !68 {
  %7 = getelementptr inbounds i8, ptr %0, i64 144
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = icmp ne ptr %8, null
  %10 = or i1 %4, %5
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !201
  %15 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %16 = load ptr, ptr %8, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %15, ptr noundef %2, ptr noundef %3)
  br label %19

19:                                               ; preds = %6, %12
  %20 = zext i1 %5 to i8
  %21 = getelementptr inbounds i8, ptr %0, i64 12
  store i8 %20, ptr %21, align 4, !tbaa !89
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl9doctypePIEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl17doctypeWhitespaceEPKtj(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %12 = load ptr, ptr %1, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %12, i64 15
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(80) %1)
  %16 = load ptr, ptr %5, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11, ptr noundef %15)
  br label %19

19:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #18 align 2 !prof !68 {
  %4 = getelementptr inbounds i8, ptr %0, i64 152
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %12 = load ptr, ptr %1, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %12, i64 15
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(80) %1)
  %16 = load ptr, ptr %5, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11, ptr noundef %15)
  br label %19

19:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10endAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 4, !tbaa !89, !range !169, !noundef !170
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !70
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %13

13:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #18 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 12
  %3 = load i8, ptr %2, align 4, !tbaa !89, !range !169, !noundef !170
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 144
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !70
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %13

13:                                               ; preds = %1, %5, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE)
  %9 = load ptr, ptr %2, align 8, !tbaa !161
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12endExtSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #18 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 144
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE)
  %9 = load ptr, ptr %2, align 8, !tbaa !161
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %13

13:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  br i1 %3, label %97, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !262
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  %13 = icmp eq ptr %12, null
  br i1 %13, label %97, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !263
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !264
  %21 = load ptr, ptr %12, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %16, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %8)
  br label %97

24:                                               ; preds = %6
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %26 = load ptr, ptr %25, align 8, !tbaa !162
  %27 = icmp eq ptr %26, null
  br i1 %27, label %97, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %31 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %2, label %32, label %72

32:                                               ; preds = %28
  %33 = icmp eq ptr %30, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %32
  %35 = load i16, ptr %30, align 2, !tbaa !177
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %39, %37 ], [ %30, %34 ]
  %39 = getelementptr inbounds i16, ptr %38, i64 1
  %40 = load i16, ptr %39, align 2, !tbaa !177
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %37, !llvm.loop !179

42:                                               ; preds = %37
  %43 = ptrtoint ptr %39 to i64
  %44 = ptrtoint ptr %30 to i64
  %45 = sub i64 %43, %44
  %46 = add i64 %45, 4
  %47 = and i64 %46, 8589934590
  br label %48

48:                                               ; preds = %32, %34, %42
  %49 = phi i64 [ %47, %42 ], [ 4, %34 ], [ 4, %32 ]
  %50 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  %52 = load ptr, ptr %51, align 8, !tbaa !70
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %49)
          to label %56 unwind label %70

56:                                               ; preds = %48
  %57 = load ptr, ptr %50, align 8, !tbaa !94
  %58 = load ptr, ptr %5, align 8, !tbaa !265
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %31, align 8, !tbaa !267
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !70
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull %58)
          to label %68 unwind label %70

67:                                               ; preds = %60
  tail call void @_ZdaPv(ptr noundef %58) #27
  br label %68

68:                                               ; preds = %63, %56, %67
  store ptr %55, ptr %5, align 8, !tbaa !265
  store ptr %57, ptr %31, align 8, !tbaa !267
  store i16 37, ptr %55, align 2, !tbaa !177
  %69 = getelementptr inbounds i16, ptr %55, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %69, ptr noundef %30)
          to label %72 unwind label %70

70:                                               ; preds = %63, %68, %48
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %95

72:                                               ; preds = %68, %28
  %73 = phi ptr [ %30, %28 ], [ %55, %68 ]
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !263
  %76 = icmp ne ptr %75, null
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8
  %79 = icmp ne ptr %78, null
  %80 = select i1 %76, i1 true, i1 %79
  %81 = load ptr, ptr %25, align 8, !tbaa !162
  br i1 %80, label %82, label %88

82:                                               ; preds = %72
  %83 = load ptr, ptr %81, align 8, !tbaa !70
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %73, ptr noundef %75, ptr noundef %78)
          to label %94 unwind label %86

86:                                               ; preds = %88, %82
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %95

88:                                               ; preds = %72
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !268
  %91 = load ptr, ptr %81, align 8, !tbaa !70
  %92 = getelementptr inbounds ptr, ptr %91, i64 4
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %73, ptr noundef %90)
          to label %94 unwind label %86

94:                                               ; preds = %88, %82
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  br label %97

95:                                               ; preds = %86, %70
  %96 = phi { ptr, i32 } [ %87, %86 ], [ %71, %70 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  resume { ptr, i32 } %96

97:                                               ; preds = %14, %10, %94, %24, %4
  ret void
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !265
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !270

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !271

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !272

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #27
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #25
  unreachable
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #18 align 2 !prof !68 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %2, align 4, !tbaa !89
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !70
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12resetDocTypeEv(ptr nocapture noundef %0) unnamed_addr #18 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 12
  store i8 0, ptr %2, align 4, !tbaa !89
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !70
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %10

10:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !273
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !275
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !276
  %15 = load ptr, ptr %5, align 8, !tbaa !70
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10, ptr noundef %12, ptr noundef %14)
  br label %18

18:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #18 align 2 !prof !68 {
  %4 = getelementptr inbounds i8, ptr %0, i64 104
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !273
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !275
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !276
  %15 = load ptr, ptr %5, align 8, !tbaa !70
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10, ptr noundef %12, ptr noundef %14)
  br label %18

18:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl12startAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startIntSubsetEv(ptr nocapture readnone %0) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl14startExtSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #18 align 2 !prof !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 144
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13gDTDEntityStrE)
  br label %9

9:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717SAX2XMLReaderImpl8TextDeclEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14endInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #19 align 2 !prof !68 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #19 align 2 !prof !68 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resetEntitiesEv(ptr nocapture readnone %0) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #4 align 2 !prof !68 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #18 align 2 !prof !68 {
  %5 = getelementptr inbounds i8, ptr %0, i64 120
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !277
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !280
  %11 = load ptr, ptr %4, align 8, !tbaa !70
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !166
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !70
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %15, %19, %6
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #18 align 2 !prof !68 {
  %3 = getelementptr inbounds i8, ptr %0, i64 120
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !277
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !280
  %11 = load ptr, ptr %4, align 8, !tbaa !70
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %0, i64 128
  %17 = load ptr, ptr %16, align 8, !tbaa !166
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !70
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %6, %15, %19
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717SAX2XMLReaderImpl16startInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #19 align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl11resetErrorsEv(ptr nocapture noundef readonly %0) unnamed_addr #18 align 2 !prof !69 {
  %2 = getelementptr inbounds i8, ptr %0, i64 144
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !99

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3), !prof !281
  br label %9

9:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #24
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12)
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #24
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #26
          to label %36 unwind label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #24
  br label %34

23:                                               ; preds = %25, %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %34

25:                                               ; preds = %9
  %26 = load ptr, ptr %14, align 8, !tbaa !70
  %27 = icmp eq i32 %3, 2
  %28 = select i1 %27, i64 4, i64 3
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, i64 2, i64 %28
  %31 = getelementptr inbounds ptr, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %33 unwind label %23

33:                                               ; preds = %25, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #24
  ret void

34:                                               ; preds = %23, %21
  %35 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #24
  resume { ptr, i32 } %35

36:                                               ; preds = %20
  unreachable
}

declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #18 align 2 !prof !68 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717SAX2XMLReaderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(248) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !282 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !88, !range !169, !noundef !170
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8, !prof !283

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #24
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.1, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724SAXNotSupportedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #26
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %196

15:                                               ; preds = %3
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !284

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %20, i64 0, i32 4
  store i8 %4, ptr %21, align 2, !tbaa !117
  br label %195

22:                                               ; preds = %15
  %23 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42, !prof !285

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  store i8 %4, ptr %26, align 2, !tbaa !87
  br i1 %2, label %27, label %37

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  %29 = load i8, ptr %28, align 1, !tbaa !86, !range !169, !noundef !170
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %32, i64 0, i32 51
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %32, i64 0, i32 10
  br i1 %30, label %36, label %35

35:                                               ; preds = %27
  store i32 2, ptr %33, align 8, !tbaa !286
  store i8 0, ptr %34, align 8, !tbaa !287
  br label %195

36:                                               ; preds = %27
  store i32 1, ptr %33, align 8, !tbaa !286
  store i8 1, ptr %34, align 8, !tbaa !287
  br label %195

37:                                               ; preds = %25
  %38 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %39, i64 0, i32 51
  store i32 0, ptr %40, align 8, !tbaa !286
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %39, i64 0, i32 10
  store i8 0, ptr %41, align 8, !tbaa !287
  br label %195

42:                                               ; preds = %22
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgSAX2CoreNameSpacePrefixesE)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47, !prof !288

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  store i8 %4, ptr %46, align 8, !tbaa !73
  br label %195

47:                                               ; preds = %42
  %48 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXercesDynamicE)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64, !prof !229

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  store i8 %4, ptr %51, align 1, !tbaa !86
  %52 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  %53 = load i8, ptr %52, align 2, !tbaa !87, !range !169, !noundef !170
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %56 = load ptr, ptr %55, align 8, !tbaa !98
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %56, i64 0, i32 51
  br i1 %54, label %62, label %58, !prof !99

58:                                               ; preds = %50
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %56, i64 0, i32 10
  br i1 %2, label %60, label %61, !prof !93

60:                                               ; preds = %58
  store i32 2, ptr %57, align 8, !tbaa !286
  store i8 0, ptr %59, align 8, !tbaa !287
  br label %195

61:                                               ; preds = %58
  store i32 1, ptr %57, align 8, !tbaa !286
  store i8 1, ptr %59, align 8, !tbaa !287
  br label %195

62:                                               ; preds = %50
  store i32 0, ptr %57, align 8, !tbaa !286
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %56, i64 0, i32 10
  store i8 0, ptr %63, align 8, !tbaa !287
  br label %195

64:                                               ; preds = %47
  %65 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71, !prof !93

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %69, i64 0, i32 12
  store i8 %4, ptr %70, align 2, !tbaa !130
  br label %195

71:                                               ; preds = %64
  %72 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %76 = load ptr, ptr %75, align 8, !tbaa !98
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %76, i64 0, i32 13
  store i8 %4, ptr %77, align 1, !tbaa !289
  br label %195

78:                                               ; preds = %71
  %79 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %83 = load ptr, ptr %82, align 8, !tbaa !98
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %83, i64 0, i32 14
  store i8 %4, ptr %84, align 4, !tbaa !290
  br label %195

85:                                               ; preds = %78
  %86 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %90, i64 0, i32 17
  store i8 %4, ptr %91, align 1, !tbaa !291
  br label %195

92:                                               ; preds = %85
  %93 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %97 = load ptr, ptr %96, align 8, !tbaa !98
  %98 = xor i1 %2, true
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %97, i64 0, i32 5
  store i8 %99, ptr %100, align 1, !tbaa !167
  br label %195

101:                                              ; preds = %92
  %102 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %106 = load ptr, ptr %105, align 8, !tbaa !98
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %106, i64 0, i32 6
  store i8 %4, ptr %107, align 4, !tbaa !168
  br label %195

108:                                              ; preds = %101
  %109 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %113 = load ptr, ptr %112, align 8, !tbaa !98
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %113, i64 0, i32 15
  store i8 %4, ptr %114, align 1, !tbaa !292
  br i1 %2, label %115, label %195

115:                                              ; preds = %111
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %113, i64 0, i32 16
  store i8 1, ptr %116, align 2, !tbaa !293
  br label %195

117:                                              ; preds = %108
  %118 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  br i1 %2, label %127, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %123 = load ptr, ptr %122, align 8, !tbaa !98
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %123, i64 0, i32 15
  %125 = load i8, ptr %124, align 1, !tbaa !292, !range !169, !noundef !170
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %195

127:                                              ; preds = %121, %120
  %128 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %129 = load ptr, ptr %128, align 8, !tbaa !98
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %129, i64 0, i32 16
  store i8 %4, ptr %130, align 2, !tbaa !293
  br label %195

131:                                              ; preds = %117
  %132 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %136 = load ptr, ptr %135, align 8, !tbaa !98
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %136, i64 0, i32 3
  store i8 %4, ptr %137, align 1, !tbaa !294
  br label %195

138:                                              ; preds = %131
  %139 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %143 = load ptr, ptr %142, align 8, !tbaa !98
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %143, i64 0, i32 2
  store i8 %4, ptr %144, align 8, !tbaa !295
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %143, i64 0, i32 49, i32 9
  store i8 %4, ptr %145, align 8, !tbaa !296
  br label %195

146:                                              ; preds = %138
  %147 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %151 = load ptr, ptr %150, align 8, !tbaa !98
  %152 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %151, i64 0, i32 19
  store i8 %4, ptr %152, align 1, !tbaa !297
  br label %195

153:                                              ; preds = %146
  %154 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %158 = load ptr, ptr %157, align 8, !tbaa !98
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %158, i64 0, i32 20
  store i8 %4, ptr %159, align 2, !tbaa !298
  br label %195

160:                                              ; preds = %153
  %161 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %165 = load ptr, ptr %164, align 8, !tbaa !98
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %165, i64 0, i32 21
  store i8 %4, ptr %166, align 1, !tbaa !299
  br label %195

167:                                              ; preds = %160
  %168 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %172 = load ptr, ptr %171, align 8, !tbaa !98
  %173 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %172, i64 0, i32 22
  store i8 %4, ptr %173, align 4, !tbaa !300
  br label %195

174:                                              ; preds = %167
  %175 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %179 = load ptr, ptr %178, align 8, !tbaa !98
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %179, i64 0, i32 23
  store i8 %4, ptr %180, align 1, !tbaa !301
  br label %195

181:                                              ; preds = %174
  %182 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %186 = load ptr, ptr %185, align 8, !tbaa !98
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %186, i64 0, i32 24
  store i8 %4, ptr %187, align 2, !tbaa !302
  br label %195

188:                                              ; preds = %181
  %189 = tail call ptr @__cxa_allocate_exception(i64 24) #24
  %190 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %191 = load ptr, ptr %190, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %189, ptr noundef nonnull @.str.2, ptr noundef %191)
          to label %192 unwind label %193

192:                                              ; preds = %188
  tail call void @__cxa_throw(ptr nonnull %189, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #26
  unreachable

193:                                              ; preds = %188
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %196

195:                                              ; preds = %35, %36, %37, %60, %61, %62, %74, %88, %104, %127, %121, %141, %156, %170, %184, %177, %163, %149, %134, %111, %115, %95, %81, %67, %45, %18
  ret void

196:                                              ; preds = %193, %13
  %197 = phi ptr [ %189, %193 ], [ %9, %13 ]
  %198 = phi { ptr, i32 } [ %194, %193 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %197) #24
  resume { ptr, i32 } %198
}

declare void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl19setValidationSchemeENS_13SAX2XMLReader10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #11 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  switch i32 %1, label %6 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %2, %5, %6
  %8 = phi i32 [ %1, %5 ], [ 2, %6 ], [ %1, %2 ]
  %9 = phi i8 [ 1, %5 ], [ 0, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 10
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 51
  store i32 %8, ptr %11, align 8, !tbaa !286
  store i8 %9, ptr %10, align 8, !tbaa !287
  ret void
}

declare void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !305
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getFeatureEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %7, i64 0, i32 4
  %9 = load i8, ptr %8, align 2, !tbaa !117, !range !169, !noundef !170
  %10 = icmp ne i8 %9, 0
  br label %183

11:                                               ; preds = %2
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 7
  %16 = load i8, ptr %15, align 2, !tbaa !87, !range !169, !noundef !170
  %17 = icmp ne i8 %16, 0
  br label %183

18:                                               ; preds = %11
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgSAX2CoreNameSpacePrefixesE)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 5
  %23 = load i8, ptr %22, align 8, !tbaa !73, !range !169, !noundef !170
  %24 = icmp ne i8 %23, 0
  br label %183

25:                                               ; preds = %18
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXercesDynamicE)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !86, !range !169, !noundef !170
  %31 = icmp ne i8 %30, 0
  br label %183

32:                                               ; preds = %25
  %33 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %37, i64 0, i32 12
  %39 = load i8, ptr %38, align 2, !tbaa !130, !range !169, !noundef !170
  %40 = icmp ne i8 %39, 0
  br label %183

41:                                               ; preds = %32
  %42 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %46, i64 0, i32 13
  %48 = load i8, ptr %47, align 1, !tbaa !289, !range !169, !noundef !170
  %49 = icmp ne i8 %48, 0
  br label %183

50:                                               ; preds = %41
  %51 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %55, i64 0, i32 14
  %57 = load i8, ptr %56, align 4, !tbaa !290, !range !169, !noundef !170
  %58 = icmp ne i8 %57, 0
  br label %183

59:                                               ; preds = %50
  %60 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %64 = load ptr, ptr %63, align 8, !tbaa !98
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %64, i64 0, i32 17
  %66 = load i8, ptr %65, align 1, !tbaa !291, !range !169, !noundef !170
  %67 = icmp ne i8 %66, 0
  br label %183

68:                                               ; preds = %59
  %69 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %73 = load ptr, ptr %72, align 8, !tbaa !98
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %73, i64 0, i32 5
  %75 = load i8, ptr %74, align 1, !tbaa !167, !range !169, !noundef !170
  %76 = icmp eq i8 %75, 0
  br label %183

77:                                               ; preds = %68
  %78 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %82 = load ptr, ptr %81, align 8, !tbaa !98
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %82, i64 0, i32 6
  %84 = load i8, ptr %83, align 4, !tbaa !168, !range !169, !noundef !170
  %85 = icmp ne i8 %84, 0
  br label %183

86:                                               ; preds = %77
  %87 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %91 = load ptr, ptr %90, align 8, !tbaa !98
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %91, i64 0, i32 15
  %93 = load i8, ptr %92, align 1, !tbaa !292, !range !169, !noundef !170
  %94 = icmp ne i8 %93, 0
  br label %183

95:                                               ; preds = %86
  %96 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %100 = load ptr, ptr %99, align 8, !tbaa !98
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %100, i64 0, i32 16
  %102 = load i8, ptr %101, align 2, !tbaa !293, !range !169, !noundef !170
  %103 = icmp ne i8 %102, 0
  br label %183

104:                                              ; preds = %95
  %105 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %109 = load ptr, ptr %108, align 8, !tbaa !98
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %109, i64 0, i32 3
  %111 = load i8, ptr %110, align 1, !tbaa !294, !range !169, !noundef !170
  %112 = icmp ne i8 %111, 0
  br label %183

113:                                              ; preds = %104
  %114 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %118 = load ptr, ptr %117, align 8, !tbaa !98
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %118, i64 0, i32 2
  %120 = load i8, ptr %119, align 8, !tbaa !295, !range !169, !noundef !170
  %121 = icmp ne i8 %120, 0
  br label %183

122:                                              ; preds = %113
  %123 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %127 = load ptr, ptr %126, align 8, !tbaa !98
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %127, i64 0, i32 19
  %129 = load i8, ptr %128, align 1, !tbaa !297, !range !169, !noundef !170
  %130 = icmp ne i8 %129, 0
  br label %183

131:                                              ; preds = %122
  %132 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %136 = load ptr, ptr %135, align 8, !tbaa !98
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %136, i64 0, i32 20
  %138 = load i8, ptr %137, align 2, !tbaa !298, !range !169, !noundef !170
  %139 = icmp ne i8 %138, 0
  br label %183

140:                                              ; preds = %131
  %141 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %145 = load ptr, ptr %144, align 8, !tbaa !98
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %145, i64 0, i32 21
  %147 = load i8, ptr %146, align 1, !tbaa !299, !range !169, !noundef !170
  %148 = icmp ne i8 %147, 0
  br label %183

149:                                              ; preds = %140
  %150 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %154 = load ptr, ptr %153, align 8, !tbaa !98
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %154, i64 0, i32 22
  %156 = load i8, ptr %155, align 4, !tbaa !300, !range !169, !noundef !170
  %157 = icmp ne i8 %156, 0
  br label %183

158:                                              ; preds = %149
  %159 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %163 = load ptr, ptr %162, align 8, !tbaa !98
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %163, i64 0, i32 23
  %165 = load i8, ptr %164, align 1, !tbaa !301, !range !169, !noundef !170
  %166 = icmp ne i8 %165, 0
  br label %183

167:                                              ; preds = %158
  %168 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %172 = load ptr, ptr %171, align 8, !tbaa !98
  %173 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %172, i64 0, i32 24
  %174 = load i8, ptr %173, align 2, !tbaa !302, !range !169, !noundef !170
  %175 = icmp ne i8 %174, 0
  br label %183

176:                                              ; preds = %167
  %177 = tail call ptr @__cxa_allocate_exception(i64 24) #24
  %178 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %179 = load ptr, ptr %178, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %177, ptr noundef nonnull @.str.2, ptr noundef %179)
          to label %180 unwind label %181

180:                                              ; preds = %176
  tail call void @__cxa_throw(ptr nonnull %177, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #26
  unreachable

181:                                              ; preds = %176
  %182 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %177) #24
  resume { ptr, i32 } %182

183:                                              ; preds = %170, %161, %152, %143, %134, %125, %116, %107, %98, %89, %80, %71, %62, %53, %44, %35, %28, %21, %14, %5
  %184 = phi i1 [ %10, %5 ], [ %17, %14 ], [ %24, %21 ], [ %31, %28 ], [ %40, %35 ], [ %49, %44 ], [ %58, %53 ], [ %67, %62 ], [ %76, %71 ], [ %85, %80 ], [ %94, %89 ], [ %103, %98 ], [ %112, %107 ], [ %121, %116 ], [ %130, %125 ], [ %139, %134 ], [ %148, %143 ], [ %157, %152 ], [ %166, %161 ], [ %175, %170 ]
  ret i1 %184
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) local_unnamed_addr #14 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !130, !range !169, !noundef !170
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl11setPropertyEPKtPv(ptr nocapture noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !88, !range !169, !noundef !170
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_724SAXNotSupportedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull @.str.3, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724SAXNotSupportedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #26
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %152

14:                                               ; preds = %3
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %19, i64 0, i32 62
  %21 = load ptr, ptr %20, align 8, !tbaa !306
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %19, i64 0, i32 58
  %23 = load ptr, ptr %22, align 8, !tbaa !307
  %24 = load ptr, ptr %21, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %23)
  %27 = load ptr, ptr %20, align 8, !tbaa !306
  %28 = icmp eq ptr %2, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %17
  %30 = load i16, ptr %2, align 2, !tbaa !177
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %34, %32 ], [ %2, %29 ]
  %34 = getelementptr inbounds i16, ptr %33, i64 1
  %35 = load i16, ptr %34, align 2, !tbaa !177
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %32, !llvm.loop !179

37:                                               ; preds = %32
  %38 = ptrtoint ptr %34 to i64
  %39 = ptrtoint ptr %2 to i64
  %40 = sub i64 %38, %39
  %41 = add i64 %40, 2
  %42 = and i64 %41, 8589934590
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i64 [ %42, %37 ], [ 2, %29 ]
  %45 = load ptr, ptr %27, align 8, !tbaa !70
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef %44)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %48, ptr nonnull align 2 %2, i64 %44, i1 false)
  br label %49

49:                                               ; preds = %17, %43
  %50 = phi ptr [ %48, %43 ], [ null, %17 ]
  store ptr %50, ptr %22, align 8, !tbaa !307
  br label %151

51:                                               ; preds = %14
  %52 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %56 = load ptr, ptr %55, align 8, !tbaa !98
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %56, i64 0, i32 62
  %58 = load ptr, ptr %57, align 8, !tbaa !306
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %56, i64 0, i32 59
  %60 = load ptr, ptr %59, align 8, !tbaa !308
  %61 = load ptr, ptr %58, align 8, !tbaa !70
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %60)
  %64 = load ptr, ptr %57, align 8, !tbaa !306
  %65 = icmp eq ptr %2, null
  br i1 %65, label %86, label %66

66:                                               ; preds = %54
  %67 = load i16, ptr %2, align 2, !tbaa !177
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66, %69
  %70 = phi ptr [ %71, %69 ], [ %2, %66 ]
  %71 = getelementptr inbounds i16, ptr %70, i64 1
  %72 = load i16, ptr %71, align 2, !tbaa !177
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %69, !llvm.loop !179

74:                                               ; preds = %69
  %75 = ptrtoint ptr %71 to i64
  %76 = ptrtoint ptr %2 to i64
  %77 = sub i64 %75, %76
  %78 = add i64 %77, 2
  %79 = and i64 %78, 8589934590
  br label %80

80:                                               ; preds = %74, %66
  %81 = phi i64 [ %79, %74 ], [ 2, %66 ]
  %82 = load ptr, ptr %64, align 8, !tbaa !70
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %64, i64 noundef %81)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr nonnull align 2 %2, i64 %81, i1 false)
  br label %86

86:                                               ; preds = %54, %80
  %87 = phi ptr [ %85, %80 ], [ null, %54 ]
  store ptr %87, ptr %59, align 8, !tbaa !308
  br label %151

88:                                               ; preds = %51
  %89 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %93 = load ptr, ptr %92, align 8, !tbaa !98
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %93, i64 0, i32 60
  store ptr %2, ptr %94, align 8, !tbaa !309
  %95 = icmp eq ptr %2, null
  br i1 %95, label %151, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %2, align 8, !tbaa !70
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef i32 %99(ptr noundef nonnull align 8 dereferenceable(12) %2)
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %93, i64 0, i32 26
  store i32 %100, ptr %101, align 4, !tbaa !310
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %93, i64 0, i32 27
  store i32 0, ptr %102, align 8, !tbaa !311
  br label %151

103:                                              ; preds = %88
  %104 = icmp eq ptr %1, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %103
  %106 = load i16, ptr %1, align 2, !tbaa !177
  %107 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, align 2, !tbaa !177
  %108 = icmp eq i16 %106, %107
  br i1 %108, label %112, label %144

109:                                              ; preds = %103
  %110 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, align 2, !tbaa !177
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %123, label %144

112:                                              ; preds = %105, %117
  %113 = phi i16 [ %120, %117 ], [ %106, %105 ]
  %114 = phi ptr [ %119, %117 ], [ @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, %105 ]
  %115 = phi ptr [ %118, %117 ], [ %1, %105 ]
  %116 = icmp eq i16 %113, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds i16, ptr %115, i64 1
  %119 = getelementptr inbounds i16, ptr %114, i64 1
  %120 = load i16, ptr %118, align 2, !tbaa !177
  %121 = load i16, ptr %119, align 2, !tbaa !177
  %122 = icmp eq i16 %120, %121
  br i1 %122, label %112, label %144, !llvm.loop !217

123:                                              ; preds = %112, %109
  %124 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 30
  %125 = load ptr, ptr %124, align 8, !tbaa !150
  %126 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %127 = load ptr, ptr %126, align 8, !tbaa !111
  %128 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %129 = load ptr, ptr %128, align 8, !tbaa !94
  %130 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %125, ptr noundef %127, ptr noundef %129)
  %131 = icmp eq ptr %130, null
  br i1 %131, label %151, label %132

132:                                              ; preds = %123
  %133 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %134 = load ptr, ptr %133, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %130, ptr noundef %134)
  %135 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 29
  %136 = load ptr, ptr %135, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %130, ptr noundef %136)
  %137 = load ptr, ptr %133, align 8, !tbaa !98
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = load ptr, ptr %137, align 8, !tbaa !70
  %141 = getelementptr inbounds ptr, ptr %140, i64 1
  %142 = load ptr, ptr %141, align 8
  tail call void %142(ptr noundef nonnull align 8 dereferenceable(776) %137) #24
  br label %143

143:                                              ; preds = %139, %132
  store ptr %130, ptr %133, align 8, !tbaa !98
  br label %151

144:                                              ; preds = %117, %105, %109
  %145 = tail call ptr @__cxa_allocate_exception(i64 24) #24
  %146 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %147 = load ptr, ptr %146, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %145, ptr noundef nonnull @.str.4, ptr noundef %147)
          to label %148 unwind label %149

148:                                              ; preds = %144
  tail call void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #26
  unreachable

149:                                              ; preds = %144
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %152

151:                                              ; preds = %96, %91, %123, %143, %86, %49
  ret void

152:                                              ; preds = %149, %12
  %153 = phi ptr [ %145, %149 ], [ %8, %12 ]
  %154 = phi { ptr, i32 } [ %150, %149 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %153) #24
  resume { ptr, i32 } %154
}

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl11getPropertyEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %7, i64 0, i32 58
  %9 = load ptr, ptr %8, align 8, !tbaa !307
  br label %60

10:                                               ; preds = %2
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 59
  %17 = load ptr, ptr %16, align 8, !tbaa !308
  br label %60

18:                                               ; preds = %10
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %23, i64 0, i32 60
  %25 = load ptr, ptr %24, align 8, !tbaa !309
  br label %60

26:                                               ; preds = %18
  %27 = icmp eq ptr %1, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = load i16, ptr %1, align 2, !tbaa !177
  %30 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, align 2, !tbaa !177
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %35, label %53

32:                                               ; preds = %26
  %33 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, align 2, !tbaa !177
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %46, label %53

35:                                               ; preds = %28, %40
  %36 = phi i16 [ %43, %40 ], [ %29, %28 ]
  %37 = phi ptr [ %42, %40 ], [ @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, %28 ]
  %38 = phi ptr [ %41, %40 ], [ %1, %28 ]
  %39 = icmp eq i16 %36, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds i16, ptr %38, i64 1
  %42 = getelementptr inbounds i16, ptr %37, i64 1
  %43 = load i16, ptr %41, align 2, !tbaa !177
  %44 = load i16, ptr %42, align 2, !tbaa !177
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %35, label %53, !llvm.loop !217

46:                                               ; preds = %35, %32
  %47 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(776) %48)
  br label %60

53:                                               ; preds = %40, %28, %32
  %54 = tail call ptr @__cxa_allocate_exception(i64 24) #24
  %55 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %56 = load ptr, ptr %55, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_725SAXNotRecognizedExceptionC1EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull @.str.4, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_725SAXNotRecognizedExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #26
  unreachable

58:                                               ; preds = %53
  %59 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %54) #24
  resume { ptr, i32 } %59

60:                                               ; preds = %46, %21, %13, %5
  %61 = phi ptr [ %9, %5 ], [ %17, %13 ], [ %25, %21 ], [ %52, %46 ]
  ret ptr %61
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !88, !range !169, !noundef !170
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1470, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #24
  br label %46

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !88
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %21 unwind label %22

21:                                               ; preds = %17
  store i8 0, ptr %5, align 1, !tbaa !88
  ret ptr %20

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_begin_catch(ptr %24) #24
  invoke void @__cxa_rethrow() #26
          to label %54 unwind label %30

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %51

32:                                               ; preds = %30
  %33 = extractvalue { ptr, i32 } %31, 1
  %34 = extractvalue { ptr, i32 } %31, 0
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi ptr [ null, %32 ], [ @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv, %22 ]
  %37 = phi ptr [ null, %32 ], [ %0, %22 ]
  %38 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %39 = phi ptr [ %34, %32 ], [ %24, %22 ]
  %40 = icmp eq ptr %37, null
  %41 = or i1 %27, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(248) %37)
          to label %46 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #25
  unreachable

46:                                               ; preds = %42, %35, %13
  %47 = phi i32 [ %16, %13 ], [ %38, %35 ], [ %38, %42 ]
  %48 = phi ptr [ %15, %13 ], [ %39, %35 ], [ %39, %42 ]
  %49 = insertvalue { ptr, i32 } poison, ptr %48, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %47, 1
  resume { ptr, i32 } %50

51:                                               ; preds = %30
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #25
  unreachable

54:                                               ; preds = %28
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !88, !range !169, !noundef !170
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1496, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #24
  br label %46

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !88
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %21 unwind label %22

21:                                               ; preds = %17
  store i8 0, ptr %5, align 1, !tbaa !88
  ret ptr %20

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_begin_catch(ptr %24) #24
  invoke void @__cxa_rethrow() #26
          to label %54 unwind label %30

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %51

32:                                               ; preds = %30
  %33 = extractvalue { ptr, i32 } %31, 1
  %34 = extractvalue { ptr, i32 } %31, 0
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi ptr [ null, %32 ], [ @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv, %22 ]
  %37 = phi ptr [ null, %32 ], [ %0, %22 ]
  %38 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %39 = phi ptr [ %34, %32 ], [ %24, %22 ]
  %40 = icmp eq ptr %37, null
  %41 = or i1 %27, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(248) %37)
          to label %46 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #25
  unreachable

46:                                               ; preds = %42, %35, %13
  %47 = phi i32 [ %16, %13 ], [ %38, %35 ], [ %38, %42 ]
  %48 = phi ptr [ %15, %13 ], [ %39, %35 ], [ %39, %42 ]
  %49 = insertvalue { ptr, i32 } poison, ptr %48, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %47, 1
  resume { ptr, i32 } %50

51:                                               ; preds = %30
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #25
  unreachable

54:                                               ; preds = %28
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !88, !range !169, !noundef !170
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1522, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #24
  br label %49

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !88
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %24 unwind label %25

24:                                               ; preds = %17
  store i8 0, ptr %5, align 1, !tbaa !88
  ret ptr %23

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  %29 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = tail call ptr @__cxa_begin_catch(ptr %27) #24
  invoke void @__cxa_rethrow() #26
          to label %57 unwind label %33

33:                                               ; preds = %31
  %34 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %54

35:                                               ; preds = %33
  %36 = extractvalue { ptr, i32 } %34, 1
  %37 = extractvalue { ptr, i32 } %34, 0
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi ptr [ null, %35 ], [ @_ZN11xercesc_2_717SAX2XMLReaderImpl15resetInProgressEv, %25 ]
  %40 = phi ptr [ null, %35 ], [ %0, %25 ]
  %41 = phi i32 [ %36, %35 ], [ %28, %25 ]
  %42 = phi ptr [ %37, %35 ], [ %27, %25 ]
  %43 = icmp eq ptr %40, null
  %44 = or i1 %30, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(248) %40)
          to label %49 unwind label %46

46:                                               ; preds = %45
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #25
  unreachable

49:                                               ; preds = %45, %38, %13
  %50 = phi i32 [ %16, %13 ], [ %41, %38 ], [ %41, %45 ]
  %51 = phi ptr [ %15, %13 ], [ %42, %38 ], [ %42, %45 ]
  %52 = insertvalue { ptr, i32 } poison, ptr %51, 0
  %53 = insertvalue { ptr, i32 } %52, i32 %50, 1
  resume { ptr, i32 } %53

54:                                               ; preds = %33
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #25
  unreachable

57:                                               ; preds = %31
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAX2XMLReaderImpl18setInputBufferSizeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, i64 noundef %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !312
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66
  %7 = trunc i64 %1 to i32
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66, i32 5
  br i1 %8, label %19, label %10

10:                                               ; preds = %2
  store ptr %4, ptr %9, align 8, !tbaa !313
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66, i32 2
  store i32 %7, ptr %11, align 8, !tbaa !255
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !254
  %14 = icmp ugt i32 %13, %7
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  store i32 %7, ptr %12, align 4, !tbaa !254
  %16 = load i32, ptr %6, align 8, !tbaa !253
  %17 = icmp ult i32 %16, %7
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 0)
  br label %20

19:                                               ; preds = %2
  store ptr null, ptr %9, align 8, !tbaa !313
  br label %20

20:                                               ; preds = %10, %15, %18, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SAX2XMLReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getContentHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl13getDTDHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl21getDeclarationHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl17getLexicalHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !167, !range !169, !noundef !170
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SAX2XMLReaderImpl28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 4, !tbaa !168, !range !169, !noundef !170
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #21 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  ret ptr %5
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl10getURITextEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #21 comdat align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1)
  ret ptr %5
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SAX2XMLReaderImpl12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #21 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 49, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !315
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %5)
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl20getXMLEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SAX2XMLReaderImpl14getPSVIHandlerEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAX2XMLReaderImpl", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @llvm.trap() #25
  unreachable
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !316
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 !prof !319 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !320

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !177
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !321

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !177
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !322, !llvm.loop !323

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !253
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !254
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !324

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !258
  %24 = load i32, ptr %0, align 8, !tbaa !253
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !325
  %28 = load i32, ptr %0, align 8, !tbaa !253
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !253
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !305
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #25
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !305
  ret ptr %3
}

declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !282 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !135, !range !169, !noundef !170
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5, !prof !284

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !137
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !326

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !139
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !327

17:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %21 unwind label %18, !prof !328

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #25
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #24
  br label %22

22:                                               ; preds = %11, %21
  %23 = add nuw nsw i64 %12, 1
  %24 = load i32, ptr %6, align 4, !tbaa !137
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %11, label %27, !prof !329, !llvm.loop !330

27:                                               ; preds = %22, %5, %1
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !140
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = load ptr, ptr %29, align 8, !tbaa !70
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31)
          to label %35 unwind label %36, !prof !331

35:                                               ; preds = %27
  ret void

36:                                               ; preds = %27
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !282 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !137
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #24
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !135, !range !169, !noundef !170
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %23)
          to label %29 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #25
  unreachable

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #24
  br label %30

30:                                               ; preds = %18, %29, %14
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr %1, ptr %34, align 8, !tbaa !141
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !137
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %25, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !137
  ret void

11:                                               ; preds = %5, %25
  %12 = phi i64 [ 0, %5 ], [ %28, %25 ]
  %13 = load i8, ptr %6, align 8, !tbaa !135, !range !169, !noundef !170
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !139
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %18)
          to label %24 unwind label %21

21:                                               ; preds = %20
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #25
  unreachable

24:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #24
  br label %25

25:                                               ; preds = %15, %24, %11
  %26 = load ptr, ptr %8, align 8, !tbaa !139
  %27 = getelementptr inbounds ptr, ptr %26, i64 %12
  store ptr null, ptr %27, align 8, !tbaa !141
  %28 = add nuw nsw i64 %12, 1
  %29 = load i32, ptr %2, align 4, !tbaa !137
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %11, label %9, !llvm.loop !332
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !137
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #24
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !135, !range !169, !noundef !170
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !141
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %22)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #25
  unreachable

28:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #24
  br label %29

29:                                               ; preds = %17, %28, %13
  %30 = load i32, ptr %3, align 4, !tbaa !137
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %37 = zext i32 %1 to i64
  %38 = zext i32 %31 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ %37, %35 ], [ %42, %39 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !139
  %42 = add nuw nsw i64 %40, 1
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !141
  %45 = getelementptr inbounds ptr, ptr %41, i64 %40
  store ptr %44, ptr %45, align 8, !tbaa !141
  %46 = icmp eq i64 %42, %38
  br i1 %46, label %47, label %39, !llvm.loop !333

47:                                               ; preds = %39, %33, %29
  %48 = phi i32 [ %1, %29 ], [ %31, %33 ], [ %31, %39 ]
  %49 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !139
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr null, ptr %52, align 8, !tbaa !141
  store i32 %31, ptr %3, align 4, !tbaa !137
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !137
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !137
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !135, !range !169, !noundef !170
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %21 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #25
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #24
  br label %22

22:                                               ; preds = %10, %21, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !135, !range !169, !noundef !170
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !137
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !139
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %21 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #25
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #24
  br label %22

22:                                               ; preds = %11, %21
  %23 = add nuw nsw i64 %12, 1
  %24 = load i32, ptr %6, align 4, !tbaa !137
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %11, label %27, !llvm.loop !334

27:                                               ; preds = %22, %5, %1
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !140
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = load ptr, ptr %29, align 8, !tbaa !70
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !316
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !335 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !137
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !138
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !327

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !70
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !137
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !141
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !139
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !141
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !141
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !336

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !140
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = load ptr, ptr %49, align 8, !tbaa !70
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !139
  store i32 %12, ptr %6, align 8, !tbaa !138
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 !prof !337 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !133
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %43, !prof !205

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !70
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17), !prof !338
  %22 = load i32, ptr %3, align 4, !tbaa !132
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !207

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !104
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = load ptr, ptr %28, align 8, !tbaa !70
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30), !prof !339
  store ptr %21, ptr %29, align 8, !tbaa !106
  store i32 %13, ptr %6, align 8, !tbaa !133
  br label %43

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds i32, ptr %26, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !209
  %38 = getelementptr inbounds i32, ptr %21, i64 %35
  store i32 %37, ptr %38, align 4, !tbaa !209
  %39 = add nuw nsw i64 %35, 1
  %40 = load i32, ptr %3, align 4, !tbaa !132
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %34, label %27, !prof !210, !llvm.loop !211

43:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !341

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.7, i32 noundef 156, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #24
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %34, label %16, !prof !341

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4, !tbaa !132
  %18 = add i32 %17, -1
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = zext i32 %1 to i64
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ %23, %20 ], [ %26, %24 ]
  %26 = add nuw nsw i64 %25, 1
  %27 = getelementptr inbounds i32, ptr %22, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !209
  %29 = getelementptr inbounds i32, ptr %22, i64 %25
  store i32 %28, ptr %29, align 4, !tbaa !209
  %30 = load i32, ptr %3, align 4, !tbaa !132
  %31 = add i32 %30, -1
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %24, label %34, !llvm.loop !342

34:                                               ; preds = %24, %16, %13
  %35 = phi i32 [ %4, %13 ], [ %17, %16 ], [ %30, %24 ]
  %36 = add i32 %35, -1
  store i32 %36, ptr %3, align 4, !tbaa !132
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !316
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  resume { ptr, i32 } %7
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!67}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!35 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717VecAttributesImplC1Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC2EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!38 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, ptr @_ZN11xercesc_2_715GrammarResolverD1Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!41 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10initializeEv, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!45 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl7cleanUpEv, i64 1}
!46 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, ptr @_ZN11xercesc_2_717VecAttributesImplD1Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD2Ev, i64 1}
!48 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImplD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!49 = !{ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl13startDocumentEv, i64 1}
!50 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 832911}
!51 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 200913}
!52 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj, i64 2}
!53 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb, i64 832911}
!54 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 832911}
!55 = !{ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIjE15removeElementAtEj, i64 832913}
!56 = !{ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, i64 832911}
!57 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 832911}
!58 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 832911}
!59 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712ValueStackOfIjE3popEv, i64 832913}
!60 = !{ptr @_ZThn8_N11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10endElementERKNS_14XMLElementDeclEjbPKt, i64 832911}
!61 = !{ptr @_ZN11xercesc_2_717SAX2XMLReaderImpl10setFeatureEPKtb, ptr @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_, i64 13}
!62 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!63 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!64 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!65 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, i64 4}
!66 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 4}
!67 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!"function_entry_count", i64 1}
!70 = !{!71, !71, i64 0}
!71 = !{!"vtable pointer", !72, i64 0}
!72 = !{!"Simple C++ TBAA"}
!73 = !{!74, !80, i64 40}
!74 = !{!"_ZTSN11xercesc_2_717SAX2XMLReaderImplE", !75, i64 0, !76, i64 8, !77, i64 16, !78, i64 24, !79, i64 32, !80, i64 40, !80, i64 41, !80, i64 42, !80, i64 43, !80, i64 44, !82, i64 48, !82, i64 52, !82, i64 56, !83, i64 64, !85, i64 96, !85, i64 104, !85, i64 112, !85, i64 120, !85, i64 128, !85, i64 136, !85, i64 144, !85, i64 152, !85, i64 160, !85, i64 168, !85, i64 176, !85, i64 184, !85, i64 192, !85, i64 200, !85, i64 208, !85, i64 216, !85, i64 224, !85, i64 232, !85, i64 240}
!75 = !{!"_ZTSN11xercesc_2_713SAX2XMLReaderE"}
!76 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!77 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!78 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!79 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!80 = !{!"bool", !81, i64 0}
!81 = !{!"omnipotent char", !72, i64 0}
!82 = !{!"int", !81, i64 0}
!83 = !{!"_ZTSN11xercesc_2_717VecAttributesImplE", !84, i64 0, !80, i64 8, !82, i64 12, !85, i64 16, !85, i64 24}
!84 = !{!"_ZTSN11xercesc_2_710AttributesE"}
!85 = !{!"any pointer", !81, i64 0}
!86 = !{!74, !80, i64 41}
!87 = !{!74, !80, i64 42}
!88 = !{!74, !80, i64 43}
!89 = !{!74, !80, i64 44}
!90 = !{!74, !82, i64 48}
!91 = !{!74, !82, i64 52}
!92 = !{!74, !82, i64 56}
!93 = !{!"branch_weights", i32 1, i32 0}
!94 = !{!74, !85, i64 232}
!95 = !{!74, !85, i64 240}
!96 = !{!74, !85, i64 192}
!97 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!98 = !{!74, !85, i64 200}
!99 = !{!"branch_weights", i32 0, i32 1}
!100 = !{!"VP", i32 0, i64 1, i64 7919472901623622104, i64 1}
!101 = !{!74, !85, i64 112}
!102 = !{!"VP", i32 0, i64 1, i64 -8039767228627002071, i64 1}
!103 = !{!74, !85, i64 120}
!104 = !{!105, !85, i64 24}
!105 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !80, i64 0, !82, i64 4, !82, i64 8, !85, i64 16, !85, i64 24}
!106 = !{!105, !85, i64 16}
!107 = !{!"VP", i32 0, i64 12, i64 -7405368087501025645, i64 12}
!108 = !{!74, !85, i64 104}
!109 = !{!"VP", i32 0, i64 1, i64 9186359538477508285, i64 1}
!110 = !{!74, !85, i64 128}
!111 = !{!74, !85, i64 208}
!112 = !{!113, !85, i64 8}
!113 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !80, i64 0, !80, i64 1, !80, i64 2, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48, !85, i64 56, !85, i64 64, !85, i64 72}
!114 = !{!74, !85, i64 216}
!115 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!116 = !{!"VP", i32 1, i64 1, i64 256, i64 1}
!117 = !{!118, !80, i64 18}
!118 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !119, i64 0, !120, i64 8, !80, i64 16, !80, i64 17, !80, i64 18, !80, i64 19, !80, i64 20, !80, i64 21, !80, i64 22, !80, i64 23, !80, i64 24, !80, i64 25, !80, i64 26, !80, i64 27, !80, i64 28, !80, i64 29, !80, i64 30, !80, i64 31, !80, i64 32, !80, i64 33, !80, i64 34, !80, i64 35, !80, i64 36, !80, i64 37, !80, i64 38, !82, i64 40, !82, i64 44, !82, i64 48, !82, i64 52, !82, i64 56, !82, i64 60, !82, i64 64, !82, i64 68, !85, i64 72, !82, i64 80, !82, i64 84, !82, i64 88, !82, i64 92, !82, i64 96, !85, i64 104, !85, i64 112, !85, i64 120, !85, i64 128, !85, i64 136, !85, i64 144, !85, i64 152, !85, i64 160, !85, i64 168, !80, i64 176, !121, i64 184, !85, i64 264, !124, i64 272, !85, i64 280, !85, i64 288, !85, i64 296, !85, i64 304, !85, i64 312, !85, i64 320, !85, i64 328, !85, i64 336, !85, i64 344, !123, i64 352, !85, i64 360, !125, i64 368, !126, i64 392, !126, i64 432, !126, i64 472, !126, i64 512, !126, i64 552, !126, i64 592, !126, i64 632, !127, i64 672}
!119 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!120 = !{!"long", !81, i64 0}
!121 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !122, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !82, i64 40, !85, i64 48, !80, i64 56, !123, i64 60, !80, i64 64, !85, i64 72}
!122 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!123 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !81, i64 0}
!124 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !81, i64 0}
!125 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !82, i64 0, !85, i64 8, !85, i64 16}
!126 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !82, i64 0, !82, i64 4, !82, i64 8, !80, i64 12, !85, i64 16, !85, i64 24, !85, i64 32}
!127 = !{!"_ZTSN11xercesc_2_79ElemStackE", !82, i64 0, !82, i64 4, !128, i64 8, !85, i64 48, !82, i64 56, !82, i64 60, !82, i64 64, !82, i64 68, !82, i64 72, !82, i64 76, !82, i64 80, !85, i64 88, !85, i64 96}
!128 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !129, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !82, i64 32, !82, i64 36}
!129 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!130 = !{!118, !80, i64 26}
!131 = !{!105, !80, i64 0}
!132 = !{!105, !82, i64 4}
!133 = !{!105, !82, i64 8}
!134 = !{!"VP", i32 1, i64 1, i64 65, i64 1}
!135 = !{!136, !80, i64 8}
!136 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !80, i64 8, !82, i64 12, !82, i64 16, !85, i64 24, !85, i64 32}
!137 = !{!136, !82, i64 12}
!138 = !{!136, !82, i64 16}
!139 = !{!136, !85, i64 24}
!140 = !{!136, !85, i64 32}
!141 = !{!85, !85, i64 0}
!142 = !{!"branch_weights", i32 1, i32 9}
!143 = distinct !{!143, !144, !145}
!144 = !{!"llvm.loop.mustprogress"}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = !{!"VP", i32 1, i64 1, i64 33, i64 1}
!147 = !{!118, !85, i64 120}
!148 = distinct !{!148, !144, !145}
!149 = distinct !{!149, !144, !145}
!150 = !{!74, !85, i64 224}
!151 = !{!118, !85, i64 264}
!152 = !{!118, !82, i64 40}
!153 = !{!74, !85, i64 96}
!154 = !{!74, !85, i64 136}
!155 = !{!118, !85, i64 128}
!156 = !{!74, !85, i64 160}
!157 = !{!118, !85, i64 144}
!158 = !{!118, !85, i64 152}
!159 = !{!74, !85, i64 168}
!160 = !{!118, !85, i64 160}
!161 = !{!74, !85, i64 176}
!162 = !{!74, !85, i64 184}
!163 = !{!74, !85, i64 144}
!164 = !{!118, !85, i64 136}
!165 = !{!121, !85, i64 24}
!166 = !{!74, !85, i64 152}
!167 = !{!118, !80, i64 19}
!168 = !{!118, !80, i64 20}
!169 = !{i8 0, i8 2}
!170 = !{}
!171 = !{!"VP", i32 0, i64 1, i64 -4721723792287405904, i64 1}
!172 = !{!"branch_weights", i32 0, i32 598800}
!173 = !{!"VP", i32 0, i64 0, i64 -7554916774958902272, i64 0}
!174 = distinct !{!174, !144, !145}
!175 = !{!"function_entry_count", i64 598800}
!176 = !{!"VP", i32 0, i64 598800, i64 -7554916774958902272, i64 598800}
!177 = !{!178, !178, i64 0}
!178 = !{!"short", !81, i64 0}
!179 = distinct !{!179, !144, !145}
!180 = distinct !{!180, !144, !145}
!181 = distinct !{!181, !144, !145}
!182 = distinct !{!182, !144, !145}
!183 = distinct !{!183, !144, !145}
!184 = !{!"VP", i32 0, i64 1, i64 -8936787344262649124, i64 1}
!185 = !{!186, !85, i64 24}
!186 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !129, i64 0, !82, i64 8, !82, i64 12, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48, !85, i64 56, !85, i64 64}
!187 = distinct !{!187, !144, !145}
!188 = !{!"branch_weights", i32 2, i32 912714}
!189 = !{!"branch_weights", i32 0, i32 912714}
!190 = !{!"VP", i32 0, i64 0, i64 4892301058082978865, i64 0}
!191 = distinct !{!191, !144, !145}
!192 = !{!"function_entry_count", i64 912716}
!193 = !{!"VP", i32 0, i64 912714, i64 4892301058082978865, i64 912714}
!194 = distinct !{!194, !144, !145}
!195 = !{!"VP", i32 0, i64 1, i64 4095738722034012728, i64 1}
!196 = !{!"VP", i32 0, i64 1, i64 -2164792440608182254, i64 1}
!197 = !{!"VP", i32 0, i64 1, i64 -654303840451751658, i64 1}
!198 = distinct !{!198, !144, !145}
!199 = !{!"function_entry_count", i64 832911}
!200 = !{!"branch_weights", i32 0, i32 832911}
!201 = !{!202, !85, i64 16}
!202 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !129, i64 0, !85, i64 8, !85, i64 16, !203, i64 24, !82, i64 28, !80, i64 32}
!203 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !81, i64 0}
!204 = !{!"branch_weights", i32 631998, i32 200913}
!205 = !{!"branch_weights", i32 17, i32 833023}
!206 = !{!"VP", i32 0, i64 16, i64 8345045103670217670, i64 16}
!207 = !{!"branch_weights", i32 1, i32 135}
!208 = !{!"VP", i32 0, i64 16, i64 -7405368087501025645, i64 16}
!209 = !{!82, !82, i64 0}
!210 = !{!"branch_weights", i32 2177, i32 135}
!211 = distinct !{!211, !144, !145}
!212 = !{!"branch_weights", i32 1366334, i32 0}
!213 = !{!"branch_weights", i32 0, i32 200913}
!214 = !{!"branch_weights", i32 12, i32 200900}
!215 = !{!"branch_weights", i32 1, i32 11}
!216 = !{!"branch_weights", i32 0, i32 12}
!217 = distinct !{!217, !144, !145}
!218 = !{!219, !85, i64 16}
!219 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !80, i64 0, !220, i64 4, !82, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !80, i64 48}
!220 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !81, i64 0}
!221 = !{!219, !85, i64 24}
!222 = !{!223, !85, i64 24}
!223 = !{!"_ZTSN11xercesc_2_75QNameE", !129, i64 0, !82, i64 8, !82, i64 12, !82, i64 16, !82, i64 20, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48}
!224 = !{!"branch_weights", i32 7, i32 200905}
!225 = !{!"branch_weights", i32 1, i32 6}
!226 = !{!"branch_weights", i32 0, i32 7}
!227 = !{!223, !85, i64 32}
!228 = !{!"branch_weights", i32 200911, i32 2}
!229 = !{!"branch_weights", i32 1, i32 1}
!230 = !{!"VP", i32 0, i64 2, i64 3538141549452513046, i64 2}
!231 = !{!"VP", i32 0, i64 2, i64 8828421665688538749, i64 2}
!232 = !{!"branch_weights", i32 200913, i32 0}
!233 = distinct !{!233, !144, !145}
!234 = !{!"VP", i32 0, i64 832911, i64 4689237741273409155, i64 832911}
!235 = distinct !{!235, !144, !145}
!236 = distinct !{!236, !144, !145}
!237 = !{!"function_entry_count", i64 832913}
!238 = !{!"branch_weights", i32 0, i32 832913}
!239 = !{!"branch_weights", i32 832914, i32 0}
!240 = !{!"VP", i32 0, i64 832911, i64 -2592637261468698865, i64 832911}
!241 = !{!"branch_weights", i32 832909, i32 2}
!242 = !{!"VP", i32 0, i64 2, i64 4099110260104020874, i64 2}
!243 = !{!"VP", i32 0, i64 2, i64 4597268383662434419, i64 2}
!244 = !{!"branch_weights", i32 2, i32 0}
!245 = distinct !{!245, !144, !145}
!246 = distinct !{!246, !144, !145}
!247 = distinct !{!247, !144, !145}
!248 = !{!249, !220, i64 12}
!249 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !129, i64 0, !250, i64 8, !220, i64 12, !251, i64 16, !80, i64 20, !80, i64 21, !82, i64 24, !85, i64 32, !85, i64 40, !85, i64 48}
!250 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !81, i64 0}
!251 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !81, i64 0}
!252 = !{!249, !250, i64 8}
!253 = !{!126, !82, i64 0}
!254 = !{!126, !82, i64 4}
!255 = !{!126, !82, i64 8}
!256 = !{!126, !80, i64 12}
!257 = !{!126, !85, i64 16}
!258 = !{!126, !85, i64 32}
!259 = !{!249, !85, i64 40}
!260 = distinct !{!260, !144, !145}
!261 = !{!249, !85, i64 32}
!262 = !{!186, !85, i64 32}
!263 = !{!186, !85, i64 40}
!264 = !{!186, !85, i64 48}
!265 = !{!266, !85, i64 0}
!266 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !85, i64 0, !85, i64 8}
!267 = !{!266, !85, i64 8}
!268 = !{!186, !85, i64 16}
!269 = !{!"function_entry_count", i64 243874}
!270 = !{!"branch_weights", i32 191815, i32 52059}
!271 = !{!"branch_weights", i32 0, i32 52059}
!272 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!273 = !{!274, !85, i64 16}
!274 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !129, i64 0, !82, i64 8, !82, i64 12, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48}
!275 = !{!274, !85, i64 24}
!276 = !{!274, !85, i64 32}
!277 = !{!278, !85, i64 8}
!278 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !279, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40}
!279 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !81, i64 0}
!280 = !{!278, !85, i64 16}
!281 = !{!"VP", i32 0, i64 1, i64 6156343452316473105, i64 1}
!282 = !{!"function_entry_count", i64 4}
!283 = !{!"branch_weights", i32 4, i32 0}
!284 = !{!"branch_weights", i32 1, i32 3}
!285 = !{!"branch_weights", i32 0, i32 3}
!286 = !{!118, !124, i64 272}
!287 = !{!118, !80, i64 24}
!288 = !{!"branch_weights", i32 1, i32 2}
!289 = !{!118, !80, i64 27}
!290 = !{!118, !80, i64 28}
!291 = !{!118, !80, i64 31}
!292 = !{!118, !80, i64 29}
!293 = !{!118, !80, i64 30}
!294 = !{!118, !80, i64 17}
!295 = !{!118, !80, i64 16}
!296 = !{!121, !80, i64 64}
!297 = !{!118, !80, i64 33}
!298 = !{!118, !80, i64 34}
!299 = !{!118, !80, i64 35}
!300 = !{!118, !80, i64 36}
!301 = !{!118, !80, i64 37}
!302 = !{!118, !80, i64 38}
!303 = !{!304, !85, i64 16}
!304 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !85, i64 8, !85, i64 16}
!305 = !{!304, !85, i64 8}
!306 = !{!118, !85, i64 360}
!307 = !{!118, !85, i64 328}
!308 = !{!118, !85, i64 336}
!309 = !{!118, !85, i64 344}
!310 = !{!118, !82, i64 44}
!311 = !{!118, !82, i64 48}
!312 = !{!118, !120, i64 8}
!313 = !{!126, !85, i64 24}
!314 = !{!118, !85, i64 304}
!315 = !{!121, !85, i64 16}
!316 = !{!317, !85, i64 40}
!317 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !318, i64 8, !85, i64 16, !82, i64 24, !85, i64 32, !85, i64 40}
!318 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !81, i64 0}
!319 = !{!"function_entry_count", i64 789922}
!320 = !{!"branch_weights", i32 0, i32 789922}
!321 = !{!"branch_weights", i32 284, i32 789638}
!322 = !{!"branch_weights", i32 789638, i32 41628303}
!323 = distinct !{!323, !144, !145}
!324 = !{!"branch_weights", i32 789636, i32 2}
!325 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!326 = !{!"branch_weights", i32 1, i32 191}
!327 = !{!"branch_weights", i32 0, i32 10}
!328 = !{!"branch_weights", i32 10, i32 0}
!329 = !{!"branch_weights", i32 449, i32 191}
!330 = distinct !{!330, !144, !145}
!331 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!332 = distinct !{!332, !144, !145}
!333 = distinct !{!333, !144, !145}
!334 = distinct !{!334, !144, !145}
!335 = !{!"function_entry_count", i64 10}
!336 = distinct !{!336, !144, !145}
!337 = !{!"function_entry_count", i64 129}
!338 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!339 = !{!"VP", i32 0, i64 0, i64 -7405368087501025645, i64 0}
!340 = !{!"function_entry_count", i64 832960}
!341 = !{!"branch_weights", i32 832960, i32 0}
!342 = distinct !{!342, !144, !145}
