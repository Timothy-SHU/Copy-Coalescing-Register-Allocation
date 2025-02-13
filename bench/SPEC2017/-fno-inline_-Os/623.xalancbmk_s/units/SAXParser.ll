; ModuleID = 'SAXParser.cpp'
source_filename = "SAXParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SAXParser" = type { %"class.xercesc_2_7::Parser", %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", i8, i32, i32, i32, %"class.xercesc_2_7::VecAttrListImpl", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer" }
%"class.xercesc_2_7::Parser" = type { ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::VecAttrListImpl" = type { %"class.xercesc_2_7::AttributeList", i8, i32, ptr }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_76ParserC2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerC2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterC2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerC2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerC2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_76ParserD2Ev = comdat any

$_ZN11xercesc_2_76ParserD0Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD0Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD0Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD0Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD0Ev = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE = comdat any

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

$_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv = comdat any

$_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv = comdat any

$_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv = comdat any

$_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv = comdat any

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

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb = comdat any

$_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb = comdat any

$_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm = comdat any

$_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj = comdat any

$_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_710XMLScanner10getLocatorEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl7getNameEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoValidationEb = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_76ParserE = comdat any

$_ZTIN11xercesc_2_76ParserE = comdat any

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

$_ZTVN11xercesc_2_76ParserE = comdat any

$_ZTVN11xercesc_2_718XMLDocumentHandlerE = comdat any

$_ZTVN11xercesc_2_716XMLErrorReporterE = comdat any

$_ZTVN11xercesc_2_716XMLEntityHandlerE = comdat any

$_ZTVN11xercesc_2_714DocTypeHandlerE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_79SAXParserE = dso_local unnamed_addr constant { [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_79SAXParserD0Ev, ptr @_ZN11xercesc_2_79SAXParser17setEntityResolverEPNS_14EntityResolverE, ptr @_ZN11xercesc_2_79SAXParser13setDTDHandlerEPNS_10DTDHandlerE, ptr @_ZN11xercesc_2_79SAXParser18setDocumentHandlerEPNS_15DocumentHandlerE, ptr @_ZN11xercesc_2_79SAXParser15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_79SAXParser5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79SAXParser5parseEPKt, ptr @_ZN11xercesc_2_79SAXParser5parseEPKc, ptr @_ZN11xercesc_2_79SAXParser14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_79SAXParser20setXMLEntityResolverEPNS_17XMLEntityResolverE, ptr @_ZN11xercesc_2_79SAXParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79SAXParser10docCommentEPKt, ptr @_ZN11xercesc_2_79SAXParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_79SAXParser11endDocumentEv, ptr @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_79SAXParser13resetDocumentEv, ptr @_ZN11xercesc_2_79SAXParser13startDocumentEv, ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_79SAXParser11resetErrorsEv, ptr @_ZN11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79SAXParser13resetEntitiesEv, ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_79SAXParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_79SAXParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_79SAXParser12endIntSubsetEv, ptr @_ZN11xercesc_2_79SAXParser12endExtSubsetEv, ptr @_ZN11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_79SAXParser12resetDocTypeEv, ptr @_ZN11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_79SAXParser14startIntSubsetEv, ptr @_ZN11xercesc_2_79SAXParser14startExtSubsetEv, ptr @_ZN11xercesc_2_79SAXParser8TextDeclEPKtS2_], [17 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn8_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn8_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn8_N11xercesc_2_79SAXParser13docCharactersEPKtjb, ptr @_ZThn8_N11xercesc_2_79SAXParser10docCommentEPKt, ptr @_ZThn8_N11xercesc_2_79SAXParser5docPIEPKtS2_, ptr @_ZThn8_N11xercesc_2_79SAXParser11endDocumentEv, ptr @_ZThn8_N11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZThn8_N11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb, ptr @_ZThn8_N11xercesc_2_79SAXParser13resetDocumentEv, ptr @_ZThn8_N11xercesc_2_79SAXParser13startDocumentEv, ptr @_ZThn8_N11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZThn8_N11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn16_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn16_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn16_N11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn16_N11xercesc_2_79SAXParser11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn24_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn24_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn24_N11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE, ptr @_ZThn24_N11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn24_N11xercesc_2_79SAXParser13resetEntitiesEv, ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_, ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn24_N11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn32_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn32_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn32_N11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn32_N11xercesc_2_79SAXParser14doctypeCommentEPKt, ptr @_ZThn32_N11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn32_N11xercesc_2_79SAXParser9doctypePIEPKtS2_, ptr @_ZThn32_N11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj, ptr @_ZThn32_N11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn32_N11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_79SAXParser12endIntSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser12endExtSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn32_N11xercesc_2_79SAXParser12resetDocTypeEv, ptr @_ZThn32_N11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn32_N11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_79SAXParser14startIntSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser14startExtSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser8TextDeclEPKtS2_] }, align 8
@_ZTSN11xercesc_2_79SAXParserE = dso_local constant [26 x i8] c"N11xercesc_2_79SAXParserE\00", align 1
@_ZTSN11xercesc_2_76ParserE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76ParserE\00", comdat, align 1
@_ZTIN11xercesc_2_76ParserE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76ParserE }, comdat, align 8
@_ZTSN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718XMLDocumentHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XMLDocumentHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLErrorReporterE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLErrorReporterE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLEntityHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLEntityHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714DocTypeHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DocTypeHandlerE }, comdat, align 8
@_ZTIN11xercesc_2_79SAXParserE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79SAXParserE, i32 0, i32 6, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_76ParserE, i64 2, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, i64 2050, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, i64 4098, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, i64 6146, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, i64 8194 }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_76ParserE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76ParserE, ptr @_ZN11xercesc_2_76ParserD2Ev, ptr @_ZN11xercesc_2_76ParserD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [14 x i8] c"SAXParser.cpp\00", align 1
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr

@_ZN11xercesc_2_79SAXParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_79SAXParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79SAXParserD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  store ptr %1, ptr %3, align 8, !tbaa !88
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  br i1 %4, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 13
  store ptr null, ptr %9, align 8, !tbaa !104
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13setDTDHandlerEPNS_10DTDHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  store ptr %1, ptr %3, align 8, !tbaa !105
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  br i1 %4, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #15
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #15
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setDocumentHandlerEPNS_15DocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  store ptr %1, ptr %3, align 8, !tbaa !107
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !108

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %7, ptr noundef nonnull %8) #15
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef null) #15
  br label %16

16:                                               ; preds = %9, %13, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !110
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  br i1 %4, label %10, label %7, !prof !108

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #15
  %9 = load ptr, ptr %3, align 8, !tbaa !110
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi ptr [ null, %10 ], [ %9, %7 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %13, ptr noundef %12) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !111, !range !112, !noundef !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7, !prof !114

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 541, i32 noundef 43, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79SAXParser15resetInProgressEv to i64), i64 0) #15
  store i8 1, ptr %4, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef nonnull align 1 %1) #15
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  invoke void @__cxa_rethrow() #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void

36:                                               ; preds = %32, %22
  %37 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %38 = phi ptr [ %34, %32 ], [ %24, %22 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
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
  call void @__clang_call_terminate(ptr %46) #18
  unreachable

47:                                               ; preds = %28
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !111, !range !112, !noundef !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 562, i32 noundef 43, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79SAXParser15resetInProgressEv to i64), i64 0) #15
  store i8 1, ptr %4, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #15
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  invoke void @__cxa_rethrow() #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %35 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
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
  call void @__clang_call_terminate(ptr %43) #18
  unreachable

44:                                               ; preds = %25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !111, !range !112, !noundef !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 583, i32 noundef 43, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79SAXParser15resetInProgressEv to i64), i64 0) #15
  store i8 1, ptr %4, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef %1) #15
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  invoke void @__cxa_rethrow() #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %35 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
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
  call void @__clang_call_terminate(ptr %43) #18
  unreachable

44:                                               ; preds = %25
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 15
  store ptr %1, ptr %3, align 8, !tbaa !118
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %1) #15
  br label %9

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 13
  store ptr %1, ptr %3, align 8, !tbaa !104
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  br i1 %4, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  store ptr null, ptr %9, align 8, !tbaa !88
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13docCharactersEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !119 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !121

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !121

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2) #15
  br label %16

16:                                               ; preds = %8, %12, %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !122

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %23

22:                                               ; preds = %23, %16
  ret void

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 0, %20 ], [ %31, %23 ]
  %25 = load ptr, ptr %21, align 8, !tbaa !123
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #15
  %31 = add nuw nsw i64 %24, 1
  %32 = load i32, ptr %17, align 8, !tbaa !109
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %23, label %22, !prof !125, !llvm.loop !126
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10docCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !123
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %1) #15
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %3, align 8, !tbaa !109
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %9, label %8, !llvm.loop !128
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5docPIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !87 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !116
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2) #15
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !109
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !123
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !124
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %1, ptr noundef %2) #15
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 8, !tbaa !109
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !129
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #1 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !108

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !130

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %16

15:                                               ; preds = %16, %9
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !123
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !124
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #15
  %24 = add nuw nsw i64 %17, 1
  %25 = load i32, ptr %10, align 8, !tbaa !109
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %16, label %15, !prof !125, !llvm.loop !131
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !132 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9, !prof !133

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %11) #15
  br i1 %12, label %13, label %32, !prof !133

13:                                               ; preds = %9
  %14 = icmp eq ptr %4, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load i16, ptr %4, align 2, !tbaa !134
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull %4) #15
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %19, i16 noundef zeroext 58) #15
  %20 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef %20) #15
  %21 = load ptr, ptr %6, align 8, !tbaa !107
  %22 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %19) #15
  %23 = load ptr, ptr %21, align 8, !tbaa !116
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %22) #15
  br label %38

26:                                               ; preds = %15, %13
  %27 = load ptr, ptr %6, align 8, !tbaa !107
  %28 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  %29 = load ptr, ptr %27, align 8, !tbaa !116
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %28) #15
  br label %38

32:                                               ; preds = %9
  %33 = load ptr, ptr %6, align 8, !tbaa !107
  %34 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  %35 = load ptr, ptr %33, align 8, !tbaa !116
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %34) #15
  br label %38

38:                                               ; preds = %32, %26, %18, %5
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !109
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !136

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %48

44:                                               ; preds = %48, %38
  %45 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !120
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %60, !prof !133

48:                                               ; preds = %42, %48
  %49 = phi i64 [ 0, %42 ], [ %56, %48 ]
  %50 = load ptr, ptr %43, align 8, !tbaa !123
  %51 = getelementptr inbounds ptr, ptr %50, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !124
  %53 = load ptr, ptr %52, align 8, !tbaa !116
  %54 = getelementptr inbounds ptr, ptr %53, i64 6
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #15
  %56 = add nuw nsw i64 %49, 1
  %57 = load i32, ptr %39, align 8, !tbaa !109
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %48, label %44, !prof !125, !llvm.loop !137

60:                                               ; preds = %44
  %61 = add i32 %46, -1
  store i32 %61, ptr %45, align 4, !tbaa !120
  br label %62

62:                                               ; preds = %60, %44
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !123
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %3, align 8, !tbaa !109
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %9, label %8, !llvm.loop !138
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !87 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2) #15
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %30, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !123
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #15
  %30 = add nuw nsw i64 %23, 1
  %31 = load i32, ptr %17, align 8, !tbaa !109
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %22, label %34, !llvm.loop !139

34:                                               ; preds = %22, %16, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13resetDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !108

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !130

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %17

15:                                               ; preds = %17, %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  store i32 0, ptr %16, align 4, !tbaa !120
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %25, %17 ]
  %19 = load ptr, ptr %14, align 8, !tbaa !123
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = getelementptr inbounds ptr, ptr %22, i64 9
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %21) #15
  %25 = add nuw nsw i64 %18, 1
  %26 = load i32, ptr %10, align 8, !tbaa !109
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %17, label %15, !prof !125, !llvm.loop !140
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13startDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #1 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !108

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %7) #15
  %9 = load ptr, ptr %3, align 8, !tbaa !116
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %8) #15
  %12 = load ptr, ptr %2, align 8, !tbaa !107
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 9
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
  br label %16

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !130

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %23

22:                                               ; preds = %23, %16
  ret void

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 0, %20 ], [ %31, %23 ]
  %25 = load ptr, ptr %21, align 8, !tbaa !123
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27) #15
  %31 = add nuw nsw i64 %24, 1
  %32 = load i32, ptr %17, align 8, !tbaa !109
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %23, label %22, !prof !125, !llvm.loop !141
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #1 align 2 !prof !142 {
  br i1 %6, label %13, label %9, !prof !143

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !120
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !120
  br label %13

13:                                               ; preds = %9, %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17, !prof !144

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull %4, i32 noundef %5, i1 noundef zeroext false) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %20) #15
  br i1 %21, label %22, label %53, !prof !144

22:                                               ; preds = %17
  %23 = icmp eq ptr %3, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %22
  %25 = load i16, ptr %3, align 2, !tbaa !134
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull %3) #15
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %28, i16 noundef zeroext 58) #15
  %29 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %29) #15
  %30 = load ptr, ptr %14, align 8, !tbaa !107
  %31 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %28) #15
  %32 = load ptr, ptr %30, align 8, !tbaa !116
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  br i1 %6, label %35, label %65

35:                                               ; preds = %27
  %36 = load ptr, ptr %14, align 8, !tbaa !107
  %37 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %28) #15
  %38 = load ptr, ptr %36, align 8, !tbaa !116
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %37) #15
  br label %65

41:                                               ; preds = %24, %22
  %42 = load ptr, ptr %14, align 8, !tbaa !107
  %43 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  %44 = load ptr, ptr %42, align 8, !tbaa !116
  %45 = getelementptr inbounds ptr, ptr %44, i64 10
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %43, ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  br i1 %6, label %47, label %65

47:                                               ; preds = %41
  %48 = load ptr, ptr %14, align 8, !tbaa !107
  %49 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  %50 = load ptr, ptr %48, align 8, !tbaa !116
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %49) #15
  br label %65

53:                                               ; preds = %17
  %54 = load ptr, ptr %14, align 8, !tbaa !107
  %55 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  %56 = load ptr, ptr %54, align 8, !tbaa !116
  %57 = getelementptr inbounds ptr, ptr %56, i64 10
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %55, ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  br i1 %6, label %59, label %65, !prof !143

59:                                               ; preds = %53
  %60 = load ptr, ptr %14, align 8, !tbaa !107
  %61 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #15
  %62 = load ptr, ptr %60, align 8, !tbaa !116
  %63 = getelementptr inbounds ptr, ptr %62, i64 4
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %61) #15
  br label %65

65:                                               ; preds = %41, %47, %27, %35, %59, %53, %13
  %66 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !109
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69, !prof !145

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %72

71:                                               ; preds = %72, %65
  ret void

72:                                               ; preds = %69, %72
  %73 = phi i64 [ 0, %69 ], [ %80, %72 ]
  %74 = load ptr, ptr %70, align 8, !tbaa !123
  %75 = getelementptr inbounds ptr, ptr %74, i64 %73
  %76 = load ptr, ptr %75, align 8, !tbaa !124
  %77 = load ptr, ptr %76, align 8, !tbaa !116
  %78 = getelementptr inbounds ptr, ptr %77, i64 11
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #15
  %80 = add nuw nsw i64 %73, 1
  %81 = load i32, ptr %66, align 8, !tbaa !109
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %72, label %71, !prof !125, !llvm.loop !146
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !123
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %3, align 8, !tbaa !109
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %9, label %8, !llvm.loop !147
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !87 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !109
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %12

11:                                               ; preds = %12, %5
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %20, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !123
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = load ptr, ptr %16, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15
  %20 = add nuw nsw i64 %13, 1
  %21 = load i32, ptr %6, align 8, !tbaa !109
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %12, label %11, !llvm.loop !148
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12) #15
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #16
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10) #15
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #17
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
  %26 = load ptr, ptr %14, align 8, !tbaa !116
  %27 = icmp eq i32 %3, 2
  %28 = select i1 %27, i64 4, i64 3
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, i64 2, i64 %28
  %31 = getelementptr inbounds ptr, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10) #15
          to label %33 unwind label %23

33:                                               ; preds = %25, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  ret void

34:                                               ; preds = %23, %21
  %35 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  resume { ptr, i32 } %35

36:                                               ; preds = %20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11resetErrorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #1 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !108

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #2 align 2 !prof !87 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13resetEntitiesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #1 align 2 !prof !87 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !116
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2) #15
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #15
  %8 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #15
  %9 = load ptr, ptr %4, align 8, !tbaa !116
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8) #15
  br label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !116
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %1) #15
  br label %22

22:                                               ; preds = %13, %17, %6
  %23 = phi ptr [ %12, %6 ], [ %21, %17 ], [ null, %13 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, i1 zeroext %3) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14doctypeCommentEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser9doctypePIEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i1 zeroext %2) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12endIntSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12endExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !87 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp eq ptr %6, null
  %8 = or i1 %7, %3
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8, !tbaa !105
  %13 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %14 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %15 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %16 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %17 = load ptr, ptr %12, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) #15
  br label %20

20:                                               ; preds = %4, %9, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12resetDocTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #1 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !87 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  %12 = load ptr, ptr %5, align 8, !tbaa !116
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %10, ptr noundef %11) #15
  br label %15

15:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14startIntSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14startExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser8TextDeclEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !87 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser13docCharactersEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser10docCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser5docPIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser11endDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #4 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser13resetDocumentEv(ptr nocapture noundef %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser13startDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #4 align 2 {
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !87 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79SAXParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #4 align 2 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(224) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParser11resetErrorsEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79SAXParser11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79SAXParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZThn24_N11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #2 align 2 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParser13resetEntitiesEv(ptr nocapture readnone %0) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  %6 = tail call noundef ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef %1, ptr noundef %2, ptr poison) #15
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef %1) #15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_79SAXParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, i1 zeroext %3) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser14doctypeCommentEPKt(ptr nocapture readnone %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser9doctypePIEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1, i1 zeroext %2) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12endIntSubsetEv(ptr nocapture readnone %0) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12endExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext poison, i1 noundef zeroext %3) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12resetDocTypeEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_79SAXParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser14startIntSubsetEv(ptr nocapture readnone %0) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser14startExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser8TextDeclEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  tail call void @_ZN11xercesc_2_76ParserC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !116
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 2, i64 2), ptr %7, align 8, !tbaa !116
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 3, i64 2), ptr %8, align 8, !tbaa !116
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 4, i64 2), ptr %9, align 8, !tbaa !116
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  store i8 0, ptr %10, align 8, !tbaa !111
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  store i32 0, ptr %11, align 4, !tbaa !120
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 8, !tbaa !109
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 8
  store i32 32, ptr %13, align 4, !tbaa !149
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_715VecAttrListImplC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #15
          to label %15 unwind label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %16, i8 0, i64 80, i1 false)
  store ptr %1, ptr %17, align 8, !tbaa !150
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  store ptr %2, ptr %18, align 8, !tbaa !115
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 22
  store ptr %3, ptr %19, align 8, !tbaa !151
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 1023, ptr noundef %2) #15
          to label %21 unwind label %26

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79SAXParser7cleanUpEv to i64), i64 0) #15
  invoke void @_ZN11xercesc_2_79SAXParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #15
          to label %43 unwind label %30

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  br label %50

26:                                               ; preds = %15
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  br label %47

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %32 = extractvalue { ptr, i32 } %31, 0
  %33 = extractvalue { ptr, i32 } %31, 1
  %34 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = call ptr @__cxa_begin_catch(ptr %32) #16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  invoke void @__cxa_rethrow() #17
          to label %58 unwind label %38

38:                                               ; preds = %36
  %39 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %40 unwind label %55

40:                                               ; preds = %38
  %41 = extractvalue { ptr, i32 } %39, 1
  %42 = extractvalue { ptr, i32 } %39, 0
  br label %44

43:                                               ; preds = %21
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void

44:                                               ; preds = %40, %30
  %45 = phi i32 [ %41, %40 ], [ %33, %30 ]
  %46 = phi ptr [ %42, %40 ], [ %32, %30 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #14
  br label %47

47:                                               ; preds = %44, %26
  %48 = phi i32 [ %45, %44 ], [ %29, %26 ]
  %49 = phi ptr [ %46, %44 ], [ %28, %26 ]
  call void @_ZN11xercesc_2_715VecAttrListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #14
  br label %50

50:                                               ; preds = %47, %22
  %51 = phi i32 [ %48, %47 ], [ %25, %22 ]
  %52 = phi ptr [ %49, %47 ], [ %24, %22 ]
  call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @_ZN11xercesc_2_76ParserD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %53 = insertvalue { ptr, i32 } poison, ptr %52, 0
  %54 = insertvalue { ptr, i32 } %53, i32 %51, 1
  resume { ptr, i32 } %54

55:                                               ; preds = %38
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  call void @__clang_call_terminate(ptr %57) #18
  unreachable

58:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !152 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76ParserC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !106 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_76ParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715VecAttrListImplC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !154 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store i32 0, ptr %0, align 8, !tbaa !155
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !156
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !158
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !159
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #15
  store ptr %16, ptr %9, align 8, !tbaa !160
  store i16 0, ptr %16, align 2, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) #1 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = load ptr, ptr %3, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(776) %10) #14
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %18) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #14
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !114

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !116
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %23) #14
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !162 {
  store ptr %1, ptr %0, align 8, !tbaa !163
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !165
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10initializeEv(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3) #15
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  %7 = load ptr, ptr %2, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7) #15
          to label %8 unwind label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  store ptr %4, ptr %9, align 8, !tbaa !161
  %10 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 19
  store ptr %10, ptr %11, align 8, !tbaa !166
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = load ptr, ptr %9, align 8, !tbaa !161
  %15 = load ptr, ptr %2, align 8, !tbaa !115
  %16 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %14, ptr noundef %15) #15
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  store ptr %16, ptr %17, align 8, !tbaa !103
  %18 = load ptr, ptr %11, align 8, !tbaa !166
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %18) #15
  %19 = load ptr, ptr %2, align 8, !tbaa !115
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !149
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = load ptr, ptr %19, align 8, !tbaa !116
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %23) #15
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  store ptr %27, ptr %28, align 8, !tbaa !123
  %29 = load i32, ptr %20, align 4, !tbaa !149
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 %31, i1 false)
  ret void

32:                                               ; preds = %1
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %33
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %2 = load ptr, ptr %0, align 8, !tbaa !163
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !167

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !165
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8, !prof !108

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !165
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !116
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !113
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(224) %11) #15
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !154 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = load ptr, ptr %3, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715VecAttrListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76ParserD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !106 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76ParserD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !153 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !116
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79SAXParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #15
          to label %6 unwind label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_715VecAttrListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #14
  tail call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  tail call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  tail call void @_ZN11xercesc_2_76ParserD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #18
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !168 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20installAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !149
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  br label %40

11:                                               ; preds = %2
  %12 = uitofp i32 %4 to double
  %13 = fmul double %12, 1.500000e+00
  %14 = fptoui double %13 to i32
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %16, align 8, !tbaa !116
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %18) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  %25 = load i32, ptr %5, align 4, !tbaa !149
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %24, i64 %27, i1 false)
  %28 = load i32, ptr %5, align 4, !tbaa !149
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %22, i64 %29
  %31 = sub i32 %14, %28
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %33, i1 false)
  %34 = load ptr, ptr %15, align 8, !tbaa !115
  %35 = load ptr, ptr %23, align 8, !tbaa !123
  %36 = load ptr, ptr %34, align 8, !tbaa !116
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %35) #15
  store ptr %22, ptr %23, align 8, !tbaa !123
  store i32 %14, ptr %5, align 4, !tbaa !149
  %39 = load i32, ptr %3, align 8, !tbaa !109
  br label %40

40:                                               ; preds = %8, %11
  %41 = phi i32 [ %4, %8 ], [ %39, %11 ]
  %42 = phi ptr [ %10, %8 ], [ %22, %11 ]
  %43 = add i32 %41, 1
  store i32 %43, ptr %3, align 8, !tbaa !109
  %44 = zext i32 %41 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %1, ptr %45, align 8, !tbaa !124
  %46 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !103
  %48 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %47, ptr noundef nonnull %48) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !153 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  store ptr %1, ptr %3, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser19removeAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef readnone %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %40
  %11 = phi i64 [ 0, %6 ], [ %41, %40 ]
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !124
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
  %24 = load ptr, ptr %7, align 8, !tbaa !123
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr %26, ptr %27, align 8, !tbaa !124
  br label %23

28:                                               ; preds = %17, %15
  %29 = add i32 %4, -1
  store i32 %29, ptr %3, align 8, !tbaa !109
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %8, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !124
  %32 = icmp eq i32 %29, 0
  %33 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %39, ptr noundef null) #15
  br label %43

40:                                               ; preds = %10
  %41 = add nuw nsw i64 %11, 1
  %42 = icmp eq i64 %41, %9
  br i1 %42, label %43, label %10, !llvm.loop !183

43:                                               ; preds = %40, %37, %28, %2
  %44 = phi i1 [ false, %2 ], [ true, %28 ], [ true, %37 ], [ false, %40 ]
  ret i1 %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xercesc_2_79SAXParser12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !186, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser31getGenerateSyntheticAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %3 = load i8, ptr %2, align 1, !tbaa !188, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser22getValidateAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 2, !tbaa !189, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser24getExitOnFirstFatalErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !190, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser28getValidationConstraintFatalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 4, !tbaa !191, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79SAXParser19getValidationSchemeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 2
  %7 = icmp eq i32 %4, 1
  %8 = select i1 %7, i32 1, i32 %6
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %3 = load i32, ptr %2, align 8, !tbaa !192
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 2, !tbaa !193, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser31getValidationSchemaFullCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !194, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser29getIdentityConstraintCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 4, !tbaa !195, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79SAXParser13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 8, !tbaa !196
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser25getExternalSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser36getExternalNoNamespaceSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser18getSecurityManagerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser18getLoadExternalDTDEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %3 = load i8, ptr %2, align 1, !tbaa !200, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser25isCachingGrammarFromParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !201, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser27isUsingCachedGrammarInParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 2, !tbaa !202, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser18getCalculateSrcOfsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !203, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser24getStandardUriConformantEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !204, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #15
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser14getRootGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79SAXParser12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #1 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #15
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser18getIgnoreCachedDTDEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  %3 = load i8, ptr %2, align 1, !tbaa !207, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser20getIgnoreAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  %3 = load i8, ptr %2, align 4, !tbaa !208, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser33getDisableDefaultEntityResolutionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %3 = load i8, ptr %2, align 1, !tbaa !209, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser20getSkipDTDValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %3 = load i8, ptr %2, align 2, !tbaa !210, !range !112, !noundef !113
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !211 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 2, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser31setGenerateSyntheticAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  store i8 %3, ptr %4, align 1, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser22setValidateAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  store i8 %3, ptr %4, align 2, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 1, !tbaa !190
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser19setValidationSchemeENS0_10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq i32 %1, 1
  %6 = select i1 %5, i32 1, i32 2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 %6
  tail call void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %8) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !153 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %1, ptr %3, align 8, !tbaa !192
  %4 = icmp eq i32 %1, 1
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 %3, ptr %4, align 2, !tbaa !193
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser31setValidationSchemaFullCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  store i8 %3, ptr %4, align 1, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser29setIdentityConstraintCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %3, ptr %4, align 4, !tbaa !195
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser25setExternalSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = load ptr, ptr %4, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #15
  %10 = load ptr, ptr %3, align 8, !tbaa !212
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #15
  store ptr %11, ptr %5, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !213 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !214

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #15
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !116
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !215 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !216

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !134
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !217

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !134
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !218, !llvm.loop !219

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser36setExternalNoNamespaceSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !198
  %7 = load ptr, ptr %4, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #15
  %10 = load ptr, ptr %3, align 8, !tbaa !212
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #15
  store ptr %11, ptr %5, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser25setExternalSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = load ptr, ptr %4, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #15
  %10 = load ptr, ptr %3, align 8, !tbaa !212
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #15
  store ptr %11, ptr %5, align 8, !tbaa !197
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser36setExternalNoNamespaceSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !198
  %7 = load ptr, ptr %4, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #15
  %10 = load ptr, ptr %3, align 8, !tbaa !212
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #15
  store ptr %11, ptr %5, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setSecurityManagerEPNS_15SecurityManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !111, !range !112, !noundef !113
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 456, i32 noundef 43, ptr noundef %9) #15
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef %1) #15
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #15
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #15
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  store ptr %1, ptr %3, align 8, !tbaa !199
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(12) %1) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %9, ptr %10, align 4, !tbaa !220
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %11, align 8, !tbaa !221
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !87 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #15
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #15
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !87 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #15
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setLoadExternalDTDEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 %3, ptr %4, align 1, !tbaa !200
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser21cacheGrammarFromParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  br i1 %1, label %5, label %7

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %6, i1 noundef zeroext true) #15
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %3, ptr %4, align 1, !tbaa !201
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser23useCachedGrammarInParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  br i1 %1, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %5) #15
  br i1 %6, label %10, label %7

7:                                                ; preds = %3, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %9, i1 noundef zeroext %1) #15
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setCalculateSrcOfsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 1, !tbaa !203
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser24setStandardUriConformantEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !204
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !225
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10useScannerEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4, ptr noundef %6, ptr noundef %8) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %13) #15
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %15) #15
  %16 = load ptr, ptr %12, align 8, !tbaa !103
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !116
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(776) %16) #14
  br label %22

22:                                               ; preds = %18, %11
  store ptr %9, ptr %12, align 8, !tbaa !103
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setInputBufferSizeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i64 noundef %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(776) %4, i64 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setInputBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  store i64 %1, ptr %3, align 8, !tbaa !226
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %5 = trunc i64 %1 to i32
  tail call void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %0, i32 noundef %5) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer14setFullHandlerEPNS_20XMLBufferFullHandlerEj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !153 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  br i1 %6, label %8, label %17, !prof !227

8:                                                ; preds = %3
  store ptr %1, ptr %7, align 8, !tbaa !228
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !157
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !156
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %18, !prof !229

13:                                               ; preds = %8
  store i32 %2, ptr %10, align 4, !tbaa !156
  %14 = load i32, ptr %0, align 8, !tbaa !155
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) #15
  br label %18

17:                                               ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !228
  br label %18

18:                                               ; preds = %8, %16, %13, %17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setIgnoreCachedDTDEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  store i8 %3, ptr %4, align 1, !tbaa !207
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20setIgnoreAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  store i8 %3, ptr %4, align 4, !tbaa !208
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser33setDisableDefaultEntityResolutionEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  store i8 %3, ptr %4, align 1, !tbaa !209
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20setSkipDTDValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  store i8 %3, ptr %4, align 2, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15resetInProgressEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(224) %0) #13 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  store i8 0, ptr %2, align 8, !tbaa !111
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !153 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !153 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  store ptr %1, ptr %3, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store ptr %1, ptr %3, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !234
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !235
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !111, !range !112, !noundef !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 43, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2) #15
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !111, !range !112, !noundef !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 711, i32 noundef 43, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2) #15
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !111, !range !112, !noundef !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 724, i32 noundef 43, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) #15
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 1) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1) #15
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10parseResetERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #1 align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !236 {
  store i32 0, ptr %0, align 8, !tbaa !155
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !237 {
  %3 = load i32, ptr %0, align 8, !tbaa !155
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !156
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !238

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #15
  %8 = load i32, ptr %0, align 8, !tbaa !155
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !160
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !155
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !134
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !239 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !240

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !134
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !241

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !134
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !242, !llvm.loop !243

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !155
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !156
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !244

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #15
  %21 = load i32, ptr %0, align 8, !tbaa !155
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !155
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !155
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !245 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !249 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = load i32, ptr %0, align 8, !tbaa !155
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !134
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !250 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !251 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !255
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !257
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !255
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !260
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !262
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !267
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser15getDoValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #15
  %5 = icmp eq i32 %4, 1
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15setDoValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 8, !tbaa !268
  %5 = zext i1 %1 to i32
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !111, !range !112, !noundef !113
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1282, i32 noundef 43, ptr noundef %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79SAXParser15resetInProgressEv to i64), i64 0) #15
  store i8 1, ptr %6, align 8, !tbaa !111
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #15
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  invoke void @__cxa_rethrow() #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
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
  call void @__clang_call_terminate(ptr %46) #18
  unreachable

47:                                               ; preds = %29
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !111, !range !112, !noundef !113
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 43, ptr noundef %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79SAXParser15resetInProgressEv to i64), i64 0) #15
  store i8 1, ptr %6, align 8, !tbaa !111
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #15
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  invoke void @__cxa_rethrow() #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
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
  call void @__clang_call_terminate(ptr %46) #18
  unreachable

47:                                               ; preds = %29
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !111, !range !112, !noundef !113
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1334, i32 noundef 43, ptr noundef %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79SAXParser15resetInProgressEv to i64), i64 0) #15
  store i8 1, ptr %6, align 8, !tbaa !111
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = getelementptr inbounds ptr, ptr %21, i64 10
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) #15
          to label %25 unwind label %26

25:                                               ; preds = %18
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  invoke void @__cxa_rethrow() #17
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
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
  call void @__clang_call_terminate(ptr %49) #18
  unreachable

50:                                               ; preds = %32
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #1 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #8

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!86}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!36 = !{ptr @_ZN11xercesc_2_79SAXParser18setDocumentHandlerEPNS_15DocumentHandlerE, ptr @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_79SAXParser15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_79SAXParser15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_79SAXParser5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_79SAXParser5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev, i64 1}
!41 = !{ptr @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv, i64 240}
!42 = !{ptr @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 1}
!43 = !{ptr @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 239}
!44 = !{ptr @_ZN11xercesc_2_79SAXParser13startDocumentEv, ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv, i64 1}
!45 = !{ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb, i64 389}
!46 = !{ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv, i64 389}
!47 = !{ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 1}
!48 = !{ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 536}
!49 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_76ParserC2Ev, i64 1}
!51 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev, i64 1}
!52 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLErrorReporterC2Ev, i64 1}
!53 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XMLEntityHandlerC2Ev, i64 1}
!54 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_714DocTypeHandlerC2Ev, i64 1}
!55 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_715VecAttrListImplC1Ev, i64 1}
!56 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEC2EPS1_MS1_FvvE, i64 1}
!58 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_79SAXParser10initializeEv, i64 1}
!59 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEE7releaseEv, i64 1}
!60 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEED2Ev, i64 1}
!61 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!62 = !{ptr @_ZN11xercesc_2_79SAXParser7cleanUpEv, ptr @_ZN11xercesc_2_715GrammarResolverD1Ev, i64 1}
!63 = !{ptr @_ZN11xercesc_2_79SAXParser7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!64 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!65 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, i64 1}
!66 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv, i64 1}
!67 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 1}
!68 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE, i64 1}
!69 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_79SAXParser7cleanUpEv, i64 1}
!70 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 1}
!71 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_715VecAttrListImplD1Ev, i64 1}
!72 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, i64 1}
!73 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, i64 1}
!74 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, i64 1}
!75 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, i64 1}
!76 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_76ParserD2Ev, i64 1}
!77 = !{ptr @_ZN11xercesc_2_79SAXParser15setDoNamespacesEb, ptr @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb, i64 1}
!78 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!79 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!80 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!81 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!82 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!83 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1666922}
!84 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!85 = !{ptr @_ZN11xercesc_2_79SAXParser15setDoValidationEb, ptr @_ZN11xercesc_2_710XMLScanner15setDoValidationEb, i64 1}
!86 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!87 = !{!"function_entry_count", i64 0}
!88 = !{!89, !101, i64 96}
!89 = !{!"_ZTSN11xercesc_2_79SAXParserE", !90, i64 0, !91, i64 8, !92, i64 16, !93, i64 24, !94, i64 32, !95, i64 40, !98, i64 44, !98, i64 48, !98, i64 52, !99, i64 56, !101, i64 80, !101, i64 88, !101, i64 96, !101, i64 104, !101, i64 112, !101, i64 120, !101, i64 128, !101, i64 136, !101, i64 144, !101, i64 152, !101, i64 160, !101, i64 168, !101, i64 176, !102, i64 184}
!90 = !{!"_ZTSN11xercesc_2_76ParserE"}
!91 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!92 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!93 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!94 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!95 = !{!"bool", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C++ TBAA"}
!98 = !{!"int", !96, i64 0}
!99 = !{!"_ZTSN11xercesc_2_715VecAttrListImplE", !100, i64 0, !95, i64 8, !98, i64 12, !101, i64 16}
!100 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!101 = !{!"any pointer", !96, i64 0}
!102 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !98, i64 0, !98, i64 4, !98, i64 8, !95, i64 12, !101, i64 16, !101, i64 24, !101, i64 32}
!103 = !{!89, !101, i64 136}
!104 = !{!89, !101, i64 104}
!105 = !{!89, !101, i64 88}
!106 = !{!"function_entry_count", i64 1}
!107 = !{!89, !101, i64 80}
!108 = !{!"branch_weights", i32 1, i32 2}
!109 = !{!89, !98, i64 48}
!110 = !{!89, !101, i64 112}
!111 = !{!89, !95, i64 40}
!112 = !{i8 0, i8 2}
!113 = !{}
!114 = !{!"branch_weights", i32 2, i32 1}
!115 = !{!89, !101, i64 168}
!116 = !{!117, !117, i64 0}
!117 = !{!"vtable pointer", !97, i64 0}
!118 = !{!89, !101, i64 120}
!119 = !{!"function_entry_count", i64 468}
!120 = !{!89, !98, i64 44}
!121 = !{!"branch_weights", i32 1, i32 469}
!122 = !{!"branch_weights", i32 468, i32 1}
!123 = !{!89, !101, i64 128}
!124 = !{!101, !101, i64 0}
!125 = !{!"branch_weights", i32 0, i32 1}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = distinct !{!128, !127}
!129 = distinct !{!129, !127}
!130 = !{!"branch_weights", i32 1, i32 1}
!131 = distinct !{!131, !127}
!132 = !{!"function_entry_count", i64 241}
!133 = !{!"branch_weights", i32 1, i32 242}
!134 = !{!135, !135, i64 0}
!135 = !{!"short", !96, i64 0}
!136 = !{!"branch_weights", i32 241, i32 1}
!137 = distinct !{!137, !127}
!138 = distinct !{!138, !127}
!139 = distinct !{!139, !127}
!140 = distinct !{!140, !127}
!141 = distinct !{!141, !127}
!142 = !{!"function_entry_count", i64 390}
!143 = !{!"branch_weights", i32 150, i32 242}
!144 = !{!"branch_weights", i32 1, i32 391}
!145 = !{!"branch_weights", i32 390, i32 1}
!146 = distinct !{!146, !127}
!147 = distinct !{!147, !127}
!148 = distinct !{!148, !127}
!149 = !{!89, !98, i64 52}
!150 = !{!89, !101, i64 160}
!151 = !{!89, !101, i64 176}
!152 = !{!"function_entry_count", i64 5836268}
!153 = !{!"function_entry_count", i64 3}
!154 = !{!"function_entry_count", i64 496321}
!155 = !{!102, !98, i64 0}
!156 = !{!102, !98, i64 4}
!157 = !{!102, !98, i64 8}
!158 = !{!102, !95, i64 12}
!159 = !{!102, !101, i64 16}
!160 = !{!102, !101, i64 32}
!161 = !{!89, !101, i64 144}
!162 = !{!"function_entry_count", i64 2}
!163 = !{!164, !101, i64 0}
!164 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9SAXParserEEE", !101, i64 0, !96, i64 8}
!165 = !{!164, !96, i64 8}
!166 = !{!89, !101, i64 152}
!167 = !{!"branch_weights", i32 2, i32 2}
!168 = !{!"function_entry_count", i64 4}
!169 = !{!170, !101, i64 8}
!170 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !95, i64 0, !95, i64 1, !95, i64 2, !101, i64 8, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40, !101, i64 48, !101, i64 56, !101, i64 64, !101, i64 72}
!171 = !{!172, !101, i64 120}
!172 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !173, i64 0, !174, i64 8, !95, i64 16, !95, i64 17, !95, i64 18, !95, i64 19, !95, i64 20, !95, i64 21, !95, i64 22, !95, i64 23, !95, i64 24, !95, i64 25, !95, i64 26, !95, i64 27, !95, i64 28, !95, i64 29, !95, i64 30, !95, i64 31, !95, i64 32, !95, i64 33, !95, i64 34, !95, i64 35, !95, i64 36, !95, i64 37, !95, i64 38, !98, i64 40, !98, i64 44, !98, i64 48, !98, i64 52, !98, i64 56, !98, i64 60, !98, i64 64, !98, i64 68, !101, i64 72, !98, i64 80, !98, i64 84, !98, i64 88, !98, i64 92, !98, i64 96, !101, i64 104, !101, i64 112, !101, i64 120, !101, i64 128, !101, i64 136, !101, i64 144, !101, i64 152, !101, i64 160, !101, i64 168, !95, i64 176, !175, i64 184, !101, i64 264, !178, i64 272, !101, i64 280, !101, i64 288, !101, i64 296, !101, i64 304, !101, i64 312, !101, i64 320, !101, i64 328, !101, i64 336, !101, i64 344, !177, i64 352, !101, i64 360, !179, i64 368, !102, i64 392, !102, i64 432, !102, i64 472, !102, i64 512, !102, i64 552, !102, i64 592, !102, i64 632, !180, i64 672}
!173 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!174 = !{!"long", !96, i64 0}
!175 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !176, i64 0, !101, i64 8, !101, i64 16, !101, i64 24, !101, i64 32, !98, i64 40, !101, i64 48, !95, i64 56, !177, i64 60, !95, i64 64, !101, i64 72}
!176 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!177 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !96, i64 0}
!178 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !96, i64 0}
!179 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !98, i64 0, !101, i64 8, !101, i64 16}
!180 = !{!"_ZTSN11xercesc_2_79ElemStackE", !98, i64 0, !98, i64 4, !181, i64 8, !101, i64 48, !98, i64 56, !98, i64 60, !98, i64 64, !98, i64 68, !98, i64 72, !98, i64 76, !98, i64 80, !101, i64 88, !101, i64 96}
!181 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !182, i64 0, !101, i64 8, !101, i64 16, !101, i64 24, !98, i64 32, !98, i64 36}
!182 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!183 = distinct !{!183, !127}
!184 = !{!172, !101, i64 264}
!185 = !{!"function_entry_count", i64 1666453}
!186 = !{!172, !95, i64 18}
!187 = !{!"function_entry_count", i64 498}
!188 = !{!172, !95, i64 33}
!189 = !{!172, !95, i64 34}
!190 = !{!172, !95, i64 19}
!191 = !{!172, !95, i64 20}
!192 = !{!172, !178, i64 272}
!193 = !{!172, !95, i64 26}
!194 = !{!172, !95, i64 27}
!195 = !{!172, !95, i64 28}
!196 = !{!172, !98, i64 40}
!197 = !{!172, !101, i64 328}
!198 = !{!172, !101, i64 336}
!199 = !{!172, !101, i64 344}
!200 = !{!172, !95, i64 31}
!201 = !{!172, !95, i64 29}
!202 = !{!172, !95, i64 30}
!203 = !{!172, !95, i64 17}
!204 = !{!172, !95, i64 16}
!205 = !{!172, !101, i64 304}
!206 = !{!175, !101, i64 16}
!207 = !{!172, !95, i64 35}
!208 = !{!172, !95, i64 36}
!209 = !{!172, !95, i64 37}
!210 = !{!172, !95, i64 38}
!211 = !{!"function_entry_count", i64 5}
!212 = !{!172, !101, i64 360}
!213 = !{!"function_entry_count", i64 558789}
!214 = !{!"branch_weights", i32 158605, i32 400186}
!215 = !{!"function_entry_count", i64 2453164456}
!216 = !{!"branch_weights", i32 1, i32 -1841802839}
!217 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!218 = !{!"branch_weights", i32 408669070, i32 -279908792}
!219 = distinct !{!219, !127}
!220 = !{!172, !98, i64 44}
!221 = !{!172, !98, i64 48}
!222 = !{!223, !101, i64 40}
!223 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !224, i64 8, !101, i64 16, !98, i64 24, !101, i64 32, !101, i64 40}
!224 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !96, i64 0}
!225 = !{!175, !95, i64 64}
!226 = !{!172, !174, i64 8}
!227 = !{!"branch_weights", i32 16, i32 9}
!228 = !{!102, !101, i64 24}
!229 = !{!"branch_weights", i32 1, i32 4}
!230 = !{!172, !101, i64 128}
!231 = !{!172, !101, i64 144}
!232 = !{!172, !101, i64 152}
!233 = !{!172, !101, i64 160}
!234 = !{!172, !101, i64 136}
!235 = !{!175, !101, i64 24}
!236 = !{!"function_entry_count", i64 190774}
!237 = !{!"function_entry_count", i64 7992849}
!238 = !{!"branch_weights", i32 1, i32 7992850}
!239 = !{!"function_entry_count", i64 789922}
!240 = !{!"branch_weights", i32 1, i32 789923}
!241 = !{!"branch_weights", i32 285, i32 789639}
!242 = !{!"branch_weights", i32 789639, i32 41628304}
!243 = distinct !{!243, !127}
!244 = !{!"branch_weights", i32 789637, i32 3}
!245 = !{!"function_entry_count", i64 1666922}
!246 = !{!247, !101, i64 16}
!247 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !182, i64 0, !101, i64 8, !101, i64 16, !248, i64 24, !98, i64 28, !95, i64 32}
!248 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !96, i64 0}
!249 = !{!"function_entry_count", i64 10769804}
!250 = !{!"function_entry_count", i64 1668291}
!251 = !{!"function_entry_count", i64 2192223}
!252 = !{!253, !101, i64 32}
!253 = !{!"_ZTSN11xercesc_2_75QNameE", !182, i64 0, !98, i64 8, !98, i64 12, !98, i64 16, !98, i64 20, !101, i64 24, !101, i64 32, !101, i64 40, !101, i64 48}
!254 = !{!"function_entry_count", i64 553}
!255 = !{!256, !101, i64 32}
!256 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !182, i64 0, !98, i64 8, !98, i64 12, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40, !101, i64 48, !101, i64 56, !101, i64 64}
!257 = !{!256, !101, i64 24}
!258 = !{!256, !101, i64 40}
!259 = !{!256, !101, i64 48}
!260 = !{!261, !101, i64 16}
!261 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !182, i64 0, !98, i64 8, !98, i64 12, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40, !101, i64 48}
!262 = !{!261, !101, i64 24}
!263 = !{!261, !101, i64 32}
!264 = !{!265, !101, i64 8}
!265 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !266, i64 0, !101, i64 8, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40}
!266 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !96, i64 0}
!267 = !{!265, !101, i64 16}
!268 = !{!172, !95, i64 24}
