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
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

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
@_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni43fgXercesParserUseDocumentFromImplementationE = external local_unnamed_addr constant [0 x i16], align 2
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImplC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %5 = getelementptr inbounds i8, ptr %0, i64 200
  store ptr getelementptr inbounds ({ [32 x ptr] }, ptr @_ZTVN11xercesc_2_710DOMBuilderE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 2, i64 2), ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 3, i64 2), ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 4, i64 2), ptr %9, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [74 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr], [32 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMBuilderImplE, i64 0, inrange i32 5, i64 2), ptr %5, align 8, !tbaa !35
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 2
  store i8 0, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !52
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  store i8 1, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  store i8 0, ptr %14, align 1, !tbaa !54
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %16, i64 0, i32 18
  store i8 0, ptr %17, align 8, !tbaa !56
  ret void
}

declare void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImplD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImplD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl15setErrorHandlerEPNS_15DOMErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !68
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = select i1 %4, ptr null, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  store ptr %8, ptr %9, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl15setErrorHandlerEPNS_15DOMErrorHandlerE(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %1, ptr %3, align 8, !tbaa !68
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds i8, ptr %0, i64 -152
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds i8, ptr %0, i64 -192
  %8 = select i1 %4, ptr null, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  store ptr %8, ptr %9, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl17setEntityResolverEPNS_17DOMEntityResolverE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !70
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 6
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !73
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl17setEntityResolverEPNS_17DOMEntityResolverE(ptr noundef %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %1, ptr %3, align 8, !tbaa !70
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds i8, ptr %0, i64 -152
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 -184
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %0, i64 24
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %7, %12
  %16 = phi ptr [ %11, %7 ], [ %14, %12 ]
  store ptr null, ptr %16, align 8, !tbaa !73
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !74
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !73
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %8
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold noreturn uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl9setFilterEPNS_16DOMBuilderFilterE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr poison)
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = zext i1 %2 to i8
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMEntitiesE)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  store i8 %4, ptr %8, align 8, !tbaa !76
  br label %209

9:                                                ; preds = %3
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMCommentsE)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  store i8 %4, ptr %13, align 4, !tbaa !77
  br label %209

14:                                               ; preds = %9
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMDatatypeNormalizationE)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %19, i64 0, i32 18
  store i8 %4, ptr %20, align 8, !tbaa !56
  br label %209

21:                                               ; preds = %14
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMNamespacesE)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2)
  br label %209

25:                                               ; preds = %21
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgDOMWhitespaceInElementContentE)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  store i8 %4, ptr %29, align 1, !tbaa !78
  br label %209

30:                                               ; preds = %25
  %31 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMValidationE)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 3
  store i8 %4, ptr %34, align 1, !tbaa !52
  br i1 %2, label %35, label %39

35:                                               ; preds = %33
  %36 = tail call noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %209

38:                                               ; preds = %35
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 1)
  br label %209

39:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0)
  br label %209

40:                                               ; preds = %30
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgDOMValidateIfSchemaE)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 2
  store i8 %4, ptr %44, align 8, !tbaa !38
  br i1 %2, label %45, label %46

45:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 2)
  br label %209

46:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0)
  br label %209

47:                                               ; preds = %40
  %48 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni32fgDOMCharsetOverridesXMLEncodingE)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 9
  store i8 %4, ptr %51, align 8, !tbaa !53
  br label %209

52:                                               ; preds = %47
  %53 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgDOMSupportedMediatypesOnlyE)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgDOMInfosetE)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCanonicalFormE)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58, %55, %52
  br i1 %2, label %62, label %209

62:                                               ; preds = %61
  %63 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %64 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %63, i16 noundef signext 9, ptr noundef null, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %62
  tail call void @__cxa_throw(ptr nonnull %63, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

67:                                               ; preds = %62
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %210

69:                                               ; preds = %58
  %70 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMNamespaceDeclarationsE)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCDATASectionsE)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72, %69
  br i1 %2, label %209, label %76

76:                                               ; preds = %75
  %77 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %78 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %79 = load ptr, ptr %78, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %77, i16 noundef signext 9, ptr noundef null, ptr noundef %79)
          to label %80 unwind label %81

80:                                               ; preds = %76
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

81:                                               ; preds = %76
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %210

83:                                               ; preds = %72
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @_ZN11xercesc_2_717AbstractDOMParser11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2)
  br label %209

87:                                               ; preds = %83
  %88 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @_ZN11xercesc_2_717AbstractDOMParser31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2)
  br label %209

91:                                               ; preds = %87
  %92 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesUserAdoptsDOMDocumentE)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  br i1 %2, label %96, label %97

96:                                               ; preds = %94
  store i8 1, ptr %95, align 1, !tbaa !54
  br label %209

97:                                               ; preds = %94
  store i8 0, ptr %95, align 1, !tbaa !54
  br label %209

98:                                               ; preds = %91
  %99 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  tail call void @_ZN11xercesc_2_717AbstractDOMParser18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2)
  br label %209

102:                                              ; preds = %98
  %103 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = xor i1 %2, true
  tail call void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %106)
  br label %209

107:                                              ; preds = %102
  %108 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  tail call void @_ZN11xercesc_2_717AbstractDOMParser28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2)
  br label %209

111:                                              ; preds = %107
  %112 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %116 = load ptr, ptr %115, align 8, !tbaa !55
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %116, i64 0, i32 15
  store i8 %4, ptr %117, align 1, !tbaa !79
  br i1 %2, label %118, label %209

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %116, i64 0, i32 16
  store i8 1, ptr %119, align 2, !tbaa !80
  br label %209

120:                                              ; preds = %111
  %121 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  br i1 %2, label %130, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %126 = load ptr, ptr %125, align 8, !tbaa !55
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %126, i64 0, i32 15
  %128 = load i8, ptr %127, align 1, !tbaa !79, !range !81, !noundef !82
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %209

130:                                              ; preds = %124, %123
  %131 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %132 = load ptr, ptr %131, align 8, !tbaa !55
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %132, i64 0, i32 16
  store i8 %4, ptr %133, align 2, !tbaa !80
  br label %209

134:                                              ; preds = %120
  %135 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %139 = load ptr, ptr %138, align 8, !tbaa !55
  %140 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %139, i64 0, i32 3
  store i8 %4, ptr %140, align 1, !tbaa !83
  br label %209

141:                                              ; preds = %134
  %142 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %146 = load ptr, ptr %145, align 8, !tbaa !55
  %147 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %146, i64 0, i32 2
  store i8 %4, ptr %147, align 8, !tbaa !84
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %146, i64 0, i32 49, i32 9
  store i8 %4, ptr %148, align 8, !tbaa !85
  br label %209

149:                                              ; preds = %141
  %150 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercesDOMHasPSVIInfoE)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setCreateSchemaInfoEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %2)
  br label %209

153:                                              ; preds = %149
  %154 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %158 = load ptr, ptr %157, align 8, !tbaa !55
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %158, i64 0, i32 19
  store i8 %4, ptr %159, align 1, !tbaa !86
  br label %209

160:                                              ; preds = %153
  %161 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %165 = load ptr, ptr %164, align 8, !tbaa !55
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %165, i64 0, i32 20
  store i8 %4, ptr %166, align 2, !tbaa !87
  br label %209

167:                                              ; preds = %160
  %168 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %172 = load ptr, ptr %171, align 8, !tbaa !55
  %173 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %172, i64 0, i32 14
  store i8 %4, ptr %173, align 4, !tbaa !88
  br label %209

174:                                              ; preds = %167
  %175 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %179 = load ptr, ptr %178, align 8, !tbaa !55
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %179, i64 0, i32 21
  store i8 %4, ptr %180, align 1, !tbaa !89
  br label %209

181:                                              ; preds = %174
  %182 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %186 = load ptr, ptr %185, align 8, !tbaa !55
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %186, i64 0, i32 22
  store i8 %4, ptr %187, align 4, !tbaa !90
  br label %209

188:                                              ; preds = %181
  %189 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %193 = load ptr, ptr %192, align 8, !tbaa !55
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %193, i64 0, i32 23
  store i8 %4, ptr %194, align 1, !tbaa !91
  br label %209

195:                                              ; preds = %188
  %196 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %200 = load ptr, ptr %199, align 8, !tbaa !55
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %200, i64 0, i32 24
  store i8 %4, ptr %201, align 2, !tbaa !92
  br label %209

202:                                              ; preds = %195
  %203 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %204 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %205 = load ptr, ptr %204, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %203, i16 noundef signext 8, ptr noundef null, ptr noundef %205)
          to label %206 unwind label %207

206:                                              ; preds = %202
  tail call void @__cxa_throw(ptr nonnull %203, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

207:                                              ; preds = %202
  %208 = landingpad { ptr, i32 }
          cleanup
  br label %210

209:                                              ; preds = %12, %24, %35, %38, %39, %50, %75, %90, %101, %110, %130, %124, %144, %156, %170, %184, %198, %191, %177, %163, %152, %137, %114, %118, %105, %96, %97, %86, %61, %45, %46, %28, %17, %7
  ret void

210:                                              ; preds = %207, %81, %67
  %211 = phi ptr [ %203, %207 ], [ %77, %81 ], [ %63, %67 ]
  %212 = phi { ptr, i32 } [ %208, %207 ], [ %82, %81 ], [ %68, %67 ]
  tail call void @__cxa_free_exception(ptr %211) #20
  resume { ptr, i32 } %212
}

declare noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser18setLoadExternalDTDEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser19setCreateSchemaInfoEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #10 align 2 !prof !34 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl10setFeatureEPKtb(ptr noundef nonnull align 8 dereferenceable(250) %4, ptr noundef %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMEntitiesE)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !76, !range !81, !noundef !82
  %8 = icmp ne i8 %7, 0
  br label %215

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMCommentsE)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  %14 = load i8, ptr %13, align 4, !tbaa !77, !range !81, !noundef !82
  %15 = icmp ne i8 %14, 0
  br label %215

16:                                               ; preds = %9
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMDatatypeNormalizationE)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %21, i64 0, i32 18
  %23 = load i8, ptr %22, align 8, !tbaa !56, !range !81, !noundef !82
  %24 = icmp ne i8 %23, 0
  br label %215

25:                                               ; preds = %16
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMNamespacesE)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %215

30:                                               ; preds = %25
  %31 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgDOMWhitespaceInElementContentE)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !78, !range !81, !noundef !82
  %36 = icmp ne i8 %35, 0
  br label %215

37:                                               ; preds = %30
  %38 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMValidationE)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !52, !range !81, !noundef !82
  %43 = icmp ne i8 %42, 0
  br label %215

44:                                               ; preds = %37
  %45 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgDOMValidateIfSchemaE)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 2
  %49 = load i8, ptr %48, align 8, !tbaa !38, !range !81, !noundef !82
  %50 = icmp ne i8 %49, 0
  br label %215

51:                                               ; preds = %44
  %52 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni32fgDOMCharsetOverridesXMLEncodingE)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 9
  %56 = load i8, ptr %55, align 8, !tbaa !53, !range !81, !noundef !82
  %57 = icmp ne i8 %56, 0
  br label %215

58:                                               ; preds = %51
  %59 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgDOMSupportedMediatypesOnlyE)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %215, label %61

61:                                               ; preds = %58
  %62 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgDOMInfosetE)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %215, label %64

64:                                               ; preds = %61
  %65 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCanonicalFormE)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %215, label %67

67:                                               ; preds = %64
  %68 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMNamespaceDeclarationsE)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %215, label %70

70:                                               ; preds = %67
  %71 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCDATASectionsE)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %215, label %73

73:                                               ; preds = %70
  %74 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %215

78:                                               ; preds = %73
  %79 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %215

83:                                               ; preds = %78
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %215

88:                                               ; preds = %83
  %89 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %215

93:                                               ; preds = %88
  %94 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %98 = xor i1 %97, true
  br label %215

99:                                               ; preds = %93
  %100 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %215

104:                                              ; preds = %99
  %105 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %109 = load ptr, ptr %108, align 8, !tbaa !55
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %109, i64 0, i32 15
  %111 = load i8, ptr %110, align 1, !tbaa !79, !range !81, !noundef !82
  %112 = icmp ne i8 %111, 0
  br label %215

113:                                              ; preds = %104
  %114 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %118 = load ptr, ptr %117, align 8, !tbaa !55
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %118, i64 0, i32 16
  %120 = load i8, ptr %119, align 2, !tbaa !80, !range !81, !noundef !82
  %121 = icmp ne i8 %120, 0
  br label %215

122:                                              ; preds = %113
  %123 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %127 = load ptr, ptr %126, align 8, !tbaa !55
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %127, i64 0, i32 3
  %129 = load i8, ptr %128, align 1, !tbaa !83, !range !81, !noundef !82
  %130 = icmp ne i8 %129, 0
  br label %215

131:                                              ; preds = %122
  %132 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %136 = load ptr, ptr %135, align 8, !tbaa !55
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %136, i64 0, i32 2
  %138 = load i8, ptr %137, align 8, !tbaa !84, !range !81, !noundef !82
  %139 = icmp ne i8 %138, 0
  br label %215

140:                                              ; preds = %131
  %141 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesUserAdoptsDOMDocumentE)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %145 = load i8, ptr %144, align 1, !tbaa !54, !range !81, !noundef !82
  %146 = icmp ne i8 %145, 0
  br label %215

147:                                              ; preds = %140
  %148 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercesDOMHasPSVIInfoE)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %152 = load i8, ptr %151, align 2, !tbaa !93, !range !81, !noundef !82
  %153 = icmp ne i8 %152, 0
  br label %215

154:                                              ; preds = %147
  %155 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %159 = load ptr, ptr %158, align 8, !tbaa !55
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %159, i64 0, i32 19
  %161 = load i8, ptr %160, align 1, !tbaa !86, !range !81, !noundef !82
  %162 = icmp ne i8 %161, 0
  br label %215

163:                                              ; preds = %154
  %164 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %168 = load ptr, ptr %167, align 8, !tbaa !55
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %168, i64 0, i32 20
  %170 = load i8, ptr %169, align 2, !tbaa !87, !range !81, !noundef !82
  %171 = icmp ne i8 %170, 0
  br label %215

172:                                              ; preds = %163
  %173 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %177 = load ptr, ptr %176, align 8, !tbaa !55
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %177, i64 0, i32 21
  %179 = load i8, ptr %178, align 1, !tbaa !89, !range !81, !noundef !82
  %180 = icmp ne i8 %179, 0
  br label %215

181:                                              ; preds = %172
  %182 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %186 = load ptr, ptr %185, align 8, !tbaa !55
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %186, i64 0, i32 22
  %188 = load i8, ptr %187, align 4, !tbaa !90, !range !81, !noundef !82
  %189 = icmp ne i8 %188, 0
  br label %215

190:                                              ; preds = %181
  %191 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %195 = load ptr, ptr %194, align 8, !tbaa !55
  %196 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %195, i64 0, i32 23
  %197 = load i8, ptr %196, align 1, !tbaa !91, !range !81, !noundef !82
  %198 = icmp ne i8 %197, 0
  br label %215

199:                                              ; preds = %190
  %200 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %204 = load ptr, ptr %203, align 8, !tbaa !55
  %205 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %204, i64 0, i32 24
  %206 = load i8, ptr %205, align 2, !tbaa !92, !range !81, !noundef !82
  %207 = icmp ne i8 %206, 0
  br label %215

208:                                              ; preds = %199
  %209 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %210 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %211 = load ptr, ptr %210, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %209, i16 noundef signext 8, ptr noundef null, ptr noundef %211)
          to label %212 unwind label %213

212:                                              ; preds = %208
  tail call void @__cxa_throw(ptr nonnull %209, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

213:                                              ; preds = %208
  %214 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %209) #20
  resume { ptr, i32 } %214

215:                                              ; preds = %67, %70, %58, %61, %64, %202, %193, %184, %175, %166, %157, %150, %143, %134, %125, %116, %107, %102, %96, %91, %86, %81, %76, %54, %47, %40, %33, %28, %19, %12, %5
  %216 = phi i1 [ %8, %5 ], [ %15, %12 ], [ %24, %19 ], [ %29, %28 ], [ %36, %33 ], [ %43, %40 ], [ %50, %47 ], [ %57, %54 ], [ %77, %76 ], [ %82, %81 ], [ %87, %86 ], [ %92, %91 ], [ %98, %96 ], [ %103, %102 ], [ %112, %107 ], [ %121, %116 ], [ %130, %125 ], [ %139, %134 ], [ %146, %143 ], [ %153, %150 ], [ %162, %157 ], [ %171, %166 ], [ %180, %175 ], [ %189, %184 ], [ %198, %193 ], [ %207, %202 ], [ false, %64 ], [ false, %61 ], [ false, %58 ], [ true, %70 ], [ true, %67 ]
  ret i1 %216
}

declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getLoadExternalDTDEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl10getFeatureEPKt(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !34 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMEntitiesE)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %99, label %6

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgDOMCommentsE)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %99, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMDatatypeNormalizationE)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %99, label %12

12:                                               ; preds = %9
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMNamespacesE)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %99, label %15

15:                                               ; preds = %12
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDOMValidationE)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %99, label %18

18:                                               ; preds = %15
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgDOMValidateIfSchemaE)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %99, label %21

21:                                               ; preds = %18
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni32fgDOMCharsetOverridesXMLEncodingE)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %99, label %24

24:                                               ; preds = %21
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgDOMWhitespaceInElementContentE)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %99, label %27

27:                                               ; preds = %24
  %28 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesUserAdoptsDOMDocumentE)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %99, label %30

30:                                               ; preds = %27
  %31 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesCalculateSrcOfsE)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %99, label %33

33:                                               ; preds = %30
  %34 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesStandardUriConformantE)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %99, label %36

36:                                               ; preds = %33
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercesDOMHasPSVIInfoE)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %99, label %39

39:                                               ; preds = %36
  %40 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni27fgXercesValidateAnnotationsE)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %99, label %42

42:                                               ; preds = %39
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesGenerateSyntheticAnnotationsE)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %99, label %45

45:                                               ; preds = %42
  %46 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni34fgXercesIdentityConstraintCheckingE)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %45
  %49 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesIgnoreCachedDTDE)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %99, label %51

51:                                               ; preds = %48
  %52 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesIgnoreAnnotationsE)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %99, label %54

54:                                               ; preds = %51
  %55 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni38fgXercesDisableDefaultEntityResolutionE)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %99, label %57

57:                                               ; preds = %54
  %58 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgXercesSkipDTDValidationE)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %57
  %61 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgDOMSupportedMediatypesOnlyE)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgDOMInfosetE)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCanonicalFormE)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %63, %60
  br i1 %2, label %98, label %99

70:                                               ; preds = %66
  %71 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgDOMNamespaceDeclarationsE)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgDOMCDATASectionsE)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70
  br i1 %2, label %99, label %98

77:                                               ; preds = %73
  %78 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXercesSchemaE)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgXercesSchemaFullCheckingE)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesLoadExternalDTDE)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesContinueAfterFatalErrorE)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercesValidationErrorAsFatalE)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni29fgXercesCacheGrammarFromParseE)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni31fgXercesUseCachedGrammarInParseE)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %76, %69, %95
  br label %99

99:                                               ; preds = %95, %77, %80, %83, %86, %89, %92, %76, %69, %3, %6, %9, %12, %15, %18, %21, %24, %27, %30, %33, %36, %39, %42, %45, %48, %51, %54, %57, %98
  %100 = phi i1 [ false, %98 ], [ true, %57 ], [ true, %54 ], [ true, %51 ], [ true, %48 ], [ true, %45 ], [ true, %42 ], [ true, %39 ], [ true, %36 ], [ true, %33 ], [ true, %30 ], [ true, %27 ], [ true, %24 ], [ true, %21 ], [ true, %18 ], [ true, %15 ], [ true, %12 ], [ true, %9 ], [ true, %6 ], [ true, %3 ], [ true, %69 ], [ true, %76 ], [ true, %92 ], [ true, %89 ], [ true, %86 ], [ true, %83 ], [ true, %80 ], [ true, %77 ], [ true, %95 ]
  ret i1 %100
}

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn200_NK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb(ptr nocapture noundef readnone %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #10 align 2 !prof !34 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714DOMBuilderImpl13canSetFeatureEPKtb(ptr nonnull align 8 poison, ptr noundef %1, i1 noundef zeroext %2)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2)
  br label %94

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2)
  br label %94

11:                                               ; preds = %7
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_717AbstractDOMParser18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2)
  br label %94

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load i16, ptr %1, align 2, !tbaa !94
  %19 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, align 2, !tbaa !94
  %20 = icmp eq i16 %18, %19
  br i1 %20, label %24, label %36

21:                                               ; preds = %15
  %22 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, align 2, !tbaa !94
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %35, label %36

24:                                               ; preds = %17, %29
  %25 = phi i16 [ %32, %29 ], [ %18, %17 ]
  %26 = phi ptr [ %31, %29 ], [ @_ZN11xercesc_2_76XMLUni19fgXercesScannerNameE, %17 ]
  %27 = phi ptr [ %30, %29 ], [ %1, %17 ]
  %28 = icmp eq i16 %25, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds i16, ptr %27, i64 1
  %31 = getelementptr inbounds i16, ptr %26, i64 1
  %32 = load i16, ptr %30, align 2, !tbaa !94
  %33 = load i16, ptr %31, align 2, !tbaa !94
  %34 = icmp eq i16 %32, %33
  br i1 %34, label %24, label %36, !llvm.loop !96

35:                                               ; preds = %24, %21
  tail call void @_ZN11xercesc_2_717AbstractDOMParser10useScannerEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %2)
  br label %94

36:                                               ; preds = %29, %17, %21
  br i1 %16, label %41, label %37

37:                                               ; preds = %36
  %38 = load i16, ptr %1, align 2, !tbaa !94
  %39 = load i16, ptr @_ZN11xercesc_2_76XMLUni43fgXercesParserUseDocumentFromImplementationE, align 2, !tbaa !94
  %40 = icmp eq i16 %38, %39
  br i1 %40, label %44, label %87

41:                                               ; preds = %36
  %42 = load i16, ptr @_ZN11xercesc_2_76XMLUni43fgXercesParserUseDocumentFromImplementationE, align 2, !tbaa !94
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %87

44:                                               ; preds = %37, %49
  %45 = phi i16 [ %52, %49 ], [ %38, %37 ]
  %46 = phi ptr [ %51, %49 ], [ @_ZN11xercesc_2_76XMLUni43fgXercesParserUseDocumentFromImplementationE, %37 ]
  %47 = phi ptr [ %50, %49 ], [ %1, %37 ]
  %48 = icmp eq i16 %45, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds i16, ptr %47, i64 1
  %51 = getelementptr inbounds i16, ptr %46, i64 1
  %52 = load i16, ptr %50, align 2, !tbaa !94
  %53 = load i16, ptr %51, align 2, !tbaa !94
  %54 = icmp eq i16 %52, %53
  br i1 %54, label %44, label %87, !llvm.loop !96

55:                                               ; preds = %44, %41
  %56 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %57 = load ptr, ptr %56, align 8, !tbaa !75
  %58 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 13
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  %60 = load ptr, ptr %57, align 8, !tbaa !35
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %59)
  %63 = load ptr, ptr %56, align 8, !tbaa !75
  %64 = icmp eq ptr %2, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %55
  %66 = load i16, ptr %2, align 2, !tbaa !94
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65, %68
  %69 = phi ptr [ %70, %68 ], [ %2, %65 ]
  %70 = getelementptr inbounds i16, ptr %69, i64 1
  %71 = load i16, ptr %70, align 2, !tbaa !94
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %68, !llvm.loop !100

73:                                               ; preds = %68
  %74 = ptrtoint ptr %70 to i64
  %75 = ptrtoint ptr %2 to i64
  %76 = sub i64 %74, %75
  %77 = add i64 %76, 2
  %78 = and i64 %77, 8589934590
  br label %79

79:                                               ; preds = %73, %65
  %80 = phi i64 [ %78, %73 ], [ 2, %65 ]
  %81 = load ptr, ptr %63, align 8, !tbaa !35
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef %80)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %84, ptr nonnull align 2 %2, i64 %80, i1 false)
  br label %85

85:                                               ; preds = %55, %79
  %86 = phi ptr [ %84, %79 ], [ null, %55 ]
  store ptr %86, ptr %58, align 8, !tbaa !99
  br label %94

87:                                               ; preds = %49, %37, %41
  %88 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %89 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %90 = load ptr, ptr %89, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %88, i16 noundef signext 8, ptr noundef null, ptr noundef %90)
          to label %91 unwind label %92

91:                                               ; preds = %87
  tail call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

92:                                               ; preds = %87
  %93 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %88) #20
  resume { ptr, i32 } %93

94:                                               ; preds = %10, %35, %85, %14, %6
  ret void
}

declare void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser18setSecurityManagerEPNS_15SecurityManagerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser10useScannerEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 align 2 !prof !34 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl11setPropertyEPKtPv(ptr noundef nonnull align 8 dereferenceable(250) %4, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni36fgXercesSchemaExternalSchemaLocationE)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %24

7:                                                ; preds = %2
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni47fgXercesSchemaExternalNoNameSpaceSchemaLocationE)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %24

12:                                               ; preds = %7
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgXercesSecurityManagerE)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %24

17:                                               ; preds = %12
  %18 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %19 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %18, i16 noundef signext 8, ptr noundef null, ptr noundef %20)
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #20
  resume { ptr, i32 } %23

24:                                               ; preds = %15, %10, %5
  %25 = phi ptr [ %6, %5 ], [ %11, %10 ], [ %16, %15 ]
  ret ptr %25
}

declare noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getSecurityManagerEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl11getPropertyEPKt(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(250) %0) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: cold uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl7releaseEv(ptr noundef %0) unnamed_addr #10 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 1
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(250) %2) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl17resetDocumentPoolEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  ret void
}

declare void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl17resetDocumentPoolEv(ptr noundef %0) unnamed_addr #10 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 1 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::Wrapper4DOMInputSource", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef %5)
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %6 unwind label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %8 = load i8, ptr %7, align 1, !tbaa !54, !range !81, !noundef !82
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %16 unwind label %12

12:                                               ; preds = %14, %10, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #20
  resume { ptr, i32 } %13

14:                                               ; preds = %6
  %15 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %16 unwind label %12

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %11, %10 ], [ %15, %14 ]
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #20
  ret ptr %17
}

declare void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl5parseERKNS_14DOMInputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef nonnull align 1 %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKt(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %4 = load i8, ptr %3, align 1, !tbaa !54, !range !81, !noundef !82
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %10

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  ret ptr %11
}

declare void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl8parseURIEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKt(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKc(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 10
  %4 = load i8, ptr %3, align 1, !tbaa !54, !range !81, !noundef !82
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %10

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  ret ptr %11
}

declare void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl8parseURIEPKc(ptr noundef %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -200
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl8parseURIEPKc(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0, ptr nocapture nonnull readnone align 1 %1, ptr nocapture readnone %2, i16 signext %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #20
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %5, i16 noundef signext 9, ptr noundef null, ptr noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #22
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #20
  resume { ptr, i32 } %10
}

; Function Attrs: cold noreturn uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs(ptr nocapture noundef readonly %0, ptr nocapture nonnull readnone align 1 %1, ptr nocapture readnone %2, i16 signext %3) unnamed_addr #9 align 2 !prof !34 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl16parseWithContextERKNS_14DOMInputSourceEPNS_7DOMNodeEs(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr nonnull align 1 poison, ptr poison, i16 signext poison)
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0, i32 noundef %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture readnone %6, i64 noundef %7, i64 noundef %8) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %10 = alloca %"class.xercesc_2_7::DOMLocatorImpl", align 8
  %11 = alloca %"class.xercesc_2_7::DOMErrorImpl", align 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %3, 2
  %17 = select i1 %16, i16 2, i16 1
  %18 = icmp eq i32 %3, 0
  %19 = select i1 %18, i16 0, i16 %17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #20
  %20 = shl i64 %7, 32
  %21 = ashr exact i64 %20, 32
  %22 = shl i64 %8, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  call void @_ZN11xercesc_2_714DOMLocatorImplC1EllPNS_7DOMNodeEPKtl(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 noundef %21, i64 noundef %23, ptr noundef %25, ptr noundef %5, i64 noundef -1)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #20
  invoke void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtPNS_10DOMLocatorE(ptr noundef nonnull align 8 dereferenceable(48) %11, i16 noundef signext %19, ptr noundef %4, ptr noundef nonnull %10)
          to label %26 unwind label %41

26:                                               ; preds = %15
  %27 = load ptr, ptr %12, align 8, !tbaa !68
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %32 unwind label %43

32:                                               ; preds = %26
  br i1 %31, label %45, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %35, i64 0, i32 7
  %37 = load i8, ptr %36, align 1, !tbaa !102, !range !81, !noundef !82
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = call ptr @__cxa_allocate_exception(i64 4) #20
  store i32 %1, ptr %40, align 16, !tbaa !103
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #22
          to label %49 unwind label %43

41:                                               ; preds = %15
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %39, %26
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #20
  br label %46

45:                                               ; preds = %33, %32
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #20
  call void @_ZN11xercesc_2_714DOMLocatorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #20
  br label %48

46:                                               ; preds = %43, %41
  %47 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #20
  call void @_ZN11xercesc_2_714DOMLocatorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #20
  resume { ptr, i32 } %47

48:                                               ; preds = %45, %9
  ret void

49:                                               ; preds = %39
  unreachable
}

declare void @_ZN11xercesc_2_714DOMLocatorImplC1EllPNS_7DOMNodeEPKtl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtPNS_10DOMLocatorE(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714DOMLocatorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture readnone %6, i64 noundef %7, i64 noundef %8) unnamed_addr #10 align 2 !prof !34 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DOMBuilderImpl5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(250) %10, i32 noundef %1, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr poison, i64 noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl11resetErrorsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #12 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn8_N11xercesc_2_714DOMBuilderImpl11resetErrorsEv(ptr nocapture readnone %0) unnamed_addr #12 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %16)
  %18 = load ptr, ptr %15, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull %12, i1 noundef zeroext true, ptr noundef %18)
          to label %21 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %17, ptr noundef %16) #20
  resume { ptr, i32 } %20

21:                                               ; preds = %8, %14
  %22 = phi ptr [ %17, %14 ], [ undef, %8 ]
  br i1 %13, label %23, label %24

23:                                               ; preds = %21, %4
  br label %24

24:                                               ; preds = %21, %23
  %25 = phi ptr [ %22, %21 ], [ null, %23 ]
  ret ptr %25
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !prof !34 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !109
  %13 = load ptr, ptr %4, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10, ptr noundef %12)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %20)
  %22 = load ptr, ptr %19, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull %16, i1 noundef zeroext true, ptr noundef %22)
          to label %25 unwind label %23

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #20
  resume { ptr, i32 } %24

25:                                               ; preds = %6, %18
  %26 = phi ptr [ %21, %18 ], [ undef, %6 ]
  br i1 %17, label %27, label %36

27:                                               ; preds = %25, %2
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %1)
  br label %36

36:                                               ; preds = %27, %25, %31
  %37 = phi ptr [ %26, %25 ], [ %35, %31 ], [ null, %27 ]
  ret ptr %37
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  %4 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(250) %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !110, !range !81, !noundef !82
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 619, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #20
  br label %72

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !110
  %18 = icmp eq i16 %2, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %21, i64 0, i32 42
  store ptr null, ptr %22, align 8, !tbaa !111
  br label %25

23:                                               ; preds = %25
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %40

25:                                               ; preds = %19, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %27, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %29 unwind label %23

29:                                               ; preds = %25
  %30 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %31 unwind label %38

31:                                               ; preds = %29
  %32 = icmp eq ptr %30, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %30, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 39
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %48 unwind label %38

38:                                               ; preds = %33, %29
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %40

40:                                               ; preds = %38, %23
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %24, %23 ]
  %42 = extractvalue { ptr, i32 } %41, 0
  %43 = extractvalue { ptr, i32 } %41, 1
  %44 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = tail call ptr @__cxa_begin_catch(ptr %42) #20
  invoke void @__cxa_rethrow() #22
          to label %80 unwind label %56

48:                                               ; preds = %33, %31
  %49 = load ptr, ptr %26, align 8, !tbaa !55
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %49, i64 0, i32 42
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %54, ptr %50, align 8, !tbaa !111
  br label %55

55:                                               ; preds = %48, %53
  store i8 0, ptr %5, align 1, !tbaa !110
  ret ptr %28

56:                                               ; preds = %46
  %57 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %58 unwind label %77

58:                                               ; preds = %56
  %59 = extractvalue { ptr, i32 } %57, 1
  %60 = extractvalue { ptr, i32 } %57, 0
  br label %61

61:                                               ; preds = %58, %40
  %62 = phi ptr [ null, %58 ], [ @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv, %40 ]
  %63 = phi ptr [ null, %58 ], [ %0, %40 ]
  %64 = phi i32 [ %59, %58 ], [ %43, %40 ]
  %65 = phi ptr [ %60, %58 ], [ %42, %40 ]
  %66 = icmp eq ptr %63, null
  %67 = or i1 %45, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(250) %63)
          to label %72 unwind label %69

69:                                               ; preds = %68
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  tail call void @__clang_call_terminate(ptr %71) #21
  unreachable

72:                                               ; preds = %68, %61, %13
  %73 = phi i32 [ %16, %13 ], [ %64, %61 ], [ %64, %68 ]
  %74 = phi ptr [ %15, %13 ], [ %65, %61 ], [ %65, %68 ]
  %75 = insertvalue { ptr, i32 } poison, ptr %74, 0
  %76 = insertvalue { ptr, i32 } %75, i32 %73, 1
  resume { ptr, i32 } %76

77:                                               ; preds = %56
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  tail call void @__clang_call_terminate(ptr %79) #21
  unreachable

80:                                               ; preds = %46
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv(ptr noundef nonnull align 8 dereferenceable(250) %0) local_unnamed_addr #13 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 42
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %8, ptr %4, align 8, !tbaa !111
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %10, align 1, !tbaa !110
  ret void
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #14

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #10 align 2 !prof !34 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !110, !range !81, !noundef !82
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #20
  br label %72

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !110
  %18 = icmp eq i16 %2, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %21, i64 0, i32 42
  store ptr null, ptr %22, align 8, !tbaa !111
  br label %25

23:                                               ; preds = %25
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %40

25:                                               ; preds = %19, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %27, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %29 unwind label %23

29:                                               ; preds = %25
  %30 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %31 unwind label %38

31:                                               ; preds = %29
  %32 = icmp eq ptr %30, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %30, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 39
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %48 unwind label %38

38:                                               ; preds = %33, %29
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %40

40:                                               ; preds = %38, %23
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %24, %23 ]
  %42 = extractvalue { ptr, i32 } %41, 0
  %43 = extractvalue { ptr, i32 } %41, 1
  %44 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = tail call ptr @__cxa_begin_catch(ptr %42) #20
  invoke void @__cxa_rethrow() #22
          to label %80 unwind label %56

48:                                               ; preds = %33, %31
  %49 = load ptr, ptr %26, align 8, !tbaa !55
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %49, i64 0, i32 42
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %54, ptr %50, align 8, !tbaa !111
  br label %55

55:                                               ; preds = %48, %53
  store i8 0, ptr %5, align 1, !tbaa !110
  ret ptr %28

56:                                               ; preds = %46
  %57 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %58 unwind label %77

58:                                               ; preds = %56
  %59 = extractvalue { ptr, i32 } %57, 1
  %60 = extractvalue { ptr, i32 } %57, 0
  br label %61

61:                                               ; preds = %58, %40
  %62 = phi ptr [ null, %58 ], [ @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv, %40 ]
  %63 = phi ptr [ null, %58 ], [ %0, %40 ]
  %64 = phi i32 [ %59, %58 ], [ %43, %40 ]
  %65 = phi ptr [ %60, %58 ], [ %42, %40 ]
  %66 = icmp eq ptr %63, null
  %67 = or i1 %45, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(250) %63)
          to label %72 unwind label %69

69:                                               ; preds = %68
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  tail call void @__clang_call_terminate(ptr %71) #21
  unreachable

72:                                               ; preds = %68, %61, %13
  %73 = phi i32 [ %16, %13 ], [ %64, %61 ], [ %64, %68 ]
  %74 = phi ptr [ %15, %13 ], [ %65, %61 ], [ %65, %68 ]
  %75 = insertvalue { ptr, i32 } poison, ptr %74, 0
  %76 = insertvalue { ptr, i32 } %75, i32 %73, 1
  resume { ptr, i32 } %76

77:                                               ; preds = %56
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  tail call void @__clang_call_terminate(ptr %79) #21
  unreachable

80:                                               ; preds = %46
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #10 align 2 !prof !34 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::Wrapper4DOMInputSource", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !110, !range !81, !noundef !82
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  br i1 %8, label %18, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %12 = load ptr, ptr %9, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 43, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  tail call void @__cxa_free_exception(ptr %11) #20
  br label %82

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  %19 = load ptr, ptr %9, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722Wrapper4DOMInputSourceC1EPNS_14DOMInputSourceEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef %19)
          to label %20 unwind label %26

20:                                               ; preds = %18
  store i8 1, ptr %6, align 1, !tbaa !110
  %21 = icmp eq i16 %2, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %24, i64 0, i32 42
  store ptr null, ptr %25, align 8, !tbaa !111
  br label %30

26:                                               ; preds = %18
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %58

28:                                               ; preds = %30
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %56

30:                                               ; preds = %22, %20
  %31 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 10
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(776) %32, ptr noundef nonnull align 8 dereferenceable(41) %5, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %37 unwind label %28

37:                                               ; preds = %30
  %38 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %39 unwind label %46

39:                                               ; preds = %37
  %40 = icmp eq ptr %38, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %38, i64 24
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 39
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %48 unwind label %46

46:                                               ; preds = %41, %37
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %56

48:                                               ; preds = %41, %39
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #20
  %49 = load ptr, ptr %31, align 8, !tbaa !55
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %49, i64 0, i32 42
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %54, ptr %50, align 8, !tbaa !111
  br label %55

55:                                               ; preds = %48, %53
  store i8 0, ptr %6, align 1, !tbaa !110
  ret ptr %36

56:                                               ; preds = %46, %28
  %57 = phi { ptr, i32 } [ %47, %46 ], [ %29, %28 ]
  call void @_ZN11xercesc_2_722Wrapper4DOMInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #20
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %27, %26 ]
  %60 = extractvalue { ptr, i32 } %59, 0
  %61 = extractvalue { ptr, i32 } %59, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #20
  %62 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = call ptr @__cxa_begin_catch(ptr %60) #20
  invoke void @__cxa_rethrow() #22
          to label %90 unwind label %66

66:                                               ; preds = %64
  %67 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %68 unwind label %87

68:                                               ; preds = %66
  %69 = extractvalue { ptr, i32 } %67, 1
  %70 = extractvalue { ptr, i32 } %67, 0
  br label %71

71:                                               ; preds = %68, %58
  %72 = phi ptr [ null, %68 ], [ @_ZN11xercesc_2_714DOMBuilderImpl10resetParseEv, %58 ]
  %73 = phi ptr [ null, %68 ], [ %0, %58 ]
  %74 = phi i32 [ %69, %68 ], [ %61, %58 ]
  %75 = phi ptr [ %70, %68 ], [ %60, %58 ]
  %76 = icmp eq ptr %73, null
  %77 = or i1 %63, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(250) %73)
          to label %82 unwind label %79

79:                                               ; preds = %78
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #21
  unreachable

82:                                               ; preds = %78, %71, %14
  %83 = phi i32 [ %17, %14 ], [ %74, %71 ], [ %74, %78 ]
  %84 = phi ptr [ %16, %14 ], [ %75, %71 ], [ %75, %78 ]
  %85 = insertvalue { ptr, i32 } poison, ptr %84, 0
  %86 = insertvalue { ptr, i32 } %85, i32 %83, 1
  resume { ptr, i32 } %86

87:                                               ; preds = %66
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #21
  unreachable

90:                                               ; preds = %64
  unreachable
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb(ptr noundef %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #10 align 2 !prof !34 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -200
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl11loadGrammarERKNS_14DOMInputSourceEsb(ptr noundef nonnull align 8 dereferenceable(250) %5, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMBuilderImpl22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn200_N11xercesc_2_714DOMBuilderImpl22resetCachedGrammarPoolEv(ptr nocapture noundef readonly %0) unnamed_addr #10 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -80
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getGrammarEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -80
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl14getRootGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0) unnamed_addr #15 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl14getRootGrammarEv(ptr nocapture noundef readonly %0) unnamed_addr #15 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -152
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl10getURITextEj(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -152
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DOMBuilderImpl12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(250) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 49, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %5)
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: cold uwtable
define dso_local noundef i32 @_ZThn200_NK11xercesc_2_714DOMBuilderImpl12getSrcOffsetEv(ptr nocapture noundef readonly %0) unnamed_addr #10 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -152
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 49, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %5)
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #16 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #16 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #16 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #16 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #16 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #16 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuilderImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #16 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #16 comdat align 2 !prof !34 {
  ret i1 false
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMBuilderImpl13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(250) %0) unnamed_addr #16 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #16 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImpl14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #17 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_714DOMBuilderImpl14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #17 comdat align 2 !prof !34 {
  ret i1 false
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImpl13resetEntitiesEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DOMBuilderImpl16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #17 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl15getErrorHandlerEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl17getEntityResolverEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_N11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef ptr @_ZThn200_NK11xercesc_2_714DOMBuilderImpl9getFilterEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(none) }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !46, i64 208}
!39 = !{!"_ZTSN11xercesc_2_714DOMBuilderImplE", !40, i64 0, !51, i64 200, !46, i64 208, !46, i64 209, !48, i64 216, !48, i64 224, !48, i64 232, !48, i64 240, !46, i64 248, !46, i64 249}
!40 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !41, i64 0, !42, i64 8, !43, i64 16, !44, i64 24, !45, i64 32, !46, i64 40, !46, i64 41, !46, i64 42, !46, i64 43, !46, i64 44, !46, i64 45, !46, i64 46, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152, !49, i64 160, !48, i64 184, !48, i64 192}
!41 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!42 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!43 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!44 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!45 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!46 = !{!"bool", !47, i64 0}
!47 = !{!"omnipotent char", !37, i64 0}
!48 = !{!"any pointer", !47, i64 0}
!49 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !50, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!"int", !47, i64 0}
!51 = !{!"_ZTSN11xercesc_2_710DOMBuilderE"}
!52 = !{!39, !46, i64 209}
!53 = !{!39, !46, i64 248}
!54 = !{!39, !46, i64 249}
!55 = !{!40, !48, i64 48}
!56 = !{!57, !46, i64 32}
!57 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !58, i64 0, !59, i64 8, !46, i64 16, !46, i64 17, !46, i64 18, !46, i64 19, !46, i64 20, !46, i64 21, !46, i64 22, !46, i64 23, !46, i64 24, !46, i64 25, !46, i64 26, !46, i64 27, !46, i64 28, !46, i64 29, !46, i64 30, !46, i64 31, !46, i64 32, !46, i64 33, !46, i64 34, !46, i64 35, !46, i64 36, !46, i64 37, !46, i64 38, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !50, i64 64, !50, i64 68, !48, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !46, i64 176, !60, i64 184, !48, i64 264, !63, i64 272, !48, i64 280, !48, i64 288, !48, i64 296, !48, i64 304, !48, i64 312, !48, i64 320, !48, i64 328, !48, i64 336, !48, i64 344, !62, i64 352, !48, i64 360, !49, i64 368, !64, i64 392, !64, i64 432, !64, i64 472, !64, i64 512, !64, i64 552, !64, i64 592, !64, i64 632, !65, i64 672}
!58 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!59 = !{!"long", !47, i64 0}
!60 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !61, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !50, i64 40, !48, i64 48, !46, i64 56, !62, i64 60, !46, i64 64, !48, i64 72}
!61 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!62 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !47, i64 0}
!63 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !47, i64 0}
!64 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !50, i64 0, !50, i64 4, !50, i64 8, !46, i64 12, !48, i64 16, !48, i64 24, !48, i64 32}
!65 = !{!"_ZTSN11xercesc_2_79ElemStackE", !50, i64 0, !50, i64 4, !66, i64 8, !48, i64 48, !50, i64 56, !50, i64 60, !50, i64 64, !50, i64 68, !50, i64 72, !50, i64 76, !50, i64 80, !48, i64 88, !48, i64 96}
!66 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !67, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !50, i64 32, !50, i64 36}
!67 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!68 = !{!39, !48, i64 232}
!69 = !{!57, !48, i64 144}
!70 = !{!39, !48, i64 216}
!71 = !{!57, !48, i64 136}
!72 = !{!60, !48, i64 24}
!73 = !{!48, !48, i64 0}
!74 = !{!39, !48, i64 224}
!75 = !{!40, !48, i64 144}
!76 = !{!40, !46, i64 40}
!77 = !{!40, !46, i64 44}
!78 = !{!40, !46, i64 41}
!79 = !{!57, !46, i64 29}
!80 = !{!57, !46, i64 30}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = !{!57, !46, i64 17}
!84 = !{!57, !46, i64 16}
!85 = !{!60, !46, i64 64}
!86 = !{!57, !46, i64 33}
!87 = !{!57, !46, i64 34}
!88 = !{!57, !46, i64 28}
!89 = !{!57, !46, i64 35}
!90 = !{!57, !46, i64 36}
!91 = !{!57, !46, i64 37}
!92 = !{!57, !46, i64 38}
!93 = !{!40, !46, i64 46}
!94 = !{!95, !95, i64 0}
!95 = !{!"short", !47, i64 0}
!96 = distinct !{!96, !97, !98}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!40, !48, i64 56}
!100 = distinct !{!100, !97, !98}
!101 = !{!40, !48, i64 72}
!102 = !{!57, !46, i64 21}
!103 = !{!104, !104, i64 0}
!104 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !47, i64 0}
!105 = !{!106, !48, i64 8}
!106 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !107, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40}
!107 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !47, i64 0}
!108 = !{!106, !48, i64 16}
!109 = !{!106, !48, i64 24}
!110 = !{!40, !46, i64 43}
!111 = !{!57, !48, i64 128}
!112 = !{!40, !48, i64 120}
!113 = !{!57, !48, i64 304}
!114 = !{!60, !48, i64 16}
!115 = !{!39, !48, i64 240}
!116 = !{!117, !48, i64 40}
!117 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !118, i64 8, !48, i64 16, !50, i64 24, !48, i64 32, !48, i64 40}
!118 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !47, i64 0}
