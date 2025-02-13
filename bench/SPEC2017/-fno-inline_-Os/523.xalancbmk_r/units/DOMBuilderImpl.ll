; ModuleID = 'DOMBuilderImpl.cpp'
source_filename = "DOMBuilderImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMBuilderImpl" = type <{ %"class.xercesc_2_7::AbstractDOMParser", %"class.xercesc_2_7::DOMBuilder", i8, i8, [6 x i8], ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::DOMBuilder" = type { ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::Wrapper4DOMInputSource" = type { %"class.xercesc_2_7::InputSource.base", i8, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xercesc_2_7::DOMLocatorImpl" = type { %"class.xercesc_2_7::DOMLocator", i64, i64, i64, ptr, ptr }
%"class.xercesc_2_7::DOMLocator" = type { ptr }
%"class.xercesc_2_7::DOMErrorImpl" = type { %"class.xercesc_2_7::DOMError", i8, i16, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMError" = type { ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710DOMBuilderC2Ev = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv = comdat any

$_ZN11xercesc_2_710XMLScanner16setNormalizeDataEb = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_717AbstractDOMParser29setCreateEntityReferenceNodesEb = comdat any

$_ZN11xercesc_2_717AbstractDOMParser21setCreateCommentNodesEb = comdat any

$_ZN11xercesc_2_717AbstractDOMParser29setIncludeIgnorableWhitespaceEb = comdat any

$_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb = comdat any

$_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv = comdat any

$_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb = comdat any

$_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb = comdat any

$_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb = comdat any

$_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb = comdat any

$_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser29getCreateEntityReferenceNodesEv = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser21getCreateCommentNodesEv = comdat any

$_ZNK11xercesc_2_710XMLScanner16getNormalizeDataEv = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser29getIncludeIgnorableWhitespaceEv = comdat any

$_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser19getCreateSchemaInfoEv = comdat any

$_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv = comdat any

$_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_717AbstractDOMParser17useImplementationEPKt = comdat any

$_ZN11xercesc_2_717AbstractDOMParser14getCurrentNodeEv = comdat any

$_ZNK11xercesc_2_710XMLScanner14getInExceptionEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier10getBaseURIEv = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv = comdat any

$_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv = comdat any

$_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv = comdat any

$_ZN11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv = comdat any

$_ZNK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv = comdat any

$_ZN11xercesc_2_714DOMBuilderImpl17getEntityResolverEv = comdat any

$_ZNK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv = comdat any

$_ZN11xercesc_2_714DOMBuilderImpl9getFilterEv = comdat any

$_ZNK11xercesc_2_714DOMBuilderImpl9getFilterEv = comdat any

$_ZN11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_714DOMBuilderImpl13resetEntitiesEv = comdat any

$_ZN11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZThn16_N11xercesc_2_714DOMBuilderImpl13resetEntitiesEv = comdat any

$_ZThn16_N11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE = comdat any

$_ZThn200_N11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv = comdat any

$_ZThn200_NK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv = comdat any

$_ZThn200_N11xercesc_2_714DOMBuilderImpl17getEntityResolverEv = comdat any

$_ZThn200_NK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv = comdat any

$_ZThn200_N11xercesc_2_714DOMBuilderImpl9getFilterEv = comdat any

$_ZThn200_NK11xercesc_2_714DOMBuilderImpl9getFilterEv = comdat any

$_ZN11xercesc_2_710DOMBuilderD2Ev = comdat any

$_ZN11xercesc_2_710DOMBuilderD0Ev = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_710DOMBuilderE = comdat any

$_ZTIN11xercesc_2_710DOMBuilderE = comdat any

$_ZTVN11xercesc_2_710DOMBuilderE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

@_ZTVN11xercesc_2_714DOMBuilderImplE = dso_local unnamed_addr constant { [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] } { [74 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DOMBuilderImplE, ptr @_ZN11xercesc_2_714DOMBuilderImplD2Ev, ptr @_ZN11xercesc_2_714DOMBuilderImplD0Ev, ptr @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE, ptr @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_, ptr @_ZN11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv, ptr @_ZNK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl17getEntityResolverEv, ptr @_ZNK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl9getFilterEv, ptr @_ZNK11xercesc_2_714DOMBuilderImpl9getFilterEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl15setErrorHandlerEPNS_15DOMErrorHandlerE, ptr @_ZN11xercesc_2_714DOMBuilderImpl17setEntityResolverEPNS_17DOMEntityResolverE, ptr @_ZN11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE, ptr @_ZN11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb, ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt, ptr @_ZNK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb, ptr @_ZN11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE, ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKt, ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKc, ptr @_ZN11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs, ptr @_ZNK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt, ptr @_ZN11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv, ptr @_ZN11xercesc_2_714DOMBuilderImpl7releaseEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl17resetDocumentPoolEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb, ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb, ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb, ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getGrammarEPKt, ptr @_ZNK11xercesc_2_714DOMBuilderImpl14getRootGrammarEv, ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getURITextEj, ptr @_ZN11xercesc_2_714DOMBuilderImpl22resetCachedGrammarPoolEv, ptr @_ZNK11xercesc_2_714DOMBuilderImpl12getSrcOffsetEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_714DOMBuilderImpl11resetErrorsEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_714DOMBuilderImpl13resetEntitiesEv, ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_714DOMBuilderImplE, ptr @_ZThn8_N11xercesc_2_714DOMBuilderImplD1Ev, ptr @_ZThn8_N11xercesc_2_714DOMBuilderImplD0Ev, ptr @_ZThn8_N11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn8_N11xercesc_2_714DOMBuilderImpl11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_714DOMBuilderImplE, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImplD1Ev, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImplD0Ev, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resetEntitiesEv, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_714DOMBuilderImplE, ptr @_ZThn24_N11xercesc_2_714DOMBuilderImplD1Ev, ptr @_ZThn24_N11xercesc_2_714DOMBuilderImplD0Ev, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_], [7 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_714DOMBuilderImplE, ptr @_ZThn32_N11xercesc_2_714DOMBuilderImplD1Ev, ptr @_ZThn32_N11xercesc_2_714DOMBuilderImplD0Ev, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE], [32 x ptr] [ptr inttoptr (i64 -200 to ptr), ptr @_ZTIN11xercesc_2_714DOMBuilderImplE, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImplD1Ev, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImplD0Ev, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl17getEntityResolverEv, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl9getFilterEv, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl9getFilterEv, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl15setErrorHandlerEPNS_15DOMErrorHandlerE, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl17setEntityResolverEPNS_17DOMEntityResolverE, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl8parseURIEPKt, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl8parseURIEPKc, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl7releaseEv, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl17resetDocumentPoolEv, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getGrammarEPKt, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl14getRootGrammarEv, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getURITextEj, ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl22resetCachedGrammarPoolEv, ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl12getSrcOffsetEv] }, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_76XMLUni13fgDOMEntitiesE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgDOMCommentsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni26fgDOMDatatypeNormalizationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgDOMNamespacesE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni31fgDOMWhitespaceInElementContentE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgDOMValidationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgDOMValidateIfSchemaE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni32fgDOMCharsetOverridesXMLEncodingE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni28fgDOMSupportedMediatypesOnlyE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgDOMInfosetE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgDOMCanonicalFormE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni26fgDOMNamespaceDeclarationsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgDOMCDATASectionsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXercesSchemaE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni29fgXercesUserAdoptsDOMDocumentE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgXercesDOMHasPSVIInfoE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni43fgXercesParserUseDocumentFromImplementationE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@.str = private unnamed_addr constant [19 x i8] c"DOMBuilderImpl.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714DOMBuilderImplE = dso_local constant [32 x i8] c"N11xercesc_2_714DOMBuilderImplE\00", align 1
@_ZTIN11xercesc_2_717AbstractDOMParserE = external constant ptr
@_ZTSN11xercesc_2_710DOMBuilderE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710DOMBuilderE\00", comdat, align 1
@_ZTIN11xercesc_2_710DOMBuilderE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DOMBuilderE }, comdat, align 8
@_ZTIN11xercesc_2_714DOMBuilderImplE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DOMBuilderImplE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, i64 2, ptr @_ZTIN11xercesc_2_710DOMBuilderE, i64 51202 }, align 8
@_ZTVN11xercesc_2_710DOMBuilderE = linkonce_odr dso_local unnamed_addr constant { [32 x ptr] } { [32 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DOMBuilderE, ptr @_ZN11xercesc_2_710DOMBuilderD2Ev, ptr @_ZN11xercesc_2_710DOMBuilderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_714DOMBuilderImplC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_714DOMBuilderImplC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_714DOMBuilderImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DOMBuilderImplD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImplC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  %5 = getelementptr inbounds i8, ptr %0, i64 200
  tail call void @_ZN11xercesc_2_710DOMBuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 2, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 3, i64 2), ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 4, i64 2), ptr %9, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 5, i64 2), ptr %5, align 8, !tbaa !39
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 2
  store i8 0, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !56
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  store i8 1, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  store i8 0, ptr %14, align 1, !tbaa !58
  %15 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner16setNormalizeDataEb(ptr noundef nonnull align 8 dereferenceable(776) %15, i1 noundef zeroext false) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMBuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [32 x ptr] }, ptr @_ZTVN11xercesc_2_710DOMBuilderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setNormalizeDataEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  store i8 %3, ptr %4, align 8, !tbaa !60
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 200
  tail call void @_ZN11xercesc_2_710DOMBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(250) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl15setErrorHandlerEPNS_15DOMErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !72
  %4 = icmp eq ptr %1, null
  %5 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br i1 %4, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef nonnull %7) #17
  br label %9

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef null) #17
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl15setErrorHandlerEPNS_15DOMErrorHandlerE(ptr noundef %0, ptr noundef %1) unnamed_addr #6 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl15setErrorHandlerEPNS_15DOMErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl17setEntityResolverEPNS_17DOMEntityResolverE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !75
  %4 = icmp eq ptr %1, null
  %5 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br i1 %4, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef nonnull %7) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 6
  store ptr null, ptr %8, align 8, !tbaa !76
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef null) #17
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !78
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl17setEntityResolverEPNS_17DOMEntityResolverE(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl17setEntityResolverEPNS_17DOMEntityResolverE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !76
  %4 = icmp eq ptr %1, null
  %5 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br i1 %4, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef nonnull %7) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !75
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef null) #17
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %4 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %4) #17
          to label %5 unwind label %6

5:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: noinline noreturn optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE(ptr noundef %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr poison) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = zext i1 %2 to i8
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMEntitiesE) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_717AbstractDOMParser29setCreateEntityReferenceNodesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

8:                                                ; preds = %3
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMCommentsE) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_717AbstractDOMParser21setCreateCommentNodesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

12:                                               ; preds = %8
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMDatatypeNormalizationE) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner16setNormalizeDataEb(ptr noundef nonnull align 8 dereferenceable(776) %16, i1 noundef zeroext %2) #17
  br label %175

17:                                               ; preds = %12
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMNamespacesE) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

21:                                               ; preds = %17
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgDOMWhitespaceInElementContentE) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_717AbstractDOMParser29setIncludeIgnorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

25:                                               ; preds = %21
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMValidationE) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 3
  store i8 %4, ptr %29, align 1, !tbaa !56
  br i1 %2, label %30, label %34

30:                                               ; preds = %28
  %31 = tail call noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %175

33:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 1) #17
  br label %175

34:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0) #17
  br label %175

35:                                               ; preds = %25
  %36 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgDOMValidateIfSchemaE) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 2
  store i8 %4, ptr %39, align 8, !tbaa !42
  br i1 %2, label %40, label %41

40:                                               ; preds = %38
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 2) #17
  br label %175

41:                                               ; preds = %38
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0) #17
  br label %175

42:                                               ; preds = %35
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni32fgDOMCharsetOverridesXMLEncodingE) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 9
  store i8 %4, ptr %46, align 8, !tbaa !57
  br label %175

47:                                               ; preds = %42
  %48 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgDOMSupportedMediatypesOnlyE) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgDOMInfosetE) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCanonicalFormE) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53, %50, %47
  br i1 %2, label %57, label %175

57:                                               ; preds = %56
  %58 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %59 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %58, i16 noundef signext 9, ptr noundef null, ptr noundef %59) #17
          to label %60 unwind label %61

60:                                               ; preds = %57
  tail call void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

61:                                               ; preds = %57
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %176

63:                                               ; preds = %53
  %64 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMNamespaceDeclarationsE) #17
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCDATASectionsE) #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66, %63
  br i1 %2, label %175, label %70

70:                                               ; preds = %69
  %71 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %72 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %71, i16 noundef signext 9, ptr noundef null, ptr noundef %72) #17
          to label %73 unwind label %74

73:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

74:                                               ; preds = %70
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %176

76:                                               ; preds = %66
  %77 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_717AbstractDOMParser11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

80:                                               ; preds = %76
  %81 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void @_ZN11xercesc_2_717AbstractDOMParser31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

84:                                               ; preds = %80
  %85 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesUserAdoptsDOMDocumentE) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  br i1 %2, label %89, label %90

89:                                               ; preds = %87
  store i8 1, ptr %88, align 1, !tbaa !58
  br label %175

90:                                               ; preds = %87
  store i8 0, ptr %88, align 1, !tbaa !58
  br label %175

91:                                               ; preds = %84
  %92 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE) #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void @_ZN11xercesc_2_717AbstractDOMParser18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

95:                                               ; preds = %91
  %96 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE) #17
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = xor i1 %2, true
  tail call void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %99) #17
  br label %175

100:                                              ; preds = %95
  %101 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE) #17
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  tail call void @_ZN11xercesc_2_717AbstractDOMParser28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

104:                                              ; preds = %100
  %105 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE) #17
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %108, i1 noundef zeroext %2) #17
  br i1 %2, label %109, label %175

109:                                              ; preds = %107
  %110 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %110, i1 noundef zeroext true) #17
  br label %175

111:                                              ; preds = %104
  %112 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  br i1 %2, label %118, label %115

115:                                              ; preds = %114
  %116 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %117 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %116) #17
  br i1 %117, label %175, label %118

118:                                              ; preds = %115, %114
  %119 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %119, i1 noundef zeroext %2) #17
  br label %175

120:                                              ; preds = %111
  %121 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE) #17
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %124, i1 noundef zeroext %2) #17
  br label %175

125:                                              ; preds = %120
  %126 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE) #17
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %129, i1 noundef zeroext %2) #17
  br label %175

130:                                              ; preds = %125
  %131 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercesDOMHasPSVIInfoE) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setCreateSchemaInfoEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2) #17
  br label %175

134:                                              ; preds = %130
  %135 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE) #17
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %138, i1 noundef zeroext %2) #17
  br label %175

139:                                              ; preds = %134
  %140 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE) #17
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %143, i1 noundef zeroext %2) #17
  br label %175

144:                                              ; preds = %139
  %145 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE) #17
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %148, i1 noundef zeroext %2) #17
  br label %175

149:                                              ; preds = %144
  %150 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE) #17
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %153, i1 noundef zeroext %2) #17
  br label %175

154:                                              ; preds = %149
  %155 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE) #17
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %158, i1 noundef zeroext %2) #17
  br label %175

159:                                              ; preds = %154
  %160 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE) #17
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %163, i1 noundef zeroext %2) #17
  br label %175

164:                                              ; preds = %159
  %165 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE) #17
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %168, i1 noundef zeroext %2) #17
  br label %175

169:                                              ; preds = %164
  %170 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %171 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %170, i16 noundef signext 8, ptr noundef null, ptr noundef %171) #17
          to label %172 unwind label %173

172:                                              ; preds = %169
  tail call void @__cxa_throw(ptr nonnull %170, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

173:                                              ; preds = %169
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %176

175:                                              ; preds = %11, %20, %30, %33, %34, %45, %69, %83, %94, %103, %118, %115, %128, %137, %147, %157, %167, %162, %152, %142, %133, %123, %107, %109, %98, %89, %90, %79, %56, %40, %41, %24, %15, %7
  ret void

176:                                              ; preds = %173, %74, %61
  %177 = phi ptr [ %170, %173 ], [ %71, %74 ], [ %58, %61 ]
  %178 = phi { ptr, i32 } [ %174, %173 ], [ %75, %74 ], [ %62, %61 ]
  tail call void @__cxa_free_exception(ptr %177) #15
  resume { ptr, i32 } %178
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717AbstractDOMParser29setCreateEntityReferenceNodesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717AbstractDOMParser21setCreateCommentNodesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 4, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717AbstractDOMParser29setIncludeIgnorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 1, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %3, ptr %4, align 1, !tbaa !83
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !83, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 1, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %1) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser19setCreateSchemaInfoEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setGenerateSyntheticAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  store i8 %3, ptr %4, align 1, !tbaa !89
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22setValidateAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  store i8 %3, ptr %4, align 2, !tbaa !90
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %3, ptr %4, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  store i8 %3, ptr %4, align 1, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setIgnoreAnnotationsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  store i8 %3, ptr %4, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner33setDisableDefaultEntityResolutionEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  store i8 %3, ptr %4, align 1, !tbaa !94
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner20setSkipDTDValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  store i8 %3, ptr %4, align 2, !tbaa !95
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #7 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb(ptr noundef nonnull align 8 dereferenceable(250) %4, ptr noundef %1, i1 noundef zeroext %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMEntitiesE) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getCreateEntityReferenceNodesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

7:                                                ; preds = %2
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMCommentsE) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser21getCreateCommentNodesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

12:                                               ; preds = %7
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMDatatypeNormalizationE) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %17 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner16getNormalizeDataEv(ptr noundef nonnull align 8 dereferenceable(776) %16) #17
  br label %173

18:                                               ; preds = %12
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMNamespacesE) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

23:                                               ; preds = %18
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgDOMWhitespaceInElementContentE) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIncludeIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

28:                                               ; preds = %23
  %29 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMValidationE) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !56, !range !85, !noundef !86
  %34 = icmp ne i8 %33, 0
  br label %173

35:                                               ; preds = %28
  %36 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgDOMValidateIfSchemaE) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !42, !range !85, !noundef !86
  %41 = icmp ne i8 %40, 0
  br label %173

42:                                               ; preds = %35
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni32fgDOMCharsetOverridesXMLEncodingE) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 9
  %47 = load i8, ptr %46, align 8, !tbaa !57, !range !85, !noundef !86
  %48 = icmp ne i8 %47, 0
  br label %173

49:                                               ; preds = %42
  %50 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgDOMSupportedMediatypesOnlyE) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %173, label %52

52:                                               ; preds = %49
  %53 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgDOMInfosetE) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %173, label %55

55:                                               ; preds = %52
  %56 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCanonicalFormE) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %173, label %58

58:                                               ; preds = %55
  %59 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMNamespaceDeclarationsE) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %173, label %61

61:                                               ; preds = %58
  %62 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCDATASectionsE) #17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %173, label %64

64:                                               ; preds = %61
  %65 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

69:                                               ; preds = %64
  %70 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

74:                                               ; preds = %69
  %75 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE) #17
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

79:                                               ; preds = %74
  %80 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE) #17
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

84:                                               ; preds = %79
  %85 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %89 = xor i1 %88, true
  br label %173

90:                                               ; preds = %84
  %91 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE) #17
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

95:                                               ; preds = %90
  %96 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE) #17
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %100 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %99) #17
  br label %173

101:                                              ; preds = %95
  %102 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE) #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %106 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %105) #17
  br label %173

107:                                              ; preds = %101
  %108 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE) #17
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %112 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %111) #17
  br label %173

113:                                              ; preds = %107
  %114 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE) #17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %118 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %117) #17
  br label %173

119:                                              ; preds = %113
  %120 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesUserAdoptsDOMDocumentE) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %124 = load i8, ptr %123, align 1, !tbaa !58, !range !85, !noundef !86
  %125 = icmp ne i8 %124, 0
  br label %173

126:                                              ; preds = %119
  %127 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercesDOMHasPSVIInfoE) #17
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser19getCreateSchemaInfoEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %173

131:                                              ; preds = %126
  %132 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE) #17
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %136 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %135) #17
  br label %173

137:                                              ; preds = %131
  %138 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE) #17
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %142 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %141) #17
  br label %173

143:                                              ; preds = %137
  %144 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE) #17
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %148 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %147) #17
  br label %173

149:                                              ; preds = %143
  %150 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE) #17
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %154 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %153) #17
  br label %173

155:                                              ; preds = %149
  %156 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE) #17
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %160 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %159) #17
  br label %173

161:                                              ; preds = %155
  %162 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE) #17
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %166 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %165) #17
  br label %173

167:                                              ; preds = %161
  %168 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %169 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %168, i16 noundef signext 8, ptr noundef null, ptr noundef %169) #17
          to label %170 unwind label %171

170:                                              ; preds = %167
  tail call void @__cxa_throw(ptr nonnull %168, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

171:                                              ; preds = %167
  %172 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %168) #15
  resume { ptr, i32 } %172

173:                                              ; preds = %58, %61, %49, %52, %55, %164, %158, %152, %146, %140, %134, %129, %122, %116, %110, %104, %98, %93, %87, %82, %77, %72, %67, %45, %38, %31, %26, %21, %15, %10, %5
  %174 = phi i1 [ %6, %5 ], [ %11, %10 ], [ %17, %15 ], [ %22, %21 ], [ %27, %26 ], [ %34, %31 ], [ %41, %38 ], [ %48, %45 ], [ %68, %67 ], [ %73, %72 ], [ %78, %77 ], [ %83, %82 ], [ %89, %87 ], [ %94, %93 ], [ %100, %98 ], [ %106, %104 ], [ %112, %110 ], [ %118, %116 ], [ %125, %122 ], [ %130, %129 ], [ %136, %134 ], [ %142, %140 ], [ %148, %146 ], [ %154, %152 ], [ %160, %158 ], [ %166, %164 ], [ false, %55 ], [ false, %52 ], [ false, %49 ], [ true, %61 ], [ true, %58 ]
  ret i1 %174
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getCreateEntityReferenceNodesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !80, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser21getCreateCommentNodesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 4, !tbaa !81, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner16getNormalizeDataEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %3 = load i8, ptr %2, align 8, !tbaa !60, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIncludeIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !82, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 2, !tbaa !84, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !87, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !88, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser19getCreateSchemaInfoEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 2, !tbaa !96, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getGenerateSyntheticAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %3 = load i8, ptr %2, align 1, !tbaa !89, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner22getValidateAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 2, !tbaa !90, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  %3 = load i8, ptr %2, align 1, !tbaa !92, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getIgnoreAnnotationsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 22
  %3 = load i8, ptr %2, align 4, !tbaa !93, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %3 = load i8, ptr %2, align 1, !tbaa !94, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner20getSkipDTDValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %3 = load i8, ptr %2, align 2, !tbaa !95, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !38 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMEntitiesE) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %99, label %6

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMCommentsE) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %99, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMDatatypeNormalizationE) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %99, label %12

12:                                               ; preds = %9
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMNamespacesE) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %99, label %15

15:                                               ; preds = %12
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMValidationE) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %99, label %18

18:                                               ; preds = %15
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgDOMValidateIfSchemaE) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %99, label %21

21:                                               ; preds = %18
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni32fgDOMCharsetOverridesXMLEncodingE) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %99, label %24

24:                                               ; preds = %21
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgDOMWhitespaceInElementContentE) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %99, label %27

27:                                               ; preds = %24
  %28 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesUserAdoptsDOMDocumentE) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %99, label %30

30:                                               ; preds = %27
  %31 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %99, label %33

33:                                               ; preds = %30
  %34 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %99, label %36

36:                                               ; preds = %33
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercesDOMHasPSVIInfoE) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %99, label %39

39:                                               ; preds = %36
  %40 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %99, label %42

42:                                               ; preds = %39
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %99, label %45

45:                                               ; preds = %42
  %46 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %45
  %49 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %99, label %51

51:                                               ; preds = %48
  %52 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %99, label %54

54:                                               ; preds = %51
  %55 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %99, label %57

57:                                               ; preds = %54
  %58 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %57
  %61 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgDOMSupportedMediatypesOnlyE) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgDOMInfosetE) #17
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCanonicalFormE) #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %63, %60
  br i1 %2, label %98, label %99

70:                                               ; preds = %66
  %71 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMNamespaceDeclarationsE) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCDATASectionsE) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70
  br i1 %2, label %99, label %98

77:                                               ; preds = %73
  %78 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE) #17
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE) #17
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE) #17
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %69, %95, %76
  br label %99

99:                                               ; preds = %77, %80, %83, %86, %89, %92, %95, %76, %69, %3, %6, %9, %12, %15, %18, %21, %24, %27, %30, %33, %36, %39, %42, %45, %48, %51, %54, %57, %98
  %100 = phi i1 [ false, %98 ], [ true, %57 ], [ true, %54 ], [ true, %51 ], [ true, %48 ], [ true, %45 ], [ true, %42 ], [ true, %39 ], [ true, %36 ], [ true, %33 ], [ true, %30 ], [ true, %27 ], [ true, %24 ], [ true, %21 ], [ true, %18 ], [ true, %15 ], [ true, %12 ], [ true, %9 ], [ true, %6 ], [ true, %3 ], [ true, %69 ], [ true, %76 ], [ true, %95 ], [ true, %92 ], [ true, %89 ], [ true, %86 ], [ true, %83 ], [ true, %80 ], [ true, %77 ]
  ret i1 %100
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn200_NK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb(ptr nocapture noundef readnone %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #7 align 2 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb(ptr nonnull align 8 poison, ptr noundef %1, i1 noundef zeroext %2) #17
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2) #17
  br label %27

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2) #17
  br label %27

11:                                               ; preds = %7
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_717AbstractDOMParser18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2) #17
  br label %27

15:                                               ; preds = %11
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE) #17
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_717AbstractDOMParser10useScannerEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2) #17
  br label %27

18:                                               ; preds = %15
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni43fgXercesParserUseDocumentFromImplementationE) #17
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_717AbstractDOMParser17useImplementationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2) #17
  br label %27

21:                                               ; preds = %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %23 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 8, ptr noundef null, ptr noundef %23) #17
          to label %24 unwind label %25

24:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #15
  resume { ptr, i32 } %26

27:                                               ; preds = %10, %17, %20, %14, %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !99 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !100

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !101
  %8 = load i16, ptr %1, align 2, !tbaa !101
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !103

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !104

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !101
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !105

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !106

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !101
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !107

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !108

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !101
  %28 = load i16, ptr %26, align 2, !tbaa !101
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !109, !llvm.loop !110

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10useScannerEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717AbstractDOMParser17useImplementationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = load ptr, ptr %4, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #17
  %10 = load ptr, ptr %3, align 8, !tbaa !79
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #17
  store ptr %11, ptr %5, align 8, !tbaa !112
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv(ptr noundef nonnull align 8 dereferenceable(250) %4, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %23

7:                                                ; preds = %2
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %23

12:                                               ; preds = %7
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %23

17:                                               ; preds = %12
  %18 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %19 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %18, i16 noundef signext 8, ptr noundef null, ptr noundef %19) #17
          to label %20 unwind label %21

20:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15, %10, %5
  %24 = phi ptr [ %6, %5 ], [ %11, %10 ], [ %16, %15 ]
  ret ptr %24
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(250) %0) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl7releaseEv(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl17resetDocumentPoolEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl17resetDocumentPoolEv(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl17resetDocumentPoolEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 1 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::Wrapper4DOMInputSource", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  %4 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef %4) #17
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(41) %3) #17
          to label %5 unwind label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 1, !tbaa !58, !range !85, !noundef !86
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
          to label %15 unwind label %11

11:                                               ; preds = %13, %9, %2
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
          to label %15 unwind label %11

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %10, %9 ], [ %14, %13 ]
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret ptr %16
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef nonnull align 1 %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKt(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) #17
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %4 = load i8, ptr %3, align 1, !tbaa !58, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %10

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl8parseURIEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKt(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKc(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) #17
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %4 = load i8, ptr %3, align 1, !tbaa !58, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %10

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl8parseURIEPKc(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKc(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr nocapture nonnull readnone align 1 %1, ptr nocapture readnone %2, i16 signext %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %5, i16 noundef signext 9, ptr noundef null, ptr noundef %6) #17
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #19
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs(ptr noundef %0, ptr nocapture nonnull readnone align 1 %1, ptr nocapture readnone %2, i16 signext %3) unnamed_addr #9 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr nonnull align 1 poison, ptr poison, i16 signext poison) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(250) %0, i32 noundef %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture readnone %6, i64 noundef %7, i64 noundef %8) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %10 = alloca %"class.xercesc_2_7::DOMLocatorImpl", align 8
  %11 = alloca %"class.xercesc_2_7::DOMErrorImpl", align 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %3, 2
  %17 = select i1 %16, i16 2, i16 1
  %18 = icmp eq i32 %3, 0
  %19 = select i1 %18, i16 0, i16 %17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #15
  %20 = shl i64 %7, 32
  %21 = ashr exact i64 %20, 32
  %22 = shl i64 %8, 32
  %23 = ashr exact i64 %22, 32
  %24 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  call void @_ZN11xercesc_2_714DOMLocatorImplC1EllPNS_7DOMNodeEPKtl(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 noundef %21, i64 noundef %23, ptr noundef %24, ptr noundef %5, i64 noundef -1) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #15
  invoke void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtPNS_10DOMLocatorE(ptr noundef nonnull align 8 dereferenceable(48) %11, i16 noundef signext %19, ptr noundef %4, ptr noundef nonnull %10) #17
          to label %25 unwind label %37

25:                                               ; preds = %15
  %26 = load ptr, ptr %12, align 8, !tbaa !72
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %11) #17
          to label %31 unwind label %39

31:                                               ; preds = %25
  br i1 %30, label %41, label %32

32:                                               ; preds = %31
  %33 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %34 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner14getInExceptionEv(ptr noundef nonnull align 8 dereferenceable(776) %33) #17
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = call ptr @__cxa_allocate_exception(i64 4) #15
  store i32 %1, ptr %36, align 16, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #19
          to label %45 unwind label %39

37:                                               ; preds = %15
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %42

39:                                               ; preds = %35, %25
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #18
  br label %42

41:                                               ; preds = %32, %31
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #15
  call void @_ZN11xercesc_2_714DOMLocatorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #15
  br label %44

42:                                               ; preds = %39, %37
  %43 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #15
  call void @_ZN11xercesc_2_714DOMLocatorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #15
  resume { ptr, i32 } %43

44:                                               ; preds = %41, %9
  ret void

45:                                               ; preds = %35
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717AbstractDOMParser14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMLocatorImplC1EllPNS_7DOMNodeEPKtl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtPNS_10DOMLocatorE(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner14getInExceptionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 1, !tbaa !116, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714DOMLocatorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture readnone %6, i64 noundef %7, i64 noundef %8) unnamed_addr #7 align 2 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(250) %10, i32 noundef %1, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr poison, i64 noundef %7, i64 noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl11resetErrorsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImpl11resetErrorsEv(ptr nocapture readnone %0) unnamed_addr #11 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %15) #17
  %17 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull %12, i1 noundef zeroext true, ptr noundef %17) #17
          to label %20 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #18
  resume { ptr, i32 } %19

20:                                               ; preds = %8, %4, %14
  %21 = phi ptr [ %16, %14 ], [ null, %4 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  %8 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  %9 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  %10 = load ptr, ptr %4, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8, ptr noundef %9) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %6
  %16 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %17 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %16) #17
  %18 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull %13, i1 noundef zeroext true, ptr noundef %18) #17
          to label %30 unwind label %19

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %17, ptr noundef %16) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %6, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !39
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %1) #17
  br label %30

30:                                               ; preds = %15, %21, %25
  %31 = phi ptr [ %29, %25 ], [ null, %21 ], [ %17, %15 ]
  ret ptr %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 619, i32 noundef 43, ptr noundef %10) #17
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #15
  br label %53

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv to i64), i64 0) #17
  call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true) #17
  %17 = icmp eq i16 %2, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef null) #17
  br label %22

20:                                               ; preds = %22
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %36

22:                                               ; preds = %18, %16
  %23 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %24 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %23, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #17
          to label %25 unwind label %20

25:                                               ; preds = %22
  %26 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
          to label %27 unwind label %34

27:                                               ; preds = %25
  %28 = icmp eq ptr %26, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %26, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = getelementptr inbounds ptr, ptr %31, i64 39
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30) #17
          to label %44 unwind label %34

34:                                               ; preds = %29, %25
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %21, %20 ]
  %38 = extractvalue { ptr, i32 } %37, 0
  %39 = extractvalue { ptr, i32 } %37, 1
  %40 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = call ptr @__cxa_begin_catch(ptr %38) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  invoke void @__cxa_rethrow() #19
          to label %61 unwind label %45

44:                                               ; preds = %29, %27
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret ptr %24

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %47 unwind label %58

47:                                               ; preds = %45
  %48 = extractvalue { ptr, i32 } %46, 1
  %49 = extractvalue { ptr, i32 } %46, 0
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi i32 [ %48, %47 ], [ %39, %36 ]
  %52 = phi ptr [ %49, %47 ], [ %38, %36 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %53

53:                                               ; preds = %50, %12
  %54 = phi i32 [ %15, %12 ], [ %51, %50 ]
  %55 = phi ptr [ %14, %12 ], [ %52, %50 ]
  %56 = insertvalue { ptr, i32 } poison, ptr %55, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %54, 1
  resume { ptr, i32 } %57

58:                                               ; preds = %45
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #16
  unreachable

61:                                               ; preds = %42
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 1, !tbaa !122, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
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
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv(ptr noundef nonnull align 8 dereferenceable(250) %0) #5 align 2 !prof !38 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %3 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %7) #17
  br label %8

8:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext false) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #5 comdat align 2 !prof !38 {
  store ptr %1, ptr %0, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 %3, ptr %4, align 1, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !126
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !125
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !39
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !86
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(250) %11) #17
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

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #7 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 43, ptr noundef %10) #17
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #15
  br label %53

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv to i64), i64 0) #17
  call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true) #17
  %17 = icmp eq i16 %2, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef null) #17
  br label %22

20:                                               ; preds = %22
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %36

22:                                               ; preds = %18, %16
  %23 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %24 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %23, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #17
          to label %25 unwind label %20

25:                                               ; preds = %22
  %26 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
          to label %27 unwind label %34

27:                                               ; preds = %25
  %28 = icmp eq ptr %26, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %26, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = getelementptr inbounds ptr, ptr %31, i64 39
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30) #17
          to label %44 unwind label %34

34:                                               ; preds = %29, %25
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %21, %20 ]
  %38 = extractvalue { ptr, i32 } %37, 0
  %39 = extractvalue { ptr, i32 } %37, 1
  %40 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = call ptr @__cxa_begin_catch(ptr %38) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  invoke void @__cxa_rethrow() #19
          to label %61 unwind label %45

44:                                               ; preds = %29, %27
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret ptr %24

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %47 unwind label %58

47:                                               ; preds = %45
  %48 = extractvalue { ptr, i32 } %46, 1
  %49 = extractvalue { ptr, i32 } %46, 0
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi i32 [ %48, %47 ], [ %39, %36 ]
  %52 = phi ptr [ %49, %47 ], [ %38, %36 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %53

53:                                               ; preds = %50, %12
  %54 = phi i32 [ %15, %12 ], [ %51, %50 ]
  %55 = phi ptr [ %14, %12 ], [ %52, %50 ]
  %56 = insertvalue { ptr, i32 } poison, ptr %55, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %54, 1
  resume { ptr, i32 } %57

58:                                               ; preds = %45
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #16
  unreachable

61:                                               ; preds = %42
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #7 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = alloca %"class.xercesc_2_7::Wrapper4DOMInputSource", align 8
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 43, ptr noundef %11) #17
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #15
  br label %63

17:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv to i64), i64 0) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  %18 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  invoke void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef %18) #17
          to label %19 unwind label %23

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true) #17
  %20 = icmp eq i16 %2, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %22, ptr noundef null) #17
  br label %27

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %47

25:                                               ; preds = %27
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %45

27:                                               ; preds = %21, %19
  %28 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = getelementptr inbounds ptr, ptr %29, i64 10
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(776) %28, ptr noundef nonnull align 8 dereferenceable(41) %6, i16 noundef signext %2, i1 noundef zeroext %3) #17
          to label %33 unwind label %25

33:                                               ; preds = %27
  %34 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
          to label %35 unwind label %42

35:                                               ; preds = %33
  %36 = icmp eq ptr %34, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %34, i64 24
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = getelementptr inbounds ptr, ptr %39, i64 39
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38) #17
          to label %44 unwind label %42

42:                                               ; preds = %37, %33
  %43 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %45

44:                                               ; preds = %37, %35
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret ptr %32

45:                                               ; preds = %42, %25
  %46 = phi { ptr, i32 } [ %43, %42 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  br label %47

47:                                               ; preds = %45, %23
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %24, %23 ]
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  %51 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = call ptr @__cxa_begin_catch(ptr %49) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  invoke void @__cxa_rethrow() #19
          to label %71 unwind label %55

55:                                               ; preds = %53
  %56 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %57 unwind label %68

57:                                               ; preds = %55
  %58 = extractvalue { ptr, i32 } %56, 1
  %59 = extractvalue { ptr, i32 } %56, 0
  br label %60

60:                                               ; preds = %57, %47
  %61 = phi i32 [ %58, %57 ], [ %50, %47 ]
  %62 = phi ptr [ %59, %57 ], [ %49, %47 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %63

63:                                               ; preds = %60, %13
  %64 = phi i32 [ %16, %13 ], [ %61, %60 ]
  %65 = phi ptr [ %15, %13 ], [ %62, %60 ]
  %66 = insertvalue { ptr, i32 } poison, ptr %65, 0
  %67 = insertvalue { ptr, i32 } %66, i32 %64, 1
  resume { ptr, i32 } %67

68:                                               ; preds = %55
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #16
  unreachable

71:                                               ; preds = %53
  unreachable
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb(ptr noundef %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #7 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl22resetCachedGrammarPoolEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #3 align 2 !prof !38 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl22resetCachedGrammarPoolEv(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl22resetCachedGrammarPoolEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !38 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %4 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getGrammarEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %3 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl14getRootGrammarEv(ptr noundef %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getURITextEj(ptr noundef nonnull align 8 dereferenceable(250) %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !38 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %3, i32 noundef %1) #17
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getURITextEj(ptr noundef %0, i32 noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getURITextEj(ptr noundef nonnull align 8 dereferenceable(250) %3, i32 noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DOMBuilderImpl12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #3 align 2 !prof !38 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #17
  %3 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #17
  ret i32 %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef i32 @_ZThn200_NK11xercesc_2_714DOMBuilderImpl12getSrcOffsetEv(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef i32 @_ZNK11xercesc_2_714DOMBuilderImpl12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #5 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #5 comdat align 2 !prof !38 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMBuilderImpl13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #5 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #7 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef nonnull align 8 dereferenceable(41) %1) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #7 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(250) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i1 %5
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resetEntitiesEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #7 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef nonnull align 8 dereferenceable(41) %1) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef nonnull align 8 dereferenceable(250) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !132 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !133

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #17
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !39
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
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !135

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !101
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !136

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !101
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !137, !llvm.loop !138

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #17
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !50, i64 208}
!43 = !{!"_ZTSN11xercesc_2_714DOMBuilderImplE", !44, i64 0, !55, i64 200, !50, i64 208, !50, i64 209, !52, i64 216, !52, i64 224, !52, i64 232, !52, i64 240, !50, i64 248, !50, i64 249}
!44 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !45, i64 0, !46, i64 8, !47, i64 16, !48, i64 24, !49, i64 32, !50, i64 40, !50, i64 41, !50, i64 42, !50, i64 43, !50, i64 44, !50, i64 45, !50, i64 46, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !53, i64 160, !52, i64 184, !52, i64 192}
!45 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!46 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!47 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!48 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!49 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!50 = !{!"bool", !51, i64 0}
!51 = !{!"omnipotent char", !41, i64 0}
!52 = !{!"any pointer", !51, i64 0}
!53 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !54, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"int", !51, i64 0}
!55 = !{!"_ZTSN11xercesc_2_710DOMBuilderE"}
!56 = !{!43, !50, i64 209}
!57 = !{!43, !50, i64 248}
!58 = !{!43, !50, i64 249}
!59 = !{!44, !52, i64 48}
!60 = !{!61, !50, i64 32}
!61 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !62, i64 0, !63, i64 8, !50, i64 16, !50, i64 17, !50, i64 18, !50, i64 19, !50, i64 20, !50, i64 21, !50, i64 22, !50, i64 23, !50, i64 24, !50, i64 25, !50, i64 26, !50, i64 27, !50, i64 28, !50, i64 29, !50, i64 30, !50, i64 31, !50, i64 32, !50, i64 33, !50, i64 34, !50, i64 35, !50, i64 36, !50, i64 37, !50, i64 38, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !54, i64 64, !54, i64 68, !52, i64 72, !54, i64 80, !54, i64 84, !54, i64 88, !54, i64 92, !54, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !50, i64 176, !64, i64 184, !52, i64 264, !67, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !52, i64 312, !52, i64 320, !52, i64 328, !52, i64 336, !52, i64 344, !66, i64 352, !52, i64 360, !53, i64 368, !68, i64 392, !68, i64 432, !68, i64 472, !68, i64 512, !68, i64 552, !68, i64 592, !68, i64 632, !69, i64 672}
!62 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!63 = !{!"long", !51, i64 0}
!64 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !65, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !54, i64 40, !52, i64 48, !50, i64 56, !66, i64 60, !50, i64 64, !52, i64 72}
!65 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!66 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !51, i64 0}
!67 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !51, i64 0}
!68 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !54, i64 0, !54, i64 4, !54, i64 8, !50, i64 12, !52, i64 16, !52, i64 24, !52, i64 32}
!69 = !{!"_ZTSN11xercesc_2_79ElemStackE", !54, i64 0, !54, i64 4, !70, i64 8, !52, i64 48, !54, i64 56, !54, i64 60, !54, i64 64, !54, i64 68, !54, i64 72, !54, i64 76, !54, i64 80, !52, i64 88, !52, i64 96}
!70 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !71, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !54, i64 32, !54, i64 36}
!71 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!72 = !{!43, !52, i64 232}
!73 = !{!"function_entry_count", i64 3}
!74 = !{!61, !52, i64 144}
!75 = !{!43, !52, i64 216}
!76 = !{!43, !52, i64 224}
!77 = !{!"function_entry_count", i64 2}
!78 = !{!61, !52, i64 136}
!79 = !{!44, !52, i64 144}
!80 = !{!44, !50, i64 40}
!81 = !{!44, !50, i64 44}
!82 = !{!44, !50, i64 41}
!83 = !{!61, !50, i64 29}
!84 = !{!61, !50, i64 30}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!61, !50, i64 17}
!88 = !{!61, !50, i64 16}
!89 = !{!61, !50, i64 33}
!90 = !{!61, !50, i64 34}
!91 = !{!61, !50, i64 28}
!92 = !{!61, !50, i64 35}
!93 = !{!61, !50, i64 36}
!94 = !{!61, !50, i64 37}
!95 = !{!61, !50, i64 38}
!96 = !{!44, !50, i64 46}
!97 = !{!"function_entry_count", i64 498}
!98 = !{!"function_entry_count", i64 1}
!99 = !{!"function_entry_count", i64 1231717351}
!100 = !{!"branch_weights", i32 621, i32 -1469098093}
!101 = !{!102, !102, i64 0}
!102 = !{!"short", !51, i64 0}
!103 = !{!"branch_weights", i32 408901017, i32 1}
!104 = !{!"branch_weights", i32 267, i32 4}
!105 = !{!"branch_weights", i32 1, i32 4}
!106 = !{!"branch_weights", i32 156, i32 112}
!107 = !{!"branch_weights", i32 1, i32 112}
!108 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!109 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!44, !52, i64 56}
!113 = !{!114, !114, i64 0}
!114 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !51, i64 0}
!115 = !{!44, !52, i64 72}
!116 = !{!61, !50, i64 21}
!117 = !{!118, !52, i64 8}
!118 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !119, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40}
!119 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !51, i64 0}
!120 = !{!118, !52, i64 16}
!121 = !{!118, !52, i64 24}
!122 = !{!44, !50, i64 43}
!123 = !{!124, !52, i64 0}
!124 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_14DOMBuilderImplEEE", !52, i64 0, !51, i64 8}
!125 = !{!124, !51, i64 8}
!126 = !{!61, !52, i64 128}
!127 = !{!44, !52, i64 120}
!128 = !{!61, !52, i64 304}
!129 = !{!43, !52, i64 240}
!130 = !{!64, !52, i64 24}
!131 = !{!64, !50, i64 64}
!132 = !{!"function_entry_count", i64 558789}
!133 = !{!"branch_weights", i32 158605, i32 400186}
!134 = !{!"function_entry_count", i64 2453164456}
!135 = !{!"branch_weights", i32 1, i32 -1841802839}
!136 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!137 = !{!"branch_weights", i32 408669070, i32 -279908794}
!138 = distinct !{!138, !111}
!139 = !{!140, !52, i64 40}
!140 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !141, i64 8, !52, i64 16, !54, i64 24, !52, i64 32, !52, i64 40}
!141 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !51, i64 0}
!142 = !{!64, !52, i64 16}
