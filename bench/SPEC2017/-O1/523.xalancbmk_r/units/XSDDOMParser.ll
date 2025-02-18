; ModuleID = 'XSDDOMParser.cpp'
source_filename = "XSDDOMParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSDDOMParser" = type { %"class.xercesc_2_7::XercesDOMParser", i8, i32, i32, i32, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XSDErrorReporter", %"class.xercesc_2_7::XSDLocator" }
%"class.xercesc_2_7::XercesDOMParser" = type { %"class.xercesc_2_7::AbstractDOMParser", ptr, ptr, ptr }
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::XSDLocator" = type { %"class.xercesc_2_7::Locator", i64, i64, ptr, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::ValueVectorOf.0" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::XMLStringPool::PoolElem" = type { i32, ptr }
%"struct.xercesc_2_7::PrefMapElem" = type { i32, i32 }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
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
%"class.xercesc_2_7::DOMAttrImpl" = type { %"class.xercesc_2_7::DOMAttr", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr }
%"class.xercesc_2_7::DOMAttr" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.1" }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN11xercesc_2_712XSDDOMParserE = dso_local unnamed_addr constant { [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] } { [46 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XSDDOMParserE, ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_712XSDDOMParserD0Ev, ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_712XSDDOMParser10docCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv, ptr @_ZN11xercesc_2_712XSDDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712XSDDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_712XSDDOMParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712XSDDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE, ptr @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_715XercesDOMParser11resetErrorsEv, ptr @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv, ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_712XSDDOMParserE, ptr @_ZThn8_N11xercesc_2_712XSDDOMParserD1Ev, ptr @_ZThn8_N11xercesc_2_712XSDDOMParserD0Ev, ptr @_ZThn8_N11xercesc_2_712XSDDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn8_N11xercesc_2_715XercesDOMParser11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_712XSDDOMParserE, ptr @_ZThn16_N11xercesc_2_712XSDDOMParserD1Ev, ptr @_ZThn16_N11xercesc_2_712XSDDOMParserD0Ev, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv, ptr @_ZThn16_N11xercesc_2_712XSDDOMParser13resolveEntityEPKtS2_S2_, ptr @_ZThn16_N11xercesc_2_712XSDDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_712XSDDOMParserE, ptr @_ZThn24_N11xercesc_2_712XSDDOMParserD1Ev, ptr @_ZThn24_N11xercesc_2_712XSDDOMParserD0Ev, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_], [7 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_712XSDDOMParserE, ptr @_ZThn32_N11xercesc_2_712XSDDOMParserD1Ev, ptr @_ZThn32_N11xercesc_2_712XSDDOMParserD0Ev, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE] }, align 8
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgELT_ANNOTATIONE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgValidityDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgCDataStartE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgCDataEndE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni5fgAmpE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni4fgLTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgCommentStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712XSDDOMParserE = dso_local constant [30 x i8] c"N11xercesc_2_712XSDDOMParserE\00", align 1
@_ZTIN11xercesc_2_715XercesDOMParserE = external constant ptr
@_ZTIN11xercesc_2_712XSDDOMParserE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XSDDOMParserE, ptr @_ZTIN11xercesc_2_715XercesDOMParserE }, align 8
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/StringPool.hpp\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_712XSDDOMParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !56 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  store i32 -1, ptr %10, align 4, !tbaa !80
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  store i32 -1, ptr %11, align 8, !tbaa !81
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  store i32 -1, ptr %12, align 4, !tbaa !82
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  store i32 1023, ptr %15, align 4, !tbaa !83
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 2
  store i32 0, ptr %16, align 8, !tbaa !84
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 3
  store i8 0, ptr %17, align 4, !tbaa !85
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 4
  store ptr %2, ptr %18, align 8, !tbaa !86
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 5
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %21 = load ptr, ptr %2, align 8, !tbaa !58
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2048)
          to label %25 unwind label %47, !prof !87

25:                                               ; preds = %4
  store ptr %24, ptr %20, align 8, !tbaa !88
  store i16 0, ptr %24, align 2, !tbaa !89
  %26 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef null)
          to label %27 unwind label %49, !prof !91

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 10
  invoke void @_ZN11xercesc_2_710XSDLocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %28)
          to label %29 unwind label %51, !prof !91

29:                                               ; preds = %27
  %30 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef nonnull %2)
          to label %31 unwind label %53, !prof !91

31:                                               ; preds = %29
  store i8 0, ptr %30, align 8, !tbaa !92
  %32 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %30, i64 0, i32 1
  store i32 0, ptr %32, align 4, !tbaa !94
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %30, i64 0, i32 2
  store i32 16, ptr %33, align 8, !tbaa !95
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %30, i64 0, i32 3
  store ptr null, ptr %34, align 8, !tbaa !96
  %35 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %30, i64 0, i32 4
  store ptr %2, ptr %35, align 8, !tbaa !97
  %36 = load ptr, ptr %2, align 8, !tbaa !58
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 64)
          to label %40 unwind label %55, !prof !87

40:                                               ; preds = %31
  store ptr %39, ptr %34, align 8, !tbaa !96
  %41 = load i32, ptr %33, align 8, !tbaa !95
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %39, i8 0, i64 %43, i1 false), !prof !98
  store ptr %30, ptr %14, align 8, !tbaa !99
  %44 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 9, i32 2
  store ptr %5, ptr %44, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0)
          to label %45 unwind label %53, !prof !91

45:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true)
          to label %46 unwind label %53, !prof !91

46:                                               ; preds = %45
  ret void

47:                                               ; preds = %4
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %67

49:                                               ; preds = %25
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %57

51:                                               ; preds = %27
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %57

53:                                               ; preds = %45, %40, %29
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %57

55:                                               ; preds = %31
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %30, ptr noundef nonnull %2) #16
  br label %57

57:                                               ; preds = %51, %55, %53, %49
  %58 = phi { ptr, i32 } [ %50, %49 ], [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = load ptr, ptr %18, align 8, !tbaa !86
  %60 = load ptr, ptr %20, align 8, !tbaa !88
  %61 = load ptr, ptr %59, align 8, !tbaa !58
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %60)
          to label %67 unwind label %64

64:                                               ; preds = %57
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %57, %47
  %68 = phi { ptr, i32 } [ %48, %47 ], [ %58, %57 ]
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #16
  resume { ptr, i32 } %68
}

declare void @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_710XSDLocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9, !prof !101

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = load ptr, ptr %11, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %13)
          to label %20 unwind label %17, !prof !102

17:                                               ; preds = %9
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable

20:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #16
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = load ptr, ptr %23, align 8, !tbaa !58
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %25)
          to label %32 unwind label %29, !prof !103

29:                                               ; preds = %21
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #17
  unreachable

32:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !104 {
  %4 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %8 = call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !108
  %13 = load ptr, ptr %8, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 40
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1, ptr noundef %2, i64 noundef %10, i64 noundef %12), !prof !109
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser15startAnnotationERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !110
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = load i32, ptr %5, align 8, !tbaa !110
  %15 = add i32 %14, 1
  store i32 %15, ptr %5, align 8, !tbaa !110
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i16, ptr %13, i64 %16
  store i16 60, ptr %17, align 2, !tbaa !89
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %19)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %20)
  %21 = load i32, ptr %5, align 8, !tbaa !110
  %22 = load i32, ptr %7, align 4, !tbaa !83
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %25

25:                                               ; preds = %11, %24
  %26 = load ptr, ptr %12, align 8, !tbaa !88
  %27 = load i32, ptr %5, align 8, !tbaa !110
  %28 = add i32 %27, 1
  store i32 %28, ptr %5, align 8, !tbaa !110
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds i16, ptr %26, i64 %29
  store i16 32, ptr %30, align 2, !tbaa !89
  %31 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !99
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 1
  store i32 0, ptr %33, align 4, !tbaa !94
  %34 = icmp eq i32 %3, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %37 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  br label %46

38:                                               ; preds = %144, %25
  %39 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !105
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %40, i64 0, i32 71
  %42 = tail call noundef ptr @_ZNK11xercesc_2_79ElemStack15getNamespaceMapEv(ptr noundef nonnull align 8 dereferenceable(104) %41)
  %43 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !115
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %152, label %172

46:                                               ; preds = %35, %144
  %47 = phi i32 [ 0, %35 ], [ %150, %144 ]
  %48 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %47)
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !117
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !120
  %53 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %52, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !121
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load i16, ptr %54, align 2, !tbaa !89
  %58 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !89
  %59 = icmp eq i16 %57, %58
  br i1 %59, label %63, label %81

60:                                               ; preds = %46
  %61 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !89
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %74, label %81

63:                                               ; preds = %56, %68
  %64 = phi i16 [ %71, %68 ], [ %57, %56 ]
  %65 = phi ptr [ %70, %68 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %56 ]
  %66 = phi ptr [ %69, %68 ], [ %54, %56 ]
  %67 = icmp eq i16 %64, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds i16, ptr %66, i64 1
  %70 = getelementptr inbounds i16, ptr %65, i64 1
  %71 = load i16, ptr %69, align 2, !tbaa !89
  %72 = load i16, ptr %70, align 2, !tbaa !89
  %73 = icmp eq i16 %71, %72
  br i1 %73, label %63, label %81, !llvm.loop !123

74:                                               ; preds = %63, %60
  %75 = load ptr, ptr %31, align 8, !tbaa !99
  %76 = load ptr, ptr %37, align 8, !tbaa !105
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %76, i64 0, i32 71, i32 2, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !126
  %79 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %78, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %99, label %95

81:                                               ; preds = %68, %56, %60
  %82 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %48)
  %83 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %82, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = load ptr, ptr %31, align 8, !tbaa !99
  %87 = load ptr, ptr %36, align 8, !tbaa !105
  %88 = load ptr, ptr %51, align 8, !tbaa !120
  %89 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %88, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !121
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %87, i64 0, i32 71, i32 2, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !126
  %93 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %92, ptr noundef %90)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %85, %74
  %96 = phi ptr [ %79, %74 ], [ %93, %85 ]
  %97 = phi ptr [ %75, %74 ], [ %86, %85 ]
  %98 = load i32, ptr %96, align 8, !tbaa !128
  br label %99

99:                                               ; preds = %95, %85, %74
  %100 = phi ptr [ %75, %74 ], [ %86, %85 ], [ %97, %95 ]
  %101 = phi i32 [ 0, %74 ], [ 0, %85 ], [ %98, %95 ]
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %100, i32 noundef 1)
  %102 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %100, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !96
  %104 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %100, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !94
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %103, i64 %106
  store i32 %101, ptr %107, align 4, !tbaa !130
  %108 = load i32, ptr %104, align 4, !tbaa !94
  %109 = add i32 %108, 1
  store i32 %109, ptr %104, align 4, !tbaa !94
  br label %110

110:                                              ; preds = %99, %81
  %111 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %48)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %111)
  %112 = load i32, ptr %5, align 8, !tbaa !110
  %113 = load i32, ptr %7, align 4, !tbaa !83
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %116

116:                                              ; preds = %110, %115
  %117 = load ptr, ptr %12, align 8, !tbaa !88
  %118 = load i32, ptr %5, align 8, !tbaa !110
  %119 = add i32 %118, 1
  store i32 %119, ptr %5, align 8, !tbaa !110
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds i16, ptr %117, i64 %120
  store i16 61, ptr %121, align 2, !tbaa !89
  %122 = load i32, ptr %7, align 4, !tbaa !83
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %125

125:                                              ; preds = %116, %124
  %126 = load ptr, ptr %12, align 8, !tbaa !88
  %127 = load i32, ptr %5, align 8, !tbaa !110
  %128 = add i32 %127, 1
  store i32 %128, ptr %5, align 8, !tbaa !110
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds i16, ptr %126, i64 %129
  store i16 34, ptr %130, align 2, !tbaa !89
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %50)
  %131 = load i32, ptr %5, align 8, !tbaa !110
  %132 = load i32, ptr %7, align 4, !tbaa !83
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %135

135:                                              ; preds = %125, %134
  %136 = load ptr, ptr %12, align 8, !tbaa !88
  %137 = load i32, ptr %5, align 8, !tbaa !110
  %138 = add i32 %137, 1
  store i32 %138, ptr %5, align 8, !tbaa !110
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i16, ptr %136, i64 %139
  store i16 34, ptr %140, align 2, !tbaa !89
  %141 = load i32, ptr %7, align 4, !tbaa !83
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %144

144:                                              ; preds = %135, %143
  %145 = load ptr, ptr %12, align 8, !tbaa !88
  %146 = load i32, ptr %5, align 8, !tbaa !110
  %147 = add i32 %146, 1
  store i32 %147, ptr %5, align 8, !tbaa !110
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i16, ptr %145, i64 %148
  store i16 32, ptr %149, align 2, !tbaa !89
  %150 = add nuw i32 %47, 1
  %151 = icmp eq i32 %150, %3
  br i1 %151, label %38, label %46, !llvm.loop !131

152:                                              ; preds = %281, %38
  %153 = load i32, ptr %5, align 8, !tbaa !110
  %154 = load i32, ptr %7, align 4, !tbaa !83
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %157

157:                                              ; preds = %152, %156
  %158 = load ptr, ptr %12, align 8, !tbaa !88
  %159 = load i32, ptr %5, align 8, !tbaa !110
  %160 = add i32 %159, 1
  store i32 %160, ptr %5, align 8, !tbaa !110
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds i16, ptr %158, i64 %161
  store i16 62, ptr %162, align 2, !tbaa !89
  %163 = load i32, ptr %7, align 4, !tbaa !83
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %166

166:                                              ; preds = %157, %165
  %167 = load ptr, ptr %12, align 8, !tbaa !88
  %168 = load i32, ptr %5, align 8, !tbaa !110
  %169 = add i32 %168, 1
  store i32 %169, ptr %5, align 8, !tbaa !110
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds i16, ptr %167, i64 %170
  store i16 10, ptr %171, align 2, !tbaa !89
  ret void

172:                                              ; preds = %38, %281
  %173 = phi i32 [ %282, %281 ], [ 0, %38 ]
  %174 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef %173)
  %175 = load ptr, ptr %174, align 8, !tbaa !132
  %176 = load i32, ptr %175, align 4, !tbaa !133
  %177 = load ptr, ptr %31, align 8, !tbaa !99
  %178 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %177, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !94
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %177, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !96
  br label %187

184:                                              ; preds = %187
  %185 = add nuw i32 %188, 1
  %186 = icmp eq i32 %185, %179
  br i1 %186, label %193, label %187, !llvm.loop !135

187:                                              ; preds = %181, %184
  %188 = phi i32 [ 0, %181 ], [ %185, %184 ]
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, ptr %183, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !130
  %192 = icmp eq i32 %191, %176
  br i1 %192, label %281, label %184

193:                                              ; preds = %184, %172
  %194 = load ptr, ptr %39, align 8, !tbaa !105
  %195 = icmp ne i32 %176, 0
  %196 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %194, i64 0, i32 71, i32 2, i32 5
  %197 = load i32, ptr %196, align 4
  %198 = icmp ugt i32 %197, %176
  %199 = select i1 %195, i1 %198, i1 false
  br i1 %199, label %207, label %200

200:                                              ; preds = %193
  %201 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %202 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %194, i64 0, i32 71, i32 2, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %201, ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 89, ptr noundef %203)
          to label %204 unwind label %205

204:                                              ; preds = %200
  tail call void @__cxa_throw(ptr nonnull %201, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

205:                                              ; preds = %200
  %206 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %201) #16
  resume { ptr, i32 } %206

207:                                              ; preds = %193
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %194, i64 0, i32 71, i32 2, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !137
  %210 = zext i32 %176 to i64
  %211 = getelementptr inbounds ptr, ptr %209, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !132
  %213 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !138
  %215 = icmp eq ptr %214, null
  br i1 %215, label %220, label %216

216:                                              ; preds = %207
  %217 = load i16, ptr %214, align 2, !tbaa !89
  %218 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !89
  %219 = icmp eq i16 %217, %218
  br i1 %219, label %223, label %235

220:                                              ; preds = %207
  %221 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !89
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %234, label %235

223:                                              ; preds = %216, %228
  %224 = phi i16 [ %231, %228 ], [ %217, %216 ]
  %225 = phi ptr [ %230, %228 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %216 ]
  %226 = phi ptr [ %229, %228 ], [ %214, %216 ]
  %227 = icmp eq i16 %224, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds i16, ptr %226, i64 1
  %230 = getelementptr inbounds i16, ptr %225, i64 1
  %231 = load i16, ptr %229, align 2, !tbaa !89
  %232 = load i16, ptr %230, align 2, !tbaa !89
  %233 = icmp eq i16 %231, %232
  br i1 %233, label %223, label %235, !llvm.loop !123

234:                                              ; preds = %223, %220
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
  br label %236

235:                                              ; preds = %228, %216, %220
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %214)
  br label %236

236:                                              ; preds = %235, %234
  %237 = load i32, ptr %5, align 8, !tbaa !110
  %238 = load i32, ptr %7, align 4, !tbaa !83
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %241

241:                                              ; preds = %236, %240
  %242 = load ptr, ptr %12, align 8, !tbaa !88
  %243 = load i32, ptr %5, align 8, !tbaa !110
  %244 = add i32 %243, 1
  store i32 %244, ptr %5, align 8, !tbaa !110
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds i16, ptr %242, i64 %245
  store i16 61, ptr %246, align 2, !tbaa !89
  %247 = load i32, ptr %7, align 4, !tbaa !83
  %248 = icmp eq i32 %244, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %250

250:                                              ; preds = %241, %249
  %251 = load ptr, ptr %12, align 8, !tbaa !88
  %252 = load i32, ptr %5, align 8, !tbaa !110
  %253 = add i32 %252, 1
  store i32 %253, ptr %5, align 8, !tbaa !110
  %254 = zext i32 %252 to i64
  %255 = getelementptr inbounds i16, ptr %251, i64 %254
  store i16 34, ptr %255, align 2, !tbaa !89
  %256 = load ptr, ptr %39, align 8, !tbaa !105
  %257 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef %173)
  %258 = load ptr, ptr %257, align 8, !tbaa !132
  %259 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %258, i64 0, i32 1
  %260 = load i32, ptr %259, align 4, !tbaa !139
  %261 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %256, i32 noundef %260)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %261)
  %262 = load i32, ptr %5, align 8, !tbaa !110
  %263 = load i32, ptr %7, align 4, !tbaa !83
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %250
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %266

266:                                              ; preds = %250, %265
  %267 = load ptr, ptr %12, align 8, !tbaa !88
  %268 = load i32, ptr %5, align 8, !tbaa !110
  %269 = add i32 %268, 1
  store i32 %269, ptr %5, align 8, !tbaa !110
  %270 = zext i32 %268 to i64
  %271 = getelementptr inbounds i16, ptr %267, i64 %270
  store i16 34, ptr %271, align 2, !tbaa !89
  %272 = load i32, ptr %7, align 4, !tbaa !83
  %273 = icmp eq i32 %269, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %275

275:                                              ; preds = %266, %274
  %276 = load ptr, ptr %12, align 8, !tbaa !88
  %277 = load i32, ptr %5, align 8, !tbaa !110
  %278 = add i32 %277, 1
  store i32 %278, ptr %5, align 8, !tbaa !110
  %279 = zext i32 %277 to i64
  %280 = getelementptr inbounds i16, ptr %276, i64 %279
  store i16 32, ptr %280, align 2, !tbaa !89
  br label %281

281:                                              ; preds = %187, %275
  %282 = add nuw i32 %173, 1
  %283 = load i32, ptr %43, align 4, !tbaa !115
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %172, label %152, !llvm.loop !140
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !141 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !142

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !89
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !143

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !89
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !144, !llvm.loop !145

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !110
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !83
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !146

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = load i32, ptr %0, align 8, !tbaa !110
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !147
  %28 = load i32, ptr %0, align 8, !tbaa !110
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !110
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !149
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !151

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  ret ptr %18
}

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !115
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser22startAnnotationElementERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !110
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = load i32, ptr %5, align 8, !tbaa !110
  %15 = add i32 %14, 1
  store i32 %15, ptr %5, align 8, !tbaa !110
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i16, ptr %13, i64 %16
  store i16 60, ptr %17, align 2, !tbaa !89
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %19)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %20)
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %72, %11
  %23 = load i32, ptr %5, align 8, !tbaa !110
  %24 = load i32, ptr %7, align 4, !tbaa !83
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %27

27:                                               ; preds = %22, %26
  %28 = load ptr, ptr %12, align 8, !tbaa !88
  %29 = load i32, ptr %5, align 8, !tbaa !110
  %30 = add i32 %29, 1
  store i32 %30, ptr %5, align 8, !tbaa !110
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds i16, ptr %28, i64 %31
  store i16 62, ptr %32, align 2, !tbaa !89
  ret void

33:                                               ; preds = %11, %72
  %34 = phi i32 [ %78, %72 ], [ 0, %11 ]
  %35 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %34)
  %36 = load i32, ptr %5, align 8, !tbaa !110
  %37 = load i32, ptr %7, align 4, !tbaa !83
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %40

40:                                               ; preds = %33, %39
  %41 = load ptr, ptr %12, align 8, !tbaa !88
  %42 = load i32, ptr %5, align 8, !tbaa !110
  %43 = add i32 %42, 1
  store i32 %43, ptr %5, align 8, !tbaa !110
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i16, ptr %41, i64 %44
  store i16 32, ptr %45, align 2, !tbaa !89
  %46 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %35)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %46)
  %47 = load i32, ptr %5, align 8, !tbaa !110
  %48 = load i32, ptr %7, align 4, !tbaa !83
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %51

51:                                               ; preds = %40, %50
  %52 = load ptr, ptr %12, align 8, !tbaa !88
  %53 = load i32, ptr %5, align 8, !tbaa !110
  %54 = add i32 %53, 1
  store i32 %54, ptr %5, align 8, !tbaa !110
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i16, ptr %52, i64 %55
  store i16 61, ptr %56, align 2, !tbaa !89
  %57 = load i32, ptr %7, align 4, !tbaa !83
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %60

60:                                               ; preds = %51, %59
  %61 = load ptr, ptr %12, align 8, !tbaa !88
  %62 = load i32, ptr %5, align 8, !tbaa !110
  %63 = add i32 %62, 1
  store i32 %63, ptr %5, align 8, !tbaa !110
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i16, ptr %61, i64 %64
  store i16 34, ptr %65, align 2, !tbaa !89
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %35, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %67)
  %68 = load i32, ptr %5, align 8, !tbaa !110
  %69 = load i32, ptr %7, align 4, !tbaa !83
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
  br label %72

72:                                               ; preds = %60, %71
  %73 = load ptr, ptr %12, align 8, !tbaa !88
  %74 = load i32, ptr %5, align 8, !tbaa !110
  %75 = add i32 %74, 1
  store i32 %75, ptr %5, align 8, !tbaa !110
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i16, ptr %73, i64 %76
  store i16 34, ptr %77, align 2, !tbaa !89
  %78 = add nuw i32 %34, 1
  %79 = icmp eq i32 %78, %3
  br i1 %79, label %22, label %33, !llvm.loop !156
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20endAnnotationElementERKNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = icmp eq i32 %5, %7
  br i1 %2, label %9, label %64

9:                                                ; preds = %3
  br i1 %8, label %10, label %11

10:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %11

11:                                               ; preds = %9, %10
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = load i32, ptr %4, align 8, !tbaa !110
  %15 = add i32 %14, 1
  store i32 %15, ptr %4, align 8, !tbaa !110
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i16, ptr %13, i64 %16
  store i16 10, ptr %17, align 2, !tbaa !89
  %18 = load i32, ptr %6, align 4, !tbaa !83
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %21

21:                                               ; preds = %11, %20
  %22 = load ptr, ptr %12, align 8, !tbaa !88
  %23 = load i32, ptr %4, align 8, !tbaa !110
  %24 = add i32 %23, 1
  store i32 %24, ptr %4, align 8, !tbaa !110
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i16, ptr %22, i64 %25
  store i16 60, ptr %26, align 2, !tbaa !89
  %27 = load i32, ptr %6, align 4, !tbaa !83
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %30

30:                                               ; preds = %21, %29
  %31 = load ptr, ptr %12, align 8, !tbaa !88
  %32 = load i32, ptr %4, align 8, !tbaa !110
  %33 = add i32 %32, 1
  store i32 %33, ptr %4, align 8, !tbaa !110
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i16, ptr %31, i64 %34
  store i16 47, ptr %35, align 2, !tbaa !89
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !111
  %38 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %37)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %38)
  %39 = load i32, ptr %4, align 8, !tbaa !110
  %40 = load i32, ptr %6, align 4, !tbaa !83
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %43

43:                                               ; preds = %30, %42
  %44 = load ptr, ptr %12, align 8, !tbaa !88
  %45 = load i32, ptr %4, align 8, !tbaa !110
  %46 = add i32 %45, 1
  store i32 %46, ptr %4, align 8, !tbaa !110
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i16, ptr %44, i64 %47
  store i16 62, ptr %48, align 2, !tbaa !89
  %49 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !157
  %51 = zext i32 %46 to i64
  %52 = getelementptr inbounds i16, ptr %44, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !89
  %53 = load ptr, ptr %50, align 8, !tbaa !58
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(293) %50, ptr noundef %44)
  %57 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !158
  %59 = load ptr, ptr %58, align 8, !tbaa !58
  %60 = getelementptr inbounds ptr, ptr %59, i64 17
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %56)
  store i32 0, ptr %4, align 8, !tbaa !110
  %63 = load ptr, ptr %12, align 8, !tbaa !88
  store i16 0, ptr %63, align 2, !tbaa !89
  br label %95

64:                                               ; preds = %3
  br i1 %8, label %65, label %66

65:                                               ; preds = %64
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %66

66:                                               ; preds = %64, %65
  %67 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !88
  %69 = load i32, ptr %4, align 8, !tbaa !110
  %70 = add i32 %69, 1
  store i32 %70, ptr %4, align 8, !tbaa !110
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i16, ptr %68, i64 %71
  store i16 60, ptr %72, align 2, !tbaa !89
  %73 = load i32, ptr %6, align 4, !tbaa !83
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %76

76:                                               ; preds = %66, %75
  %77 = load ptr, ptr %67, align 8, !tbaa !88
  %78 = load i32, ptr %4, align 8, !tbaa !110
  %79 = add i32 %78, 1
  store i32 %79, ptr %4, align 8, !tbaa !110
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i16, ptr %77, i64 %80
  store i16 47, ptr %81, align 2, !tbaa !89
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !111
  %84 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %83)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %84)
  %85 = load i32, ptr %4, align 8, !tbaa !110
  %86 = load i32, ptr %6, align 4, !tbaa !83
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %89

89:                                               ; preds = %76, %88
  %90 = load ptr, ptr %67, align 8, !tbaa !88
  %91 = load i32, ptr %4, align 8, !tbaa !110
  %92 = add i32 %91, 1
  store i32 %92, ptr %4, align 8, !tbaa !110
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i16, ptr %90, i64 %93
  store i16 62, ptr %94, align 2, !tbaa !89
  br label %95

95:                                               ; preds = %89, %43
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 44
  store ptr %6, ptr %7, align 8, !tbaa !160
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !168
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 49, i32 3
  store ptr %6, ptr %8, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !82
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !82
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %63, !prof !170

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  %19 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !171

22:                                               ; preds = %16
  %23 = load i16, ptr %20, align 2, !tbaa !89
  %24 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols16fgELT_ANNOTATIONE, align 2, !tbaa !89
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %29, label %68, !prof !172

26:                                               ; preds = %16
  %27 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols16fgELT_ANNOTATIONE, align 2, !tbaa !89
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %68

29:                                               ; preds = %22, %34
  %30 = phi i16 [ %37, %34 ], [ %23, %22 ]
  %31 = phi ptr [ %36, %34 ], [ @_ZN11xercesc_2_713SchemaSymbols16fgELT_ANNOTATIONE, %22 ]
  %32 = phi ptr [ %35, %34 ], [ %20, %22 ]
  %33 = icmp eq i16 %30, 0
  br i1 %33, label %40, label %34, !prof !173

34:                                               ; preds = %29
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = getelementptr inbounds i16, ptr %31, i64 1
  %37 = load i16, ptr %35, align 2, !tbaa !89
  %38 = load i16, ptr %36, align 2, !tbaa !89
  %39 = icmp eq i16 %37, %38
  br i1 %39, label %29, label %68, !prof !173, !llvm.loop !123

40:                                               ; preds = %29, %26
  %41 = tail call noundef ptr @_ZNK11xercesc_2_715XercesDOMParser10getURITextEj(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %2)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i16, ptr %41, align 2, !tbaa !89
  %45 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !89
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %50, label %68

47:                                               ; preds = %40
  %48 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !89
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %61, label %68

50:                                               ; preds = %43, %55
  %51 = phi i16 [ %58, %55 ], [ %44, %43 ]
  %52 = phi ptr [ %57, %55 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %43 ]
  %53 = phi ptr [ %56, %55 ], [ %41, %43 ]
  %54 = icmp eq i16 %51, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds i16, ptr %53, i64 1
  %57 = getelementptr inbounds i16, ptr %52, i64 1
  %58 = load i16, ptr %56, align 2, !tbaa !89
  %59 = load i16, ptr %57, align 2, !tbaa !89
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %50, label %68, !llvm.loop !123

61:                                               ; preds = %50, %47
  %62 = load i32, ptr %10, align 4, !tbaa !82
  store i32 %62, ptr %13, align 4, !tbaa !80
  tail call void @_ZN11xercesc_2_712XSDDOMParser15startAnnotationERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5)
  br label %68

63:                                               ; preds = %8
  %64 = icmp eq i32 %11, %14
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  store i32 %12, ptr %66, align 8, !tbaa !81
  tail call void @_ZN11xercesc_2_712XSDDOMParser22startAnnotationElementERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5)
  br label %68

67:                                               ; preds = %63
  tail call void @_ZN11xercesc_2_712XSDDOMParser22startAnnotationElementERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5)
  br i1 %6, label %392, label %396

68:                                               ; preds = %34, %55, %22, %43, %26, %47, %61, %65
  %69 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !105
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %70, i64 0, i32 28
  %72 = load i32, ptr %71, align 4, !tbaa !174
  %73 = icmp eq i32 %72, %2
  br i1 %73, label %122, label %74, !prof !171

74:                                               ; preds = %68
  %75 = icmp eq ptr %3, null
  br i1 %75, label %120, label %76, !prof !171

76:                                               ; preds = %74
  %77 = load i16, ptr %3, align 2, !tbaa !89
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %120, label %79, !prof !170

79:                                               ; preds = %76
  %80 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %81 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %80)
  store i32 0, ptr %81, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef nonnull %3)
          to label %82 unwind label %115

82:                                               ; preds = %79
  %83 = load i32, ptr %81, align 8, !tbaa !110
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %81, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !83
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %81, i32 noundef 1)
          to label %88 unwind label %115

88:                                               ; preds = %87, %82
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %81, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !88
  %91 = load i32, ptr %81, align 8, !tbaa !110
  %92 = add i32 %91, 1
  store i32 %92, ptr %81, align 8, !tbaa !110
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i16, ptr %90, i64 %93
  store i16 58, ptr %94, align 2, !tbaa !89
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !111
  %97 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %96, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !121
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef %98)
          to label %99 unwind label %115

99:                                               ; preds = %88
  %100 = load ptr, ptr %69, align 8, !tbaa !105
  %101 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %100, i32 noundef %2)
          to label %102 unwind label %115

102:                                              ; preds = %99
  %103 = load ptr, ptr %89, align 8, !tbaa !88
  %104 = load i32, ptr %81, align 8, !tbaa !110
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %103, i64 %105
  store i16 0, ptr %106, align 2, !tbaa !89
  %107 = load ptr, ptr %0, align 8, !tbaa !58
  %108 = getelementptr inbounds ptr, ptr %107, i64 35
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %101, ptr noundef %103)
          to label %111 unwind label %115

111:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(40) %81)
          to label %132 unwind label %112

112:                                              ; preds = %111
  %113 = landingpad { ptr, i32 }
          catch ptr null
  %114 = extractvalue { ptr, i32 } %113, 0
  tail call void @__clang_call_terminate(ptr %114) #17
  unreachable

115:                                              ; preds = %88, %79, %87, %102, %99
  %116 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(40) %81)
          to label %155 unwind label %117

117:                                              ; preds = %115
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #17
  unreachable

120:                                              ; preds = %76, %74
  %121 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %70, i32 noundef %2)
  br label %122

122:                                              ; preds = %68, %120
  %123 = phi ptr [ %121, %120 ], [ null, %68 ]
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !111
  %126 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %125, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !121
  %128 = load ptr, ptr %0, align 8, !tbaa !58
  %129 = getelementptr inbounds ptr, ptr %128, i64 35
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %123, ptr noundef %127), !prof !175
  br label %132

132:                                              ; preds = %122, %111
  %133 = phi ptr [ %110, %111 ], [ %131, %122 ]
  %134 = icmp eq i32 %5, 0
  br i1 %134, label %140, label %135, !prof !176

135:                                              ; preds = %132
  %136 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %137 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  %138 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %139 = zext i32 %5 to i64
  br label %145

140:                                              ; preds = %244, %132
  %141 = load ptr, ptr %1, align 8, !tbaa !58
  %142 = getelementptr inbounds ptr, ptr %141, i64 8
  %143 = load ptr, ptr %142, align 8
  %144 = tail call noundef zeroext i1 %143(ptr noundef nonnull align 8 dereferenceable(33) %1), !prof !177
  br i1 %144, label %252, label %372, !prof !171

145:                                              ; preds = %135, %244
  %146 = phi i64 [ 0, %135 ], [ %250, %244 ]
  %147 = load i32, ptr %136, align 4, !tbaa !149
  %148 = zext i32 %147 to i64
  %149 = icmp ult i64 %146, %148
  br i1 %149, label %159, label %150, !prof !151

150:                                              ; preds = %145
  %151 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %152 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %151, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %153)
          to label %154 unwind label %157

154:                                              ; preds = %150
  tail call void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

155:                                              ; preds = %115, %357, %157
  %156 = phi { ptr, i32 } [ %158, %157 ], [ %116, %115 ], [ %358, %357 ]
  resume { ptr, i32 } %156

157:                                              ; preds = %150
  %158 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %151) #16
  br label %155

159:                                              ; preds = %145
  %160 = load ptr, ptr %137, align 8, !tbaa !153
  %161 = getelementptr inbounds ptr, ptr %160, i64 %146
  %162 = load ptr, ptr %161, align 8, !tbaa !132
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %162, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !120
  %165 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %164, i64 0, i32 4
  %166 = load i32, ptr %165, align 4, !tbaa !178
  %167 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %164, i64 0, i32 6
  %168 = load ptr, ptr %167, align 8, !tbaa !121
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170, !prof !179

170:                                              ; preds = %159
  %171 = load i16, ptr %168, align 2, !tbaa !89
  %172 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !89
  %173 = icmp eq i16 %171, %172
  br i1 %173, label %177, label %192, !prof !180

174:                                              ; preds = %159
  %175 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !89
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %188, label %192

177:                                              ; preds = %170, %182
  %178 = phi i16 [ %185, %182 ], [ %171, %170 ]
  %179 = phi ptr [ %184, %182 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %170 ]
  %180 = phi ptr [ %183, %182 ], [ %168, %170 ]
  %181 = icmp eq i16 %178, 0
  br i1 %181, label %188, label %182, !prof !181

182:                                              ; preds = %177
  %183 = getelementptr inbounds i16, ptr %180, i64 1
  %184 = getelementptr inbounds i16, ptr %179, i64 1
  %185 = load i16, ptr %183, align 2, !tbaa !89
  %186 = load i16, ptr %184, align 2, !tbaa !89
  %187 = icmp eq i16 %185, %186
  br i1 %187, label %177, label %192, !prof !182, !llvm.loop !123

188:                                              ; preds = %177, %174
  %189 = load ptr, ptr %69, align 8, !tbaa !105
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %189, i64 0, i32 31
  %191 = load i32, ptr %190, align 8, !tbaa !183
  br label %192

192:                                              ; preds = %182, %170, %188, %174
  %193 = phi i32 [ %191, %188 ], [ %166, %174 ], [ %166, %170 ], [ %166, %182 ]
  %194 = load ptr, ptr %69, align 8, !tbaa !105
  %195 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %194, i64 0, i32 28
  %196 = load i32, ptr %195, align 4, !tbaa !174
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %200, label %198, !prof !184

198:                                              ; preds = %192
  %199 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %194, i32 noundef %193)
  br label %200

200:                                              ; preds = %198, %192
  %201 = phi ptr [ %199, %198 ], [ null, %192 ]
  %202 = load ptr, ptr %138, align 8, !tbaa !157
  %203 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %162)
  %204 = load ptr, ptr %202, align 8, !tbaa !58
  %205 = getelementptr inbounds ptr, ptr %204, i64 17
  %206 = load ptr, ptr %205, align 8
  %207 = tail call noundef ptr %206(ptr noundef nonnull align 8 dereferenceable(293) %202, ptr noundef %201, ptr noundef %203), !prof !185
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %162, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !117
  %210 = load ptr, ptr %207, align 8, !tbaa !58
  %211 = getelementptr inbounds ptr, ptr %210, i64 43
  %212 = load ptr, ptr %211, align 8
  tail call void %212(ptr noundef nonnull align 8 dereferenceable(72) %207, ptr noundef %209), !prof !186
  %213 = load ptr, ptr %133, align 8, !tbaa !58
  %214 = getelementptr inbounds ptr, ptr %213, i64 52
  %215 = load ptr, ptr %214, align 8
  %216 = tail call noundef ptr %215(ptr noundef nonnull align 8 dereferenceable(96) %133, ptr noundef nonnull %207), !prof !187
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218, !prof !188

218:                                              ; preds = %200
  %219 = load ptr, ptr %216, align 8, !tbaa !58
  %220 = getelementptr inbounds ptr, ptr %219, i64 39
  %221 = load ptr, ptr %220, align 8
  tail call void %221(ptr noundef nonnull align 8 dereferenceable(8) %216)
  br label %222

222:                                              ; preds = %218, %200
  %223 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %162, i64 0, i32 2
  %224 = load i32, ptr %223, align 4, !tbaa !189
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %244, !prof !179

226:                                              ; preds = %222
  %227 = load ptr, ptr %138, align 8, !tbaa !157
  %228 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !190
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %227, i64 noundef 56)
  %233 = load ptr, ptr %138, align 8, !tbaa !157
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %232, i32 noundef 500, ptr noundef %233)
  %234 = load ptr, ptr %138, align 8, !tbaa !157
  %235 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %234, i64 0, i32 3
  store ptr %232, ptr %235, align 8, !tbaa !190
  br label %236

236:                                              ; preds = %231, %226
  %237 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2
  %238 = load ptr, ptr %138, align 8, !tbaa !157
  %239 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %238, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !190
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %240, ptr noundef nonnull %207)
  %241 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %207, i64 0, i32 1, i32 1
  %242 = load i16, ptr %241, align 8, !tbaa !201
  %243 = or i16 %237, %242
  store i16 %243, ptr %241, align 8, !tbaa !201
  br label %244

244:                                              ; preds = %236, %222
  %245 = load i8, ptr %162, align 8, !tbaa !202, !range !203, !noundef !204
  %246 = icmp ne i8 %245, 0
  %247 = load ptr, ptr %207, align 8, !tbaa !58
  %248 = getelementptr inbounds ptr, ptr %247, i64 47
  %249 = load ptr, ptr %248, align 8
  tail call void %249(ptr noundef nonnull align 8 dereferenceable(72) %207, i1 noundef zeroext %246), !prof !205
  %250 = add nuw nsw i64 %146, 1
  %251 = icmp eq i64 %250, %139
  br i1 %251, label %140, label %145, !prof !206, !llvm.loop !207

252:                                              ; preds = %140
  %253 = load ptr, ptr %1, align 8, !tbaa !58
  %254 = getelementptr inbounds ptr, ptr %253, i64 6
  %255 = load ptr, ptr %254, align 8
  %256 = tail call noundef nonnull align 8 dereferenceable(16) ptr %255(ptr noundef nonnull align 8 dereferenceable(33) %1)
  %257 = load ptr, ptr %256, align 8, !tbaa !58
  %258 = getelementptr inbounds ptr, ptr %257, i64 13
  %259 = load ptr, ptr %258, align 8
  %260 = tail call noundef i32 %259(ptr noundef nonnull align 8 dereferenceable(16) %256)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %372, label %262

262:                                              ; preds = %252
  %263 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %264 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  br label %265

265:                                              ; preds = %262, %362
  %266 = phi i32 [ 0, %262 ], [ %366, %362 ]
  %267 = load ptr, ptr %256, align 8, !tbaa !58
  %268 = getelementptr inbounds ptr, ptr %267, i64 14
  %269 = load ptr, ptr %268, align 8
  %270 = call noundef nonnull align 8 dereferenceable(56) ptr %269(ptr noundef nonnull align 8 dereferenceable(16) %256, i32 noundef %266)
  %271 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %270, i64 0, i32 1
  %272 = load i32, ptr %271, align 8, !tbaa !208
  %273 = icmp ult i32 %272, 2
  br i1 %273, label %274, label %362

274:                                              ; preds = %265
  %275 = load ptr, ptr %270, align 8, !tbaa !58
  %276 = getelementptr inbounds ptr, ptr %275, i64 5
  %277 = load ptr, ptr %276, align 8
  %278 = call noundef ptr %277(ptr noundef nonnull align 8 dereferenceable(56) %270)
  %279 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %263)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 -1, ptr %9, align 4, !tbaa !130
  %280 = load ptr, ptr %69, align 8, !tbaa !105
  %281 = load ptr, ptr %280, align 8, !tbaa !58
  %282 = getelementptr inbounds ptr, ptr %281, i64 7
  %283 = load ptr, ptr %282, align 8
  %284 = invoke noundef i32 %283(ptr noundef nonnull align 8 dereferenceable(776) %280, ptr noundef %278, ptr noundef nonnull align 8 dereferenceable(40) %279, i16 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %285 unwind label %309

285:                                              ; preds = %274
  %286 = icmp eq ptr %278, null
  br i1 %286, label %291, label %287

287:                                              ; preds = %285
  %288 = load i16, ptr %278, align 2, !tbaa !89
  %289 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !89
  %290 = icmp eq i16 %288, %289
  br i1 %290, label %294, label %313

291:                                              ; preds = %285
  %292 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !89
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %305, label %313

294:                                              ; preds = %287, %299
  %295 = phi i16 [ %302, %299 ], [ %288, %287 ]
  %296 = phi ptr [ %301, %299 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %287 ]
  %297 = phi ptr [ %300, %299 ], [ %278, %287 ]
  %298 = icmp eq i16 %295, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds i16, ptr %297, i64 1
  %301 = getelementptr inbounds i16, ptr %296, i64 1
  %302 = load i16, ptr %300, align 2, !tbaa !89
  %303 = load i16, ptr %301, align 2, !tbaa !89
  %304 = icmp eq i16 %302, %303
  br i1 %304, label %294, label %313, !llvm.loop !123

305:                                              ; preds = %294, %291
  %306 = load ptr, ptr %69, align 8, !tbaa !105
  %307 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %306, i64 0, i32 31
  %308 = load i32, ptr %307, align 8, !tbaa !183
  br label %313

309:                                              ; preds = %274
  %310 = landingpad { ptr, i32 }
          cleanup
  br label %357

311:                                              ; preds = %321, %319
  %312 = landingpad { ptr, i32 }
          cleanup
  br label %357

313:                                              ; preds = %299, %287, %305, %291
  %314 = phi i32 [ %308, %305 ], [ %284, %291 ], [ %284, %287 ], [ %284, %299 ]
  %315 = load ptr, ptr %69, align 8, !tbaa !105
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %315, i64 0, i32 28
  %317 = load i32, ptr %316, align 4, !tbaa !174
  %318 = icmp eq i32 %314, %317
  br i1 %318, label %321, label %319

319:                                              ; preds = %313
  %320 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %315, i32 noundef %314)
          to label %321 unwind label %311

321:                                              ; preds = %319, %313
  %322 = phi ptr [ null, %313 ], [ %320, %319 ]
  %323 = load ptr, ptr %264, align 8, !tbaa !157
  %324 = load ptr, ptr %323, align 8, !tbaa !58
  %325 = getelementptr inbounds ptr, ptr %324, i64 17
  %326 = load ptr, ptr %325, align 8
  %327 = invoke noundef ptr %326(ptr noundef nonnull align 8 dereferenceable(293) %323, ptr noundef %322, ptr noundef %278)
          to label %328 unwind label %311

328:                                              ; preds = %321
  %329 = load ptr, ptr %133, align 8, !tbaa !58
  %330 = getelementptr inbounds ptr, ptr %329, i64 62
  %331 = load ptr, ptr %330, align 8
  %332 = invoke noundef ptr %331(ptr noundef nonnull align 8 dereferenceable(96) %133, ptr noundef %327)
          to label %333 unwind label %339

333:                                              ; preds = %328
  %334 = icmp eq ptr %332, null
  br i1 %334, label %341, label %335

335:                                              ; preds = %333
  %336 = load ptr, ptr %332, align 8, !tbaa !58
  %337 = getelementptr inbounds ptr, ptr %336, i64 39
  %338 = load ptr, ptr %337, align 8
  invoke void %338(ptr noundef nonnull align 8 dereferenceable(8) %332)
          to label %341 unwind label %339

339:                                              ; preds = %349, %345, %335, %328
  %340 = landingpad { ptr, i32 }
          cleanup
  br label %357

341:                                              ; preds = %335, %333
  %342 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %270, i64 0, i32 7
  %343 = load ptr, ptr %342, align 8, !tbaa !212
  %344 = icmp eq ptr %343, null
  br i1 %344, label %353, label %345

345:                                              ; preds = %341
  %346 = load ptr, ptr %327, align 8, !tbaa !58
  %347 = getelementptr inbounds ptr, ptr %346, i64 43
  %348 = load ptr, ptr %347, align 8
  invoke void %348(ptr noundef nonnull align 8 dereferenceable(72) %327, ptr noundef nonnull %343)
          to label %349 unwind label %339

349:                                              ; preds = %345
  %350 = load ptr, ptr %327, align 8, !tbaa !58
  %351 = getelementptr inbounds ptr, ptr %350, i64 47
  %352 = load ptr, ptr %351, align 8
  invoke void %352(ptr noundef nonnull align 8 dereferenceable(72) %327, i1 noundef zeroext false)
          to label %353 unwind label %339

353:                                              ; preds = %341, %349
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %263, ptr noundef nonnull align 8 dereferenceable(40) %279)
          to label %362 unwind label %354

354:                                              ; preds = %353
  %355 = landingpad { ptr, i32 }
          catch ptr null
  %356 = extractvalue { ptr, i32 } %355, 0
  call void @__clang_call_terminate(ptr %356) #17
  unreachable

357:                                              ; preds = %311, %339, %309
  %358 = phi { ptr, i32 } [ %310, %309 ], [ %340, %339 ], [ %312, %311 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %263, ptr noundef nonnull align 8 dereferenceable(40) %279)
          to label %155 unwind label %359

359:                                              ; preds = %357
  %360 = landingpad { ptr, i32 }
          catch ptr null
  %361 = extractvalue { ptr, i32 } %360, 0
  call void @__clang_call_terminate(ptr %361) #17
  unreachable

362:                                              ; preds = %353, %265
  %363 = load ptr, ptr %270, align 8, !tbaa !58
  %364 = getelementptr inbounds ptr, ptr %363, i64 6
  %365 = load ptr, ptr %364, align 8
  call void %365(ptr noundef nonnull align 8 dereferenceable(56) %270)
  %366 = add nuw i32 %266, 1
  %367 = load ptr, ptr %256, align 8, !tbaa !58
  %368 = getelementptr inbounds ptr, ptr %367, i64 13
  %369 = load ptr, ptr %368, align 8
  %370 = call noundef i32 %369(ptr noundef nonnull align 8 dereferenceable(16) %256)
  %371 = icmp ult i32 %366, %370
  br i1 %371, label %265, label %372, !llvm.loop !213

372:                                              ; preds = %362, %252, %140
  %373 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %374 = load ptr, ptr %373, align 8, !tbaa !214
  %375 = load ptr, ptr %374, align 8, !tbaa !58
  %376 = getelementptr inbounds ptr, ptr %375, i64 17
  %377 = load ptr, ptr %376, align 8
  %378 = call noundef ptr %377(ptr noundef nonnull align 8 dereferenceable(8) %374, ptr noundef %133), !prof !215
  %379 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %380 = load ptr, ptr %379, align 8, !tbaa !216
  %381 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %380, i64 0, i32 1
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %381, i32 noundef 1)
  %382 = load ptr, ptr %373, align 8, !tbaa !132
  %383 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %380, i64 0, i32 1, i32 3
  %384 = load ptr, ptr %383, align 8, !tbaa !217
  %385 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %380, i64 0, i32 1, i32 1
  %386 = load i32, ptr %385, align 4, !tbaa !219
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds ptr, ptr %384, i64 %387
  store ptr %382, ptr %388, align 8, !tbaa !132
  %389 = add i32 %386, 1
  store i32 %389, ptr %385, align 4, !tbaa !219
  store ptr %133, ptr %373, align 8, !tbaa !214
  %390 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %133, ptr %390, align 8, !tbaa !158
  %391 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 1, ptr %391, align 2, !tbaa !220
  br i1 %6, label %392, label %396, !prof !171

392:                                              ; preds = %372, %67
  %393 = load ptr, ptr %0, align 8, !tbaa !58
  %394 = getelementptr inbounds ptr, ptr %393, i64 6
  %395 = load ptr, ptr %394, align 8
  call void %395(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %7, ptr noundef %3)
  br label %396

396:                                              ; preds = %392, %372, %67
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_715XercesDOMParser10getURITextEj(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %1, i32 %2, i1 zeroext %3, ptr nocapture readnone %4) unnamed_addr #2 align 2 !prof !104 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %23, !prof !171

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !82
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 -1, ptr %10, align 8, !tbaa !81
  br label %22

16:                                               ; preds = %9
  %17 = icmp eq i32 %7, %13
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 -1, ptr %6, align 4, !tbaa !80
  br label %22

19:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_712XSDDOMParser20endAnnotationElementERKNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext false)
  %20 = load i32, ptr %12, align 4, !tbaa !82
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %12, align 4, !tbaa !82
  br label %39

22:                                               ; preds = %18, %15
  tail call void @_ZN11xercesc_2_712XSDDOMParser20endAnnotationElementERKNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext %14)
  br label %23

23:                                               ; preds = %22, %5
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !82
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !82
  %27 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !214
  %29 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %28, ptr %29, align 8, !tbaa !158
  %30 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  %32 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %31)
  store ptr %32, ptr %27, align 8, !tbaa !214
  %33 = load ptr, ptr %30, align 8, !tbaa !216
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %33, i64 0, i32 1, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !219
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39, !prof !176

37:                                               ; preds = %23
  %38 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %38, align 2, !tbaa !220
  br label %39

39:                                               ; preds = %19, %37, %23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !219
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !171

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.3, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %14 = add nsw i32 %3, -1
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %14)
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %14)
  ret ptr %16
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #7 align 2 !prof !222 {
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 2, !tbaa !220, !range !203, !noundef !204
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %98, label %9, !prof !223

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %31, !prof !224

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 49, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !225
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %17, ptr noundef %1, i32 noundef %2)
  br i1 %18, label %98, label %19, !prof !224

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %20 = load ptr, ptr %14, align 8, !tbaa !105
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %20, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %5, align 8, !tbaa !226
  %24 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !227
  %26 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %5, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !106
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %5, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !108
  call void @_ZN11xercesc_2_710XSDLocator9setValuesEPKtS2_ll(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef %23, ptr noundef %25, i64 noundef %27, i64 noundef %29)
  %30 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 9
  call void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %30, i32 noundef 108, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, ptr noundef nonnull %22)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %98

31:                                               ; preds = %9
  br i1 %3, label %45, label %32

32:                                               ; preds = %31
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %98, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  %37 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %38 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  %39 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  %40 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %41 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  %42 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  %43 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %44 = zext i32 %2 to i64
  br label %47

45:                                               ; preds = %31
  %46 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgCDataStartE)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef %1, i32 noundef %2)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgCDataEndE)
  br label %98

47:                                               ; preds = %34, %87
  %48 = phi i64 [ 0, %34 ], [ %96, %87 ]
  %49 = getelementptr inbounds i16, ptr %1, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !89
  switch i16 %50, label %79 [
    i16 38, label %51
    i16 60, label %65
  ]

51:                                               ; preds = %47
  %52 = load i32, ptr %38, align 8, !tbaa !110
  %53 = load i32, ptr %39, align 4, !tbaa !83
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1)
  br label %56

56:                                               ; preds = %51, %55
  %57 = load ptr, ptr %40, align 8, !tbaa !88
  %58 = load i32, ptr %38, align 8, !tbaa !110
  %59 = add i32 %58, 1
  store i32 %59, ptr %38, align 8, !tbaa !110
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds i16, ptr %57, i64 %60
  store i16 38, ptr %61, align 2, !tbaa !89
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE)
  %62 = load i32, ptr %38, align 8, !tbaa !110
  %63 = load i32, ptr %39, align 4, !tbaa !83
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %83, label %87

65:                                               ; preds = %47
  %66 = load i32, ptr %35, align 8, !tbaa !110
  %67 = load i32, ptr %36, align 4, !tbaa !83
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef 1)
  br label %70

70:                                               ; preds = %65, %69
  %71 = load ptr, ptr %37, align 8, !tbaa !88
  %72 = load i32, ptr %35, align 8, !tbaa !110
  %73 = add i32 %72, 1
  store i32 %73, ptr %35, align 8, !tbaa !110
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i16, ptr %71, i64 %74
  store i16 38, ptr %75, align 2, !tbaa !89
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE)
  %76 = load i32, ptr %35, align 8, !tbaa !110
  %77 = load i32, ptr %36, align 4, !tbaa !83
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %87

79:                                               ; preds = %47
  %80 = load i32, ptr %41, align 8, !tbaa !110
  %81 = load i32, ptr %42, align 4, !tbaa !83
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79, %70, %56
  %84 = phi ptr [ %38, %56 ], [ %35, %70 ], [ %41, %79 ]
  %85 = phi ptr [ %40, %56 ], [ %37, %70 ], [ %43, %79 ]
  %86 = phi i16 [ 59, %56 ], [ 59, %70 ], [ %50, %79 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %84, i32 noundef 1)
  br label %87

87:                                               ; preds = %83, %79, %70, %56
  %88 = phi ptr [ %40, %56 ], [ %37, %70 ], [ %43, %79 ], [ %85, %83 ]
  %89 = phi ptr [ %38, %56 ], [ %35, %70 ], [ %41, %79 ], [ %84, %83 ]
  %90 = phi i16 [ 59, %56 ], [ 59, %70 ], [ %50, %79 ], [ %86, %83 ]
  %91 = load ptr, ptr %88, align 8, !tbaa !88
  %92 = load i32, ptr %89, align 8, !tbaa !110
  %93 = add i32 %92, 1
  store i32 %93, ptr %89, align 8, !tbaa !110
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i16, ptr %91, i64 %94
  store i16 %90, ptr %95, align 2, !tbaa !89
  %96 = add nuw nsw i64 %48, 1
  %97 = icmp eq i64 %96, %44
  br i1 %97, label %98, label %47, !llvm.loop !228

98:                                               ; preds = %87, %32, %45, %13, %19, %4
  ret void
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_710XSDLocator9setValuesEPKtS2_ll(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !229 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !230

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !110
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !83
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !231

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = load i32, ptr %0, align 8, !tbaa !110
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !232
  %20 = load i32, ptr %0, align 8, !tbaa !110
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !110
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %1)
  %8 = load i32, ptr %7, align 8, !tbaa !110
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !83
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1)
  br label %13

13:                                               ; preds = %6, %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = load i32, ptr %7, align 8, !tbaa !110
  %17 = add i32 %16, 1
  store i32 %17, ptr %7, align 8, !tbaa !110
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds i16, ptr %15, i64 %18
  store i16 45, ptr %19, align 2, !tbaa !89
  %20 = load i32, ptr %9, align 4, !tbaa !83
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1)
  br label %23

23:                                               ; preds = %13, %22
  %24 = load ptr, ptr %14, align 8, !tbaa !88
  %25 = load i32, ptr %7, align 8, !tbaa !110
  %26 = add i32 %25, 1
  store i32 %26, ptr %7, align 8, !tbaa !110
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i16, ptr %24, i64 %27
  store i16 45, ptr %28, align 2, !tbaa !89
  %29 = load i32, ptr %9, align 4, !tbaa !83
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1)
  br label %32

32:                                               ; preds = %23, %31
  %33 = load ptr, ptr %14, align 8, !tbaa !88
  %34 = load i32, ptr %7, align 8, !tbaa !110
  %35 = add i32 %34, 1
  store i32 %35, ptr %7, align 8, !tbaa !110
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i16, ptr %33, i64 %36
  store i16 62, ptr %37, align 2, !tbaa !89
  br label %38

38:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, i32 noundef %2, i1 zeroext %3) unnamed_addr #2 align 2 !prof !233 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 2, !tbaa !220, !range !203, !noundef !204
  %7 = icmp ne i8 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !range !203
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %7, i1 %10, i1 false, !prof !234
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  %15 = select i1 %11, i1 %14, i1 false, !prof !234
  br i1 %15, label %16, label %18, !prof !234

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %1, i32 noundef %2)
  br label %18

18:                                               ; preds = %4, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #2 align 2 !prof !56 {
  %10 = icmp sgt i32 %3, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 1
  store i8 1, ptr %12, align 8, !tbaa !61
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !58
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8)
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSDDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #10 align 2 !prof !56 {
  %10 = icmp sgt i32 %3, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %0, i64 216
  store i8 1, ptr %12, align 8, !tbaa !61
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds i8, ptr %0, i64 232
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !58
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8)
  br label %21

21:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_712XSDDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 align 2 !prof !56 {
  %5 = getelementptr inbounds i8, ptr %0, i64 232
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !58
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_712XSDDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 232
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !58
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

declare void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #11 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #11 comdat align 2 !prof !56 {
  ret i1 false
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #11 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #11 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold uwtable
declare void @_ZThn8_N11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #12 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #12 comdat align 2 !prof !56 {
  ret i1 false
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !57 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #12 comdat align 2 !prof !56 {
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

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !235 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !236
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !238
  %7 = load ptr, ptr %0, align 8, !tbaa !239
  %8 = load ptr, ptr %4, align 8, !tbaa !58
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !240
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !241
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !132
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !242

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !236
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !243
  %22 = load ptr, ptr %19, align 8, !tbaa !58
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !245
  br i1 %25, label %30, label %26, !prof !246

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !132
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !247, !llvm.loop !248

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !249

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !250
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZNK11xercesc_2_79ElemStack15getNamespaceMapEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !56 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !58
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !56 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !58
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !254 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !95
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %43, !prof !255

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !58
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17), !prof !256
  %22 = load i32, ptr %3, align 4, !tbaa !94
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !257

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !97
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = load ptr, ptr %28, align 8, !tbaa !58
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30), !prof !258
  store ptr %21, ptr %29, align 8, !tbaa !96
  store i32 %13, ptr %6, align 8, !tbaa !95
  br label %43

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds i32, ptr %26, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !130
  %38 = getelementptr inbounds i32, ptr %21, i64 %35
  store i32 %37, ptr %38, align 4, !tbaa !130
  %39 = add nuw nsw i64 %35, 1
  %40 = load i32, ptr %3, align 4, !tbaa !94
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %34, label %27, !prof !259, !llvm.loop !260

43:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !104 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !219
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !261
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !171

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !58
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !219
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !221
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !217
  %31 = load ptr, ptr %28, align 8, !tbaa !58
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !217
  store i32 %13, ptr %6, align 8, !tbaa !261
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !217
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !132
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !132
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !262

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !219
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !170

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !217
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !219
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !170

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !170

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %20 = zext i32 %1 to i64
  %21 = zext i32 %14 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %20, %18 ], [ %25, %22 ]
  %24 = load ptr, ptr %19, align 8, !tbaa !217
  %25 = add nuw nsw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr %27, ptr %28, align 8, !tbaa !132
  %29 = icmp eq i64 %25, %21
  br i1 %29, label %30, label %22, !llvm.loop !263

30:                                               ; preds = %22, %16, %13
  %31 = add i32 %4, -1
  store i32 %31, ptr %3, align 4, !tbaa !219
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !56 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !58
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!55}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!35 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_710XSDLocatorC1Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb, i64 1}
!41 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!42 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_715XercesDOMParserD2Ev, i64 1}
!43 = !{ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, i64 550}
!44 = !{ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv, i64 550}
!45 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!46 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 552}
!47 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, i64 550}
!48 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 650}
!49 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj, i64 550}
!50 = !{ptr @_ZN11xercesc_2_712XSDDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, i64 550}
!51 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, i64 550}
!52 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, i64 550}
!53 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj, i64 667}
!54 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 4}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !60, i64 0}
!60 = !{!"Simple C++ TBAA"}
!61 = !{!62, !70, i64 224}
!62 = !{!"_ZTSN11xercesc_2_712XSDDOMParserE", !63, i64 0, !70, i64 224, !74, i64 228, !74, i64 232, !74, i64 236, !72, i64 240, !72, i64 248, !72, i64 256, !75, i64 264, !76, i64 304, !77, i64 328}
!63 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !64, i64 0, !72, i64 200, !72, i64 208, !72, i64 216}
!64 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !65, i64 0, !66, i64 8, !67, i64 16, !68, i64 24, !69, i64 32, !70, i64 40, !70, i64 41, !70, i64 42, !70, i64 43, !70, i64 44, !70, i64 45, !70, i64 46, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152, !73, i64 160, !72, i64 184, !72, i64 192}
!65 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!66 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!67 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!68 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!69 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!70 = !{!"bool", !71, i64 0}
!71 = !{!"omnipotent char", !60, i64 0}
!72 = !{!"any pointer", !71, i64 0}
!73 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !74, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!"int", !71, i64 0}
!75 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !74, i64 0, !74, i64 4, !74, i64 8, !70, i64 12, !72, i64 16, !72, i64 24, !72, i64 32}
!76 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !70, i64 8, !72, i64 16}
!77 = !{!"_ZTSN11xercesc_2_710XSDLocatorE", !78, i64 0, !79, i64 8, !79, i64 16, !72, i64 24, !72, i64 32}
!78 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!79 = !{!"long", !71, i64 0}
!80 = !{!62, !74, i64 228}
!81 = !{!62, !74, i64 232}
!82 = !{!62, !74, i64 236}
!83 = !{!75, !74, i64 4}
!84 = !{!75, !74, i64 8}
!85 = !{!75, !70, i64 12}
!86 = !{!75, !72, i64 16}
!87 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!88 = !{!75, !72, i64 32}
!89 = !{!90, !90, i64 0}
!90 = !{!"short", !71, i64 0}
!91 = !{!"branch_weights", i32 1, i32 0}
!92 = !{!93, !70, i64 0}
!93 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !70, i64 0, !74, i64 4, !74, i64 8, !72, i64 16, !72, i64 24}
!94 = !{!93, !74, i64 4}
!95 = !{!93, !74, i64 8}
!96 = !{!93, !72, i64 16}
!97 = !{!93, !72, i64 24}
!98 = !{!"VP", i32 1, i64 1, i64 64, i64 1}
!99 = !{!62, !72, i64 256}
!100 = !{!76, !72, i64 16}
!101 = !{!"branch_weights", i32 0, i32 1}
!102 = !{!"VP", i32 0, i64 12, i64 -7405368087501025645, i64 12}
!103 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!104 = !{!"function_entry_count", i64 550}
!105 = !{!64, !72, i64 48}
!106 = !{!107, !79, i64 16}
!107 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !72, i64 0, !72, i64 8, !79, i64 16, !79, i64 24}
!108 = !{!107, !79, i64 24}
!109 = !{!"VP", i32 0, i64 550, i64 6512230795528036941, i64 550}
!110 = !{!75, !74, i64 0}
!111 = !{!112, !72, i64 16}
!112 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !113, i64 0, !72, i64 8, !72, i64 16, !114, i64 24, !74, i64 28, !70, i64 32}
!113 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!114 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !71, i64 0}
!115 = !{!116, !74, i64 4}
!116 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEE", !70, i64 0, !74, i64 4, !74, i64 8, !72, i64 16, !72, i64 24}
!117 = !{!118, !72, i64 16}
!118 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !70, i64 0, !119, i64 4, !74, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !70, i64 48}
!119 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !71, i64 0}
!120 = !{!118, !72, i64 24}
!121 = !{!122, !72, i64 32}
!122 = !{!"_ZTSN11xercesc_2_75QNameE", !113, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48}
!123 = distinct !{!123, !124, !125}
!124 = !{!"llvm.loop.mustprogress"}
!125 = !{!"llvm.loop.unroll.disable"}
!126 = !{!127, !72, i64 24}
!127 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !113, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !74, i64 32, !74, i64 36}
!128 = !{!129, !74, i64 0}
!129 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !74, i64 0, !72, i64 8}
!130 = !{!74, !74, i64 0}
!131 = distinct !{!131, !124, !125}
!132 = !{!72, !72, i64 0}
!133 = !{!134, !74, i64 0}
!134 = !{!"_ZTSN11xercesc_2_711PrefMapElemE", !74, i64 0, !74, i64 4}
!135 = distinct !{!135, !124, !125}
!136 = !{!127, !72, i64 8}
!137 = !{!127, !72, i64 16}
!138 = !{!129, !72, i64 8}
!139 = !{!134, !74, i64 4}
!140 = distinct !{!140, !124, !125}
!141 = !{!"function_entry_count", i64 789922}
!142 = !{!"branch_weights", i32 0, i32 789922}
!143 = !{!"branch_weights", i32 284, i32 789638}
!144 = !{!"branch_weights", i32 789638, i32 41628303}
!145 = distinct !{!145, !124, !125}
!146 = !{!"branch_weights", i32 789636, i32 2}
!147 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!148 = !{!"function_entry_count", i64 1365684}
!149 = !{!150, !74, i64 12}
!150 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !70, i64 8, !74, i64 12, !74, i64 16, !72, i64 24, !72, i64 32}
!151 = !{!"branch_weights", i32 1366334, i32 0}
!152 = !{!150, !72, i64 32}
!153 = !{!150, !72, i64 24}
!154 = !{!116, !72, i64 24}
!155 = !{!116, !72, i64 16}
!156 = distinct !{!156, !124, !125}
!157 = !{!64, !72, i64 88}
!158 = !{!64, !72, i64 72}
!159 = !{!62, !72, i64 240}
!160 = !{!161, !72, i64 144}
!161 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !162, i64 0, !79, i64 8, !70, i64 16, !70, i64 17, !70, i64 18, !70, i64 19, !70, i64 20, !70, i64 21, !70, i64 22, !70, i64 23, !70, i64 24, !70, i64 25, !70, i64 26, !70, i64 27, !70, i64 28, !70, i64 29, !70, i64 30, !70, i64 31, !70, i64 32, !70, i64 33, !70, i64 34, !70, i64 35, !70, i64 36, !70, i64 37, !70, i64 38, !74, i64 40, !74, i64 44, !74, i64 48, !74, i64 52, !74, i64 56, !74, i64 60, !74, i64 64, !74, i64 68, !72, i64 72, !74, i64 80, !74, i64 84, !74, i64 88, !74, i64 92, !74, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !70, i64 176, !163, i64 184, !72, i64 264, !165, i64 272, !72, i64 280, !72, i64 288, !72, i64 296, !72, i64 304, !72, i64 312, !72, i64 320, !72, i64 328, !72, i64 336, !72, i64 344, !164, i64 352, !72, i64 360, !73, i64 368, !75, i64 392, !75, i64 432, !75, i64 472, !75, i64 512, !75, i64 552, !75, i64 592, !75, i64 632, !166, i64 672}
!162 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!163 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !78, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !74, i64 40, !72, i64 48, !70, i64 56, !164, i64 60, !70, i64 64, !72, i64 72}
!164 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !71, i64 0}
!165 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !71, i64 0}
!166 = !{!"_ZTSN11xercesc_2_79ElemStackE", !74, i64 0, !74, i64 4, !127, i64 8, !72, i64 48, !74, i64 56, !74, i64 60, !74, i64 64, !74, i64 68, !74, i64 72, !74, i64 76, !74, i64 80, !72, i64 88, !72, i64 96}
!167 = !{!62, !72, i64 248}
!168 = !{!161, !72, i64 136}
!169 = !{!163, !72, i64 24}
!170 = !{!"branch_weights", i32 550, i32 0}
!171 = !{!"branch_weights", i32 0, i32 550}
!172 = !{!"branch_weights", i32 14, i32 536}
!173 = !{!"branch_weights", i32 0, i32 14}
!174 = !{!161, !74, i64 52}
!175 = !{!"VP", i32 0, i64 550, i64 4889984158785476398, i64 550}
!176 = !{!"branch_weights", i32 1, i32 549}
!177 = !{!"VP", i32 0, i64 550, i64 -71788823611994443, i64 550}
!178 = !{!122, !74, i64 20}
!179 = !{!"branch_weights", i32 0, i32 650}
!180 = !{!"branch_weights", i32 38, i32 611}
!181 = !{!"branch_weights", i32 1, i32 37}
!182 = !{!"branch_weights", i32 0, i32 38}
!183 = !{!161, !74, i64 64}
!184 = !{!"branch_weights", i32 648, i32 2}
!185 = !{!"VP", i32 0, i64 650, i64 6064392597706879533, i64 650}
!186 = !{!"VP", i32 0, i64 650, i64 5583319895384373182, i64 650}
!187 = !{!"VP", i32 0, i64 650, i64 6569482941793626815, i64 650}
!188 = !{!"branch_weights", i32 650, i32 0}
!189 = !{!118, !119, i64 4}
!190 = !{!191, !72, i64 80}
!191 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !192, i64 0, !197, i64 32, !198, i64 48, !72, i64 80, !72, i64 88, !72, i64 96, !70, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !127, i64 136, !72, i64 176, !72, i64 184, !72, i64 192, !79, i64 200, !72, i64 208, !72, i64 216, !72, i64 224, !72, i64 232, !72, i64 240, !72, i64 248, !72, i64 256, !72, i64 264, !72, i64 272, !72, i64 280, !74, i64 288, !70, i64 292}
!192 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !193, i64 0, !194, i64 8, !195, i64 16, !196, i64 24}
!193 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!194 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!195 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!196 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!197 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !72, i64 0, !90, i64 8}
!198 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !72, i64 0, !72, i64 8, !199, i64 16}
!199 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !200, i64 0, !72, i64 8}
!200 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!201 = !{!197, !90, i64 8}
!202 = !{!118, !70, i64 0}
!203 = !{i8 0, i8 2}
!204 = !{}
!205 = !{!"VP", i32 0, i64 650, i64 7662138892129689803, i64 650}
!206 = !{!"branch_weights", i32 549, i32 101}
!207 = distinct !{!207, !124, !125}
!208 = !{!209, !210, i64 8}
!209 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !113, i64 0, !210, i64 8, !119, i64 12, !211, i64 16, !70, i64 20, !70, i64 21, !74, i64 24, !72, i64 32, !72, i64 40, !72, i64 48}
!210 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !71, i64 0}
!211 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !71, i64 0}
!212 = !{!209, !72, i64 32}
!213 = distinct !{!213, !124, !125}
!214 = !{!64, !72, i64 64}
!215 = !{!"VP", i32 0, i64 550, i64 -3599444950527900649, i64 549, i64 2297572982018536192, i64 1}
!216 = !{!64, !72, i64 96}
!217 = !{!218, !72, i64 16}
!218 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEE", !70, i64 0, !74, i64 4, !74, i64 8, !72, i64 16, !72, i64 24}
!219 = !{!218, !74, i64 4}
!220 = !{!64, !70, i64 42}
!221 = !{!218, !72, i64 24}
!222 = !{!"function_entry_count", i64 667}
!223 = !{!"branch_weights", i32 0, i32 667}
!224 = !{!"branch_weights", i32 667, i32 0}
!225 = !{!163, !72, i64 16}
!226 = !{!107, !72, i64 0}
!227 = !{!107, !72, i64 8}
!228 = distinct !{!228, !124, !125}
!229 = !{!"function_entry_count", i64 2718768}
!230 = !{!"branch_weights", i32 0, i32 2718768}
!231 = !{!"branch_weights", i32 2718764, i32 4}
!232 = !{!"VP", i32 1, i64 2718768, i64 33, i64 658811, i64 9, i64 435444, i64 17, i64 410031, i64 8, i64 320017}
!233 = !{!"function_entry_count", i64 2}
!234 = !{!"branch_weights", i32 0, i32 2}
!235 = !{!"function_entry_count", i64 1798414}
!236 = !{!237, !72, i64 40}
!237 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !72, i64 0, !70, i64 8, !72, i64 16, !74, i64 24, !74, i64 28, !74, i64 32, !72, i64 40}
!238 = !{!237, !74, i64 24}
!239 = !{!237, !72, i64 0}
!240 = !{!"VP", i32 0, i64 1798414, i64 3024540859536234746, i64 1798414}
!241 = !{!237, !72, i64 16}
!242 = !{!"branch_weights", i32 1, i32 289}
!243 = !{!244, !72, i64 16}
!244 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !72, i64 0, !72, i64 8, !72, i64 16}
!245 = !{!"VP", i32 0, i64 1798632, i64 -1309333655503989351, i64 1798632}
!246 = !{!"branch_weights", i32 1798124, i32 508}
!247 = !{!"branch_weights", i32 289, i32 1798343}
!248 = distinct !{!248, !124, !125}
!249 = !{!"branch_weights", i32 290, i32 1798124}
!250 = !{!244, !72, i64 0}
!251 = !{!252, !72, i64 40}
!252 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !253, i64 8, !72, i64 16, !74, i64 24, !72, i64 32, !72, i64 40}
!253 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !71, i64 0}
!254 = !{!"function_entry_count", i64 833040}
!255 = !{!"branch_weights", i32 17, i32 833023}
!256 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!257 = !{!"branch_weights", i32 1, i32 135}
!258 = !{!"VP", i32 0, i64 17, i64 -7405368087501025645, i64 17}
!259 = !{!"branch_weights", i32 2177, i32 135}
!260 = distinct !{!260, !124, !125}
!261 = !{!218, !74, i64 8}
!262 = distinct !{!262, !124, !125}
!263 = distinct !{!263, !124, !125}
