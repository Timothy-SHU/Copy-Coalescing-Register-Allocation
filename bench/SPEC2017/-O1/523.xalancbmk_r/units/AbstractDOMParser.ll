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
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::PSVIElement" = type { %"class.xercesc_2_7::PSVIItem", ptr, ptr, ptr }
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
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DOMAttrImpl" = type { %"class.xercesc_2_7::DOMAttr", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr }
%"class.xercesc_2_7::DOMAttr" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMDocumentTypeImpl" = type <{ %"class.xercesc_2_7::DOMDocumentType", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::DOMDocumentType" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711PSVIHandler24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_711PSVIHandlerD2Ev = comdat any

$_ZN11xercesc_2_711PSVIHandlerD0Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD2Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerD0Ev = comdat any

$_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_ = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterD0Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerD0Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerD0Ev = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

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

$_ZTVN11xercesc_2_718XMLDocumentHandlerE = comdat any

$_ZTVN11xercesc_2_716XMLErrorReporterE = comdat any

$_ZTVN11xercesc_2_716XMLEntityHandlerE = comdat any

$_ZTVN11xercesc_2_714DocTypeHandlerE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN11xercesc_2_717AbstractDOMParserE = dso_local unnamed_addr constant { [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_717AbstractDOMParserD0Ev, ptr @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE, ptr @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn8_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn8_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [10 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn16_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn16_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [20 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_], [7 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_717AbstractDOMParserE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParserD1Ev, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParserD0Ev, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [22 x i8] c"AbstractDOMParser.cpp\00", align 1
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
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
@_ZN11xercesc_2_76XMLUni11fgYesStringE = external local_unnamed_addr constant [0 x i16], align 2
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
@_ZZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS = internal unnamed_addr constant [6 x i16] [i16 120, i16 109, i16 108, i16 110, i16 115, i16 0], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgPubIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgSysIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgNDATAStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgAttListStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_711PSVIHandlerE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711PSVIHandlerE, ptr @_ZN11xercesc_2_711PSVIHandlerD2Ev, ptr @_ZN11xercesc_2_711PSVIHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_711PSVIHandler24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_711PSVIHandlerE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711PSVIHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_711PSVIHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711PSVIHandlerE }, comdat, align 8
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
@_ZTVN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE7cleanupEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@switch.table._ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb.4 = private unnamed_addr constant [10 x ptr] [ptr @_ZN11xercesc_2_715DOMTypeInfoImpl28g_DtdValidatedCDATAAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl25g_DtdValidatedIDAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl28g_DtdValidatedIDREFAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl29g_DtdValidatedIDREFSAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl29g_DtdValidatedENTITYAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedENTITIESAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl30g_DtdValidatedNMTOKENAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedNMTOKENSAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl31g_DtdValidatedNOTATIONAttributeE, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl34g_DtdValidatedENUMERATIONAttributeE], align 8

@_ZN11xercesc_2_717AbstractDOMParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !55 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #24
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711PSVIHandler24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711PSVIHandlerE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  store i8 1, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  store i8 1, ptr %10, align 1, !tbaa !72
  %11 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %11, align 2, !tbaa !73
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %12, align 1, !tbaa !74
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  store i8 1, ptr %13, align 4, !tbaa !75
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  store i8 0, ptr %14, align 1, !tbaa !76
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  store i8 0, ptr %15, align 2, !tbaa !77
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %16, i8 0, i64 88, i1 false)
  store ptr %1, ptr %17, align 8, !tbaa !78
  %18 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  store ptr %2, ptr %18, align 8, !tbaa !79
  %19 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 25
  store ptr %3, ptr %19, align 8, !tbaa !80
  %20 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  invoke void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef %2)
          to label %21 unwind label %26, !prof !81

21:                                               ; preds = %4
  %22 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %23 unwind label %30, !prof !81

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  store ptr %22, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  store ptr null, ptr %25, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_717AbstractDOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %47 unwind label %34, !prof !81

26:                                               ; preds = %4
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  br label %62

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = extractvalue { ptr, i32 } %31, 0
  %33 = extractvalue { ptr, i32 } %31, 1
  br label %59

34:                                               ; preds = %23
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %36 = extractvalue { ptr, i32 } %35, 0
  %37 = extractvalue { ptr, i32 } %35, 1
  %38 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #24
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = tail call ptr @__cxa_begin_catch(ptr %36) #24
  invoke void @__cxa_rethrow() #26
          to label %70 unwind label %42

42:                                               ; preds = %40
  %43 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %44 unwind label %67

44:                                               ; preds = %42
  %45 = extractvalue { ptr, i32 } %43, 1
  %46 = extractvalue { ptr, i32 } %43, 0
  br label %48

47:                                               ; preds = %23
  ret void

48:                                               ; preds = %44, %34
  %49 = phi ptr [ null, %44 ], [ @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, %34 ]
  %50 = phi ptr [ null, %44 ], [ %0, %34 ]
  %51 = phi i32 [ %45, %44 ], [ %37, %34 ]
  %52 = phi ptr [ %46, %44 ], [ %36, %34 ]
  %53 = icmp eq ptr %50, null
  %54 = or i1 %39, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(200) %50)
          to label %59 unwind label %56

56:                                               ; preds = %55
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #25
  unreachable

59:                                               ; preds = %55, %48, %30
  %60 = phi i32 [ %33, %30 ], [ %51, %48 ], [ %51, %55 ]
  %61 = phi ptr [ %32, %30 ], [ %52, %48 ], [ %52, %55 ]
  tail call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #24
  br label %62

62:                                               ; preds = %59, %26
  %63 = phi i32 [ %60, %59 ], [ %29, %26 ]
  %64 = phi ptr [ %61, %59 ], [ %28, %26 ]
  %65 = insertvalue { ptr, i32 } poison, ptr %64, 0
  %66 = insertvalue { ptr, i32 } %65, i32 %63, 1
  resume { ptr, i32 } %66

67:                                               ; preds = %42
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  tail call void @__clang_call_terminate(ptr %69) #25
  unreachable

70:                                               ; preds = %40
  unreachable
}

declare void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !81

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !57
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #24
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %11 = load i8, ptr %10, align 1, !tbaa !76, !range !85, !noundef !86
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21, !prof !81

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !88

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 78
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(293) %15), !prof !89
  br label %21

21:                                               ; preds = %17, %13, %9
  %22 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25, !prof !88

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = load ptr, ptr %27, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
          to label %36 unwind label %33, !prof !94

33:                                               ; preds = %25
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #25
  unreachable

36:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #24
  br label %37

37:                                               ; preds = %36, %21
  %38 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !88

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !57
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(776) %39) #24, !prof !96
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !97
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !88

49:                                               ; preds = %45
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %47) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #24
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %52 = load ptr, ptr %51, align 8, !tbaa !79
  %53 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !98
  %55 = load ptr, ptr %52, align 8, !tbaa !57
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %54), !prof !99
  %58 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  %59 = load ptr, ptr %58, align 8, !tbaa !78
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61, !prof !81

61:                                               ; preds = %50
  %62 = load ptr, ptr %59, align 8, !tbaa !57
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(40) %59) #24
  br label %65

65:                                               ; preds = %61, %50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = load ptr, ptr %2, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7)
          to label %8 unwind label %39, !prof !81

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  store ptr %4, ptr %9, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 22
  store ptr %11, ptr %12, align 8, !tbaa !102
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = load ptr, ptr %2, align 8, !tbaa !79
  %16 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %14, ptr noundef nonnull %4, ptr noundef %15)
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  store ptr %16, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %16, i64 0, i32 41
  store ptr %0, ptr %18, align 8, !tbaa !103
  %19 = getelementptr inbounds i8, ptr %0, i64 24
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %16, i64 0, i32 42
  store ptr %19, ptr %20, align 8, !tbaa !115
  %21 = load ptr, ptr %12, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %21)
  %22 = load ptr, ptr %2, align 8, !tbaa !79
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %22)
  %24 = load ptr, ptr %2, align 8, !tbaa !79
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1
  store i8 0, ptr %25, align 8, !tbaa !116
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 1
  store i32 0, ptr %26, align 4, !tbaa !117
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 2
  store i32 64, ptr %27, align 8, !tbaa !118
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 3
  store ptr null, ptr %28, align 8, !tbaa !93
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 4
  store ptr %24, ptr %29, align 8, !tbaa !91
  %30 = load ptr, ptr %24, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef 512)
          to label %34 unwind label %41, !prof !119

34:                                               ; preds = %8
  store ptr %33, ptr %28, align 8, !tbaa !93
  %35 = load i32, ptr %27, align 8, !tbaa !118
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %33, i8 0, i64 %37, i1 false), !prof !120
  %38 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  store ptr %23, ptr %38, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  ret void

39:                                               ; preds = %1
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  br label %43

41:                                               ; preds = %8
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #24
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  resume { ptr, i32 } %44
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [38 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_717AbstractDOMParserE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %6 unwind label %8, !prof !81

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  tail call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #25
  unreachable
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !55 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !55 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !55 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParserD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !55 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #24
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn8_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture readnone %0) unnamed_addr #11 align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn16_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture readnone %0) unnamed_addr #11 align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture readnone %0) unnamed_addr #11 align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParserD0Ev(ptr nocapture readnone %0) unnamed_addr #11 align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 1, !range !85
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false, !prof !122
  br i1 %8, label %9, label %47, !prof !122

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %15)
  %17 = load ptr, ptr %14, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 1
  store i8 1, ptr %18, align 8, !tbaa !123
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 2
  store i32 0, ptr %19, align 4, !tbaa !125
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 3
  store i32 10, ptr %20, align 8, !tbaa !126
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 4
  store ptr null, ptr %21, align 8, !tbaa !127
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 5
  store ptr %17, ptr %22, align 8, !tbaa !128
  %23 = load ptr, ptr %17, align 8, !tbaa !57
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef 80)
          to label %27 unwind label %35

27:                                               ; preds = %13
  store ptr %26, ptr %21, align 8, !tbaa !127
  br label %28

28:                                               ; preds = %27, %28
  %29 = phi i64 [ 0, %27 ], [ %32, %28 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !127
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  store ptr null, ptr %31, align 8, !tbaa !82
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, 10
  br i1 %33, label %34, label %28, !llvm.loop !129

34:                                               ; preds = %28
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !57
  store ptr %16, ptr %10, align 8, !tbaa !84
  br label %37

35:                                               ; preds = %13
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %16, ptr noundef %15) #24
  resume { ptr, i32 } %36

37:                                               ; preds = %34, %9
  %38 = load ptr, ptr %10, align 8, !tbaa !84
  %39 = load ptr, ptr %2, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1)
  %40 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %38, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !127
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %38, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !125
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %41, i64 %44
  store ptr %39, ptr %45, align 8, !tbaa !82
  %46 = add i32 %43, 1
  store i32 %46, ptr %42, align 4, !tbaa !125
  br label %47

47:                                               ; preds = %37, %1
  store ptr null, ptr %2, align 8, !tbaa !87
  %48 = load ptr, ptr %0, align 8, !tbaa !57
  %49 = getelementptr inbounds ptr, ptr %48, i64 29
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(200) %0), !prof !132
  %51 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %52 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %52, align 1, !tbaa !74
  %53 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %53, align 2, !tbaa !73
  store i8 0, ptr %5, align 1, !tbaa !76
  %54 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %55 = load ptr, ptr %54, align 8, !tbaa !90
  %56 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %55, i64 0, i32 1, i32 1
  store i32 0, ptr %56, align 4, !tbaa !117
  %57 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %58 = load ptr, ptr %57, align 8, !tbaa !133
  store i32 0, ptr %58, align 8, !tbaa !134
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !135
  store i16 0, ptr %60, align 2, !tbaa !136
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(200) %0) local_unnamed_addr #12 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %2, align 1, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 1, !tbaa !74, !range !85, !noundef !86
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 43, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #24
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(40) %14)
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %22 = load i8, ptr %21, align 1, !tbaa !76, !range !85, !noundef !86
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !57
  %30 = getelementptr inbounds ptr, ptr %29, i64 78
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(293) %26)
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  store ptr null, ptr %33, align 8, !tbaa !87
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser17isDocumentAdoptedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #13 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 1, !tbaa !76, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #14 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 10
  store i8 1, ptr %2, align 1, !tbaa !76
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #15 align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xercesc_2_717AbstractDOMParser12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 2, !tbaa !140, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getGenerateSyntheticAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 19
  %5 = load i8, ptr %4, align 1, !tbaa !141, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser22getValidateAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 20
  %5 = load i8, ptr %4, align 2, !tbaa !142, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getExitOnFirstFatalErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !143, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser28getValidationConstraintFatalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 4, !tbaa !144, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser19getValidationSchemeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 8, !tbaa !145
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 2
  %8 = icmp eq i32 %5, 1
  %9 = select i1 %8, i32 1, i32 %7
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !146, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser31getValidationSchemaFullCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !147, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser29getIdentityConstraintCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 14
  %5 = load i8, ptr %4, align 4, !tbaa !148, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717AbstractDOMParser13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !149
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser25getExternalSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 58
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser36getExternalNoNamespaceSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getSecurityManagerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 60
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getLoadExternalDTDEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 17
  %5 = load i8, ptr %4, align 1, !tbaa !153, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getCalculateSrcOfsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !154, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser24getStandardUriConformantEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !155, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser20getIgnoreAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 22
  %5 = load i8, ptr %4, align 4, !tbaa !156, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser33getDisableDefaultEntityResolutionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 23
  %5 = load i8, ptr %4, align 1, !tbaa !157, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser20getSkipDTDValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 24
  %5 = load i8, ptr %4, align 2, !tbaa !158, !range !85, !noundef !86
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  store ptr %1, ptr %3, align 8, !tbaa !83
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %9 = load i8, ptr %8, align 2, !tbaa !77, !range !85, !noundef !86
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ null, %7 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %14, i64 0, i32 46
  store ptr %12, ptr %15, align 8, !tbaa !159
  br label %16

16:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 2, !tbaa !140
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser31setGenerateSyntheticAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 19
  store i8 %5, ptr %6, align 1, !tbaa !141
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser22setValidateAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 20
  store i8 %5, ptr %6, align 2, !tbaa !142
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 1, !tbaa !143
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 4, !tbaa !144
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #17 align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  switch i32 %1, label %6 [
    i32 0, label %7
    i32 1, label %5
  ], !prof !160

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %2, %5, %6
  %8 = phi i32 [ %1, %5 ], [ 2, %6 ], [ %1, %2 ]
  %9 = phi i8 [ 1, %5 ], [ 0, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 10
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 51
  store i32 %8, ptr %11, align 8, !tbaa !145
  store i8 %9, ptr %10, align 8, !tbaa !161
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 12
  store i8 %5, ptr %6, align 2, !tbaa !146
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser31setValidationSchemaFullCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 13
  store i8 %5, ptr %6, align 1, !tbaa !147
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser29setIdentityConstraintCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 14
  store i8 %5, ptr %6, align 4, !tbaa !148
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 58
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !162
  %13 = icmp eq ptr %1, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %1, align 2, !tbaa !136
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !136
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !163

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false)
  br label %34

34:                                               ; preds = %2, %28
  %35 = phi ptr [ %33, %28 ], [ null, %2 ]
  store ptr %35, ptr %7, align 8, !tbaa !150
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !162
  %13 = icmp eq ptr %1, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %1, align 2, !tbaa !136
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !136
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !163

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false)
  br label %34

34:                                               ; preds = %2, %28
  %35 = phi ptr [ %33, %28 ], [ null, %2 ]
  store ptr %35, ptr %7, align 8, !tbaa !151
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 58
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !162
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12)
  store ptr %13, ptr %7, align 8, !tbaa !150
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !162
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12)
  store ptr %13, ptr %7, align 8, !tbaa !151
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setSecurityManagerEPNS_15SecurityManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !74, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #24
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 60
  store ptr %1, ptr %16, align 8, !tbaa !152
  %17 = icmp eq ptr %1, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !57
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 26
  store i32 %22, ptr %23, align 4, !tbaa !164
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 27
  store i32 0, ptr %24, align 8, !tbaa !165
  br label %25

25:                                               ; preds = %13, %18
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setLoadExternalDTDEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 17
  store i8 %5, ptr %6, align 1, !tbaa !153
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setCalculateSrcOfsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 1, !tbaa !154
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser24setStandardUriConformantEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 2
  store i8 %5, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 49, i32 9
  store i8 %5, ptr %7, align 8, !tbaa !166
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10useScannerEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4, ptr noundef %6, ptr noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %13)
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %15)
  %16 = load ptr, ptr %12, align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !57
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(776) %16) #24
  br label %22

22:                                               ; preds = %18, %11
  store ptr %9, ptr %12, align 8, !tbaa !95
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser19setCreateSchemaInfoEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  store i8 %3, ptr %4, align 2, !tbaa !77
  br i1 %1, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ null, %7 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %14, i64 0, i32 46
  store ptr %12, ptr %15, align 8, !tbaa !159
  br label %16

16:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20setIgnoreAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 22
  store i8 %5, ptr %6, align 4, !tbaa !156
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser33setDisableDefaultEntityResolutionEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 23
  store i8 %5, ptr %6, align 1, !tbaa !157
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20setSkipDTDValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 24
  store i8 %5, ptr %6, align 2, !tbaa !158
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11setDocumentEPNS_11DOMDocumentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #12 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  store ptr %1, ptr %3, align 8, !tbaa !87
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !74, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !81

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 508, i32 noundef 43, ptr noundef %9)
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
  store i8 1, ptr %3, align 1, !tbaa !74
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef nonnull align 1 %1)
          to label %34 unwind label %21, !prof !167

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
  store i8 0, ptr %3, align 1, !tbaa !74
  ret void

35:                                               ; preds = %31, %21
  %36 = phi ptr [ null, %31 ], [ @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv, %21 ]
  %37 = phi ptr [ null, %31 ], [ %0, %21 ]
  %38 = phi i32 [ %32, %31 ], [ %24, %21 ]
  %39 = phi ptr [ %33, %31 ], [ %23, %21 ]
  %40 = icmp eq ptr %37, null
  %41 = or i1 %26, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(200) %37)
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !74, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 529, i32 noundef 43, ptr noundef %9)
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
  store i8 1, ptr %3, align 1, !tbaa !74
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !95
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
  store i8 0, ptr %3, align 1, !tbaa !74
  ret void

32:                                               ; preds = %28, %18
  %33 = phi ptr [ null, %28 ], [ @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv, %18 ]
  %34 = phi ptr [ null, %28 ], [ %0, %18 ]
  %35 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %36 = phi ptr [ %30, %28 ], [ %20, %18 ]
  %37 = icmp eq ptr %34, null
  %38 = or i1 %23, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(200) %34)
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
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !74, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 550, i32 noundef 43, ptr noundef %9)
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
  store i8 1, ptr %3, align 1, !tbaa !74
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1)
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
  store i8 0, ptr %3, align 1, !tbaa !74
  ret void

32:                                               ; preds = %28, %18
  %33 = phi ptr [ null, %28 ], [ @_ZN11xercesc_2_717AbstractDOMParser15resetInProgressEv, %18 ]
  %34 = phi ptr [ null, %28 ], [ %0, %18 ]
  %35 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %36 = phi ptr [ %30, %28 ], [ %20, %18 ]
  %37 = icmp eq ptr %34, null
  %38 = or i1 %23, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(200) %34)
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

declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !74, !range !85, !noundef !86
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 580, i32 noundef 43, ptr noundef %10)
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !74, !range !85, !noundef !86
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 593, i32 noundef 43, ptr noundef %10)
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !74, !range !85, !noundef !86
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 43, ptr noundef %10)
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717AbstractDOMParser9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1)
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10parseResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1)
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 2, !tbaa !77, !range !85, !noundef !86
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %169, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %10, i64 noundef 72)
  tail call void @_ZN11xercesc_2_715DOMTypeInfoImplC1EPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef null, ptr noundef null)
  %12 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !168
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 0, i32 noundef %13)
  %17 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %3, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !172
  %19 = load ptr, ptr %11, align 8, !tbaa !57
  %20 = getelementptr inbounds ptr, ptr %19, i64 7
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 1, i32 noundef %18)
  %22 = load ptr, ptr %3, align 8, !tbaa !57
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %75, label %27

27:                                               ; preds = %8
  %28 = load ptr, ptr %3, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %32 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !173
  %34 = load ptr, ptr %11, align 8, !tbaa !57
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 2, i32 noundef %33)
  %37 = load ptr, ptr %3, align 8, !tbaa !57
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 7
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef zeroext i1 %43(ptr noundef nonnull align 8 dereferenceable(56) %40)
  %45 = zext i1 %44 to i32
  %46 = load ptr, ptr %11, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %46, i64 7
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 5, i32 noundef %45)
  %49 = load ptr, ptr %9, align 8, !tbaa !87
  %50 = load ptr, ptr %3, align 8, !tbaa !57
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(56) %53)
  %58 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %49, ptr noundef %57)
  %59 = load ptr, ptr %11, align 8, !tbaa !57
  %60 = getelementptr inbounds ptr, ptr %59, i64 6
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 4, ptr noundef %58)
  %62 = load ptr, ptr %9, align 8, !tbaa !87
  %63 = load ptr, ptr %3, align 8, !tbaa !57
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(56) %66)
  %71 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %62, ptr noundef %70)
  %72 = load ptr, ptr %11, align 8, !tbaa !57
  %73 = getelementptr inbounds ptr, ptr %72, i64 6
  %74 = load ptr, ptr %73, align 8
  tail call void %74(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 3, ptr noundef %71)
  br label %91

75:                                               ; preds = %8
  %76 = load i32, ptr %12, align 8, !tbaa !168
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load ptr, ptr %11, align 8, !tbaa !57
  %80 = getelementptr inbounds ptr, ptr %79, i64 7
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 2, i32 noundef 15)
  %82 = load ptr, ptr %11, align 8, !tbaa !57
  %83 = getelementptr inbounds ptr, ptr %82, i64 7
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 5, i32 noundef 0)
  %85 = load ptr, ptr %11, align 8, !tbaa !57
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 4, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  %88 = load ptr, ptr %11, align 8, !tbaa !57
  %89 = getelementptr inbounds ptr, ptr %88, i64 6
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE)
  br label %91

91:                                               ; preds = %75, %78, %27
  %92 = load ptr, ptr %3, align 8, !tbaa !57
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %96 = icmp eq ptr %95, null
  br i1 %96, label %136, label %97

97:                                               ; preds = %91
  %98 = load ptr, ptr %3, align 8, !tbaa !57
  %99 = getelementptr inbounds ptr, ptr %98, i64 3
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %102 = load ptr, ptr %101, align 8, !tbaa !57
  %103 = getelementptr inbounds ptr, ptr %102, i64 7
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef zeroext i1 %104(ptr noundef nonnull align 8 dereferenceable(128) %101)
  %106 = zext i1 %105 to i32
  %107 = load ptr, ptr %11, align 8, !tbaa !57
  %108 = getelementptr inbounds ptr, ptr %107, i64 7
  %109 = load ptr, ptr %108, align 8
  tail call void %109(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 9, i32 noundef %106)
  %110 = load ptr, ptr %9, align 8, !tbaa !87
  %111 = load ptr, ptr %3, align 8, !tbaa !57
  %112 = getelementptr inbounds ptr, ptr %111, i64 3
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  %116 = getelementptr inbounds ptr, ptr %115, i64 3
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(128) %114)
  %119 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %110, ptr noundef %118)
  %120 = load ptr, ptr %11, align 8, !tbaa !57
  %121 = getelementptr inbounds ptr, ptr %120, i64 6
  %122 = load ptr, ptr %121, align 8
  tail call void %122(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 8, ptr noundef %119)
  %123 = load ptr, ptr %9, align 8, !tbaa !87
  %124 = load ptr, ptr %3, align 8, !tbaa !57
  %125 = getelementptr inbounds ptr, ptr %124, i64 3
  %126 = load ptr, ptr %125, align 8
  %127 = tail call noundef ptr %126(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %128 = load ptr, ptr %127, align 8, !tbaa !57
  %129 = getelementptr inbounds ptr, ptr %128, i64 2
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(128) %127)
  %132 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %123, ptr noundef %131)
  %133 = load ptr, ptr %11, align 8, !tbaa !57
  %134 = getelementptr inbounds ptr, ptr %133, i64 6
  %135 = load ptr, ptr %134, align 8
  tail call void %135(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 7, ptr noundef %132)
  br label %136

136:                                              ; preds = %97, %91
  %137 = getelementptr inbounds %"class.xercesc_2_7::PSVIElement", ptr %3, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !178
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  %141 = tail call noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getNillableEv(ptr noundef nonnull align 8 dereferenceable(96) %138)
  %142 = zext i1 %141 to i32
  %143 = load ptr, ptr %11, align 8, !tbaa !57
  %144 = getelementptr inbounds ptr, ptr %143, i64 7
  %145 = load ptr, ptr %144, align 8
  tail call void %145(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 6, i32 noundef %142)
  br label %146

146:                                              ; preds = %140, %136
  %147 = load ptr, ptr %9, align 8, !tbaa !87
  %148 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %3, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !180
  %150 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %147, ptr noundef %149)
  %151 = load ptr, ptr %11, align 8, !tbaa !57
  %152 = getelementptr inbounds ptr, ptr %151, i64 6
  %153 = load ptr, ptr %152, align 8
  tail call void %153(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 10, ptr noundef %150)
  %154 = load ptr, ptr %9, align 8, !tbaa !87
  %155 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %3, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !181
  %157 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %154, ptr noundef %156)
  %158 = load ptr, ptr %11, align 8, !tbaa !57
  %159 = getelementptr inbounds ptr, ptr %158, i64 6
  %160 = load ptr, ptr %159, align 8
  tail call void %160(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 11, ptr noundef %157)
  %161 = load ptr, ptr %11, align 8, !tbaa !57
  %162 = getelementptr inbounds ptr, ptr %161, i64 7
  %163 = load ptr, ptr %162, align 8
  tail call void %163(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 12, i32 noundef 1)
  %164 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %165 = load ptr, ptr %164, align 8, !tbaa !182
  %166 = load ptr, ptr %165, align 8, !tbaa !57
  %167 = getelementptr inbounds ptr, ptr %166, i64 66
  %168 = load ptr, ptr %167, align 8
  tail call void %168(ptr noundef nonnull align 8 dereferenceable(128) %165, ptr noundef nonnull %11)
  br label %169

169:                                              ; preds = %146, %4
  %170 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %171 = load ptr, ptr %170, align 8, !tbaa !83
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %171, align 8, !tbaa !57
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8
  tail call void %176(ptr noundef nonnull align 8 dereferenceable(8) %171, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %177

177:                                              ; preds = %173, %169
  ret void
}

declare void @_ZN11xercesc_2_715DOMTypeInfoImplC1EPKtS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getNillableEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #18 align 2 !prof !55 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %12

12:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #18 align 2 !prof !55 {
  %5 = getelementptr inbounds i8, ptr %0, i64 160
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 2, !tbaa !77, !range !85, !noundef !86
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %175, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZNK11xercesc_2_717PSVIAttributeList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %175, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  br label %14

14:                                               ; preds = %11, %171
  %15 = phi i32 [ 0, %11 ], [ %172, %171 ]
  %16 = tail call noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributePSVIAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %15)
  %17 = load ptr, ptr %12, align 8, !tbaa !183
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %22 = tail call noundef ptr @_ZN11xercesc_2_717PSVIAttributeList28getAttributeNamespaceAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %15)
  %23 = tail call noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributeNameAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %15)
  %24 = load ptr, ptr %21, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %22, ptr noundef %23)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %171, label %29

29:                                               ; preds = %14
  %30 = load ptr, ptr %13, align 8, !tbaa !87
  %31 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %30, i64 noundef 72)
  tail call void @_ZN11xercesc_2_715DOMTypeInfoImplC1EPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr noundef null, ptr noundef null)
  %32 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %16, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !168
  %34 = load ptr, ptr %31, align 8, !tbaa !57
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 0, i32 noundef %33)
  %37 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %16, i64 0, i32 7
  %38 = load i32, ptr %37, align 4, !tbaa !172
  %39 = load ptr, ptr %31, align 8, !tbaa !57
  %40 = getelementptr inbounds ptr, ptr %39, i64 7
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 1, i32 noundef %38)
  %42 = load ptr, ptr %16, align 8, !tbaa !57
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %89, label %47

47:                                               ; preds = %29
  %48 = load ptr, ptr %31, align 8, !tbaa !57
  %49 = getelementptr inbounds ptr, ptr %48, i64 7
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 2, i32 noundef 16)
  %51 = load ptr, ptr %16, align 8, !tbaa !57
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = getelementptr inbounds ptr, ptr %55, i64 7
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef zeroext i1 %57(ptr noundef nonnull align 8 dereferenceable(56) %54)
  %59 = zext i1 %58 to i32
  %60 = load ptr, ptr %31, align 8, !tbaa !57
  %61 = getelementptr inbounds ptr, ptr %60, i64 7
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 5, i32 noundef %59)
  %63 = load ptr, ptr %13, align 8, !tbaa !87
  %64 = load ptr, ptr %16, align 8, !tbaa !57
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(56) %67)
  %72 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %63, ptr noundef %71)
  %73 = load ptr, ptr %31, align 8, !tbaa !57
  %74 = getelementptr inbounds ptr, ptr %73, i64 6
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 4, ptr noundef %72)
  %76 = load ptr, ptr %13, align 8, !tbaa !87
  %77 = load ptr, ptr %16, align 8, !tbaa !57
  %78 = getelementptr inbounds ptr, ptr %77, i64 2
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(56) %80)
  %85 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %76, ptr noundef %84)
  %86 = load ptr, ptr %31, align 8, !tbaa !57
  %87 = getelementptr inbounds ptr, ptr %86, i64 6
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 3, ptr noundef %85)
  br label %105

89:                                               ; preds = %29
  %90 = load i32, ptr %32, align 8, !tbaa !168
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load ptr, ptr %31, align 8, !tbaa !57
  %94 = getelementptr inbounds ptr, ptr %93, i64 7
  %95 = load ptr, ptr %94, align 8
  tail call void %95(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 2, i32 noundef 16)
  %96 = load ptr, ptr %31, align 8, !tbaa !57
  %97 = getelementptr inbounds ptr, ptr %96, i64 7
  %98 = load ptr, ptr %97, align 8
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 5, i32 noundef 0)
  %99 = load ptr, ptr %31, align 8, !tbaa !57
  %100 = getelementptr inbounds ptr, ptr %99, i64 6
  %101 = load ptr, ptr %100, align 8
  tail call void %101(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 4, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  %102 = load ptr, ptr %31, align 8, !tbaa !57
  %103 = getelementptr inbounds ptr, ptr %102, i64 6
  %104 = load ptr, ptr %103, align 8
  tail call void %104(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
  br label %105

105:                                              ; preds = %89, %92, %47
  %106 = load ptr, ptr %16, align 8, !tbaa !57
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %150, label %111

111:                                              ; preds = %105
  %112 = load ptr, ptr %16, align 8, !tbaa !57
  %113 = getelementptr inbounds ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %116 = load ptr, ptr %115, align 8, !tbaa !57
  %117 = getelementptr inbounds ptr, ptr %116, i64 7
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef zeroext i1 %118(ptr noundef nonnull align 8 dereferenceable(128) %115)
  %120 = zext i1 %119 to i32
  %121 = load ptr, ptr %31, align 8, !tbaa !57
  %122 = getelementptr inbounds ptr, ptr %121, i64 7
  %123 = load ptr, ptr %122, align 8
  tail call void %123(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 9, i32 noundef %120)
  %124 = load ptr, ptr %13, align 8, !tbaa !87
  %125 = load ptr, ptr %16, align 8, !tbaa !57
  %126 = getelementptr inbounds ptr, ptr %125, i64 3
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %129 = load ptr, ptr %128, align 8, !tbaa !57
  %130 = getelementptr inbounds ptr, ptr %129, i64 3
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(128) %128)
  %133 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %124, ptr noundef %132)
  %134 = load ptr, ptr %31, align 8, !tbaa !57
  %135 = getelementptr inbounds ptr, ptr %134, i64 6
  %136 = load ptr, ptr %135, align 8
  tail call void %136(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 8, ptr noundef %133)
  %137 = load ptr, ptr %13, align 8, !tbaa !87
  %138 = load ptr, ptr %16, align 8, !tbaa !57
  %139 = getelementptr inbounds ptr, ptr %138, i64 3
  %140 = load ptr, ptr %139, align 8
  %141 = tail call noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(96) %16)
  %142 = load ptr, ptr %141, align 8, !tbaa !57
  %143 = getelementptr inbounds ptr, ptr %142, i64 2
  %144 = load ptr, ptr %143, align 8
  %145 = tail call noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(128) %141)
  %146 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %137, ptr noundef %145)
  %147 = load ptr, ptr %31, align 8, !tbaa !57
  %148 = getelementptr inbounds ptr, ptr %147, i64 6
  %149 = load ptr, ptr %148, align 8
  tail call void %149(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 7, ptr noundef %146)
  br label %150

150:                                              ; preds = %111, %105
  %151 = load ptr, ptr %13, align 8, !tbaa !87
  %152 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %16, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !180
  %154 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %151, ptr noundef %153)
  %155 = load ptr, ptr %31, align 8, !tbaa !57
  %156 = getelementptr inbounds ptr, ptr %155, i64 6
  %157 = load ptr, ptr %156, align 8
  tail call void %157(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 10, ptr noundef %154)
  %158 = load ptr, ptr %13, align 8, !tbaa !87
  %159 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %16, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !181
  %161 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %158, ptr noundef %160)
  %162 = load ptr, ptr %31, align 8, !tbaa !57
  %163 = getelementptr inbounds ptr, ptr %162, i64 6
  %164 = load ptr, ptr %163, align 8
  tail call void %164(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 11, ptr noundef %161)
  %165 = load ptr, ptr %31, align 8, !tbaa !57
  %166 = getelementptr inbounds ptr, ptr %165, i64 7
  %167 = load ptr, ptr %166, align 8
  tail call void %167(ptr noundef nonnull align 8 dereferenceable(72) %31, i32 noundef 12, i32 noundef 1)
  %168 = load ptr, ptr %27, align 8, !tbaa !57
  %169 = getelementptr inbounds ptr, ptr %168, i64 49
  %170 = load ptr, ptr %169, align 8
  tail call void %170(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull %31)
  br label %171

171:                                              ; preds = %150, %14
  %172 = add nuw i32 %15, 1
  %173 = tail call noundef i32 @_ZNK11xercesc_2_717PSVIAttributeList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %14, label %175, !llvm.loop !184

175:                                              ; preds = %171, %8, %4
  %176 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 28
  %177 = load ptr, ptr %176, align 8, !tbaa !83
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %177, align 8, !tbaa !57
  %181 = getelementptr inbounds ptr, ptr %180, i64 4
  %182 = load ptr, ptr %181, align 8
  tail call void %182(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %183

183:                                              ; preds = %179, %175
  ret void
}

declare noundef i32 @_ZNK11xercesc_2_717PSVIAttributeList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributePSVIAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList28getAttributeNamespaceAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList23getAttributeNameAtIndexEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #18 align 2 !prof !55 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 2, !tbaa !73, !range !85, !noundef !86
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %4
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !136
  store i16 0, ptr %10, align 2, !tbaa !136
  br i1 %3, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(293) %14, ptr noundef %1)
  %19 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 17
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %18)
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %18, ptr %25, align 8, !tbaa !183
  br label %52

26:                                               ; preds = %8
  %27 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !183
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i16 %31(ptr noundef nonnull align 8 dereferenceable(8) %28)
  %33 = icmp eq i16 %32, 3
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load ptr, ptr %27, align 8, !tbaa !183
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds ptr, ptr %36, i64 43
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %1)
  br label %52

39:                                               ; preds = %26
  %40 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(293) %41, ptr noundef %1)
  %46 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !182
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = getelementptr inbounds ptr, ptr %48, i64 17
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %45)
  store ptr %45, ptr %27, align 8, !tbaa !183
  br label %52

52:                                               ; preds = %34, %39, %12
  store i16 %11, ptr %10, align 2, !tbaa !136
  br label %53

53:                                               ; preds = %4, %52
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 4, !tbaa !75, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %1)
  %13 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 17
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %12)
  %19 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %12, ptr %19, align 8, !tbaa !183
  br label %20

20:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %1, ptr noundef %2)
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds ptr, ptr %12, i64 17
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %9)
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %9, ptr %16, align 8, !tbaa !183
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !60, !range !85, !noundef !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %13 = icmp ne i16 %12, 5
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  %17 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %16)
  store ptr %17, ptr %7, align 8, !tbaa !182
  %18 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %17, ptr %18, align 8, !tbaa !183
  %19 = icmp eq ptr %14, null
  %20 = select i1 %13, i1 true, i1 %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load ptr, ptr %14, align 8, !tbaa !57
  %23 = getelementptr inbounds ptr, ptr %22, i64 40
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(88) %14, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %25

25:                                               ; preds = %6, %21, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !117
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !186

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #26
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #24
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %14 = add nsw i32 %3, -1
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %14)
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %14)
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture nonnull readnone align 8 %1, i32 %2, i1 zeroext %3, ptr nocapture readnone %4) unnamed_addr #4 align 2 !prof !55 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %7, ptr %8, align 8, !tbaa !183
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
  store ptr %11, ptr %6, align 8, !tbaa !182
  %12 = load ptr, ptr %9, align 8, !tbaa !90
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %12, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !117
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %17, align 2, !tbaa !73
  br label %18

18:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #19 align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i1 zeroext %3) unnamed_addr #4 align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 2, !tbaa !73, !range !85, !noundef !86
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !range !85
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %7, i1 true, i1 %10
  br i1 %11, label %45, label %12

12:                                               ; preds = %4
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i16, ptr %1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !136
  store i16 0, ptr %14, align 2, !tbaa !136
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !183
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef signext i16 %20(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load ptr, ptr %16, align 8, !tbaa !183
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds ptr, ptr %25, i64 43
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %1)
  br label %44

28:                                               ; preds = %12
  %29 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(293) %30, ptr noundef %1)
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds ptr, ptr %35, i64 53
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(56) %34, i1 noundef zeroext true)
  %38 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !182
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull %34)
  store ptr %34, ptr %16, align 8, !tbaa !183
  br label %44

44:                                               ; preds = %28, %23
  store i16 %15, ptr %14, align 2, !tbaa !136
  br label %45

45:                                               ; preds = %4, %44
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !81

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv()
  br label %9

7:                                                ; preds = %1
  %8 = tail call noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef nonnull %3)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %12 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = load ptr, ptr %10, align 8, !tbaa !57
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %13)
  store ptr %17, ptr %11, align 8, !tbaa !87
  %18 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %19 = icmp eq ptr %17, null
  %20 = getelementptr inbounds i8, ptr %17, i64 24
  %21 = select i1 %19, ptr null, ptr %20, !prof !88
  %22 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  store ptr %21, ptr %22, align 8, !tbaa !182
  %23 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %21, ptr %23, align 8, !tbaa !183
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %17, i64 0, i32 27
  store i8 0, ptr %24, align 4, !tbaa !187
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %26, i64 0, i32 49
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27), !prof !198
  %32 = load ptr, ptr %17, align 8, !tbaa !57
  %33 = getelementptr inbounds ptr, ptr %32, i64 29
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(293) %17, ptr noundef %31), !prof !199
  %35 = load ptr, ptr %18, align 8, !tbaa !87
  %36 = load ptr, ptr %25, align 8, !tbaa !95
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %36, i64 0, i32 49
  %38 = tail call noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80) %37)
  %39 = load ptr, ptr %35, align 8, !tbaa !57
  %40 = getelementptr inbounds ptr, ptr %39, i64 21
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(293) %35, ptr noundef %38), !prof !200
  ret void
}

declare noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %3, i64 0, i32 27
  store i8 1, ptr %4, align 4, !tbaa !187
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8, !prof !81

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %10, i64 0, i32 4
  %12 = load i8, ptr %11, align 2, !tbaa !140, !range !85, !noundef !86
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %6, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 51
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(130) %6, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %18

18:                                               ; preds = %14, %8, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %1, align 8, !tbaa !57
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(33) %1)
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr %17(ptr noundef nonnull align 8 dereferenceable(33) %1)
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi ptr [ %18, %14 ], [ null, %8 ]
  %21 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %22, i64 0, i32 4
  %24 = load i8, ptr %23, align 2, !tbaa !140, !range !85, !noundef !86
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %92, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %22, i64 0, i32 28
  %28 = load i32, ptr %27, align 4, !tbaa !202
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %83, label %30

30:                                               ; preds = %26
  %31 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %22, i32 noundef %2)
  %32 = icmp eq ptr %3, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %30
  %34 = load i16, ptr %3, align 2, !tbaa !136
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %38 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %37)
  store i32 0, ptr %38, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull %3)
          to label %39 unwind label %69

39:                                               ; preds = %36
  %40 = load i32, ptr %38, align 8, !tbaa !134
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !203
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1)
          to label %45 unwind label %69

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %38, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !135
  %48 = load i32, ptr %38, align 8, !tbaa !134
  %49 = add i32 %48, 1
  store i32 %49, ptr %38, align 8, !tbaa !134
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i16, ptr %47, i64 %50
  store i16 58, ptr %51, align 2, !tbaa !136
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !204
  %54 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef %55)
          to label %56 unwind label %69

56:                                               ; preds = %45
  %57 = load ptr, ptr %46, align 8, !tbaa !135
  %58 = load i32, ptr %38, align 8, !tbaa !134
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  store i16 0, ptr %60, align 2, !tbaa !136
  %61 = load ptr, ptr %0, align 8, !tbaa !57
  %62 = getelementptr inbounds ptr, ptr %61, i64 35
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %31, ptr noundef %57)
          to label %65 unwind label %69

65:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(40) %38)
          to label %102 unwind label %66

66:                                               ; preds = %65
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #25
  unreachable

69:                                               ; preds = %45, %36, %44, %56
  %70 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(40) %38)
          to label %418 unwind label %71

71:                                               ; preds = %69
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  tail call void @__clang_call_terminate(ptr %73) #25
  unreachable

74:                                               ; preds = %33, %30
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !204
  %77 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !207
  %79 = load ptr, ptr %0, align 8, !tbaa !57
  %80 = getelementptr inbounds ptr, ptr %79, i64 35
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %31, ptr noundef %78)
  br label %102

83:                                               ; preds = %26
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !204
  %86 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !207
  %88 = load ptr, ptr %0, align 8, !tbaa !57
  %89 = getelementptr inbounds ptr, ptr %88, i64 35
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef null, ptr noundef %87)
  br label %102

92:                                               ; preds = %19
  %93 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !87
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !204
  %97 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %96)
  %98 = load ptr, ptr %94, align 8, !tbaa !57
  %99 = getelementptr inbounds ptr, ptr %98, i64 3
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(293) %94, ptr noundef %97)
  br label %102

102:                                              ; preds = %65, %83, %74, %92
  %103 = phi ptr [ %101, %92 ], [ %82, %74 ], [ %91, %83 ], [ %64, %65 ]
  %104 = icmp eq i32 %5, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %107 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %108 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %109 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2
  %110 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  br label %124

111:                                              ; preds = %243, %102
  %112 = icmp eq ptr %20, null
  br i1 %112, label %393, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr %20, align 8, !tbaa !57
  %115 = getelementptr inbounds ptr, ptr %114, i64 13
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef i32 %116(ptr noundef nonnull align 8 dereferenceable(16) %20)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %393, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %121 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %122 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %123 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 11
  br label %246

124:                                              ; preds = %105, %243
  %125 = phi i32 [ 0, %105 ], [ %244, %243 ]
  %126 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %125)
  %127 = load ptr, ptr %21, align 8, !tbaa !95
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %127, i64 0, i32 4
  %129 = load i8, ptr %128, align 2, !tbaa !140, !range !85, !noundef !86
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %175, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %126, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !209
  %134 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %133, i64 0, i32 4
  %135 = load i32, ptr %134, align 4, !tbaa !212
  %136 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %133, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !207
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %131
  %140 = load i16, ptr %137, align 2, !tbaa !136
  %141 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !136
  %142 = icmp eq i16 %140, %141
  br i1 %142, label %146, label %160

143:                                              ; preds = %131
  %144 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !136
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %157, label %160

146:                                              ; preds = %139, %151
  %147 = phi i16 [ %154, %151 ], [ %140, %139 ]
  %148 = phi ptr [ %153, %151 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %139 ]
  %149 = phi ptr [ %152, %151 ], [ %137, %139 ]
  %150 = icmp eq i16 %147, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds i16, ptr %149, i64 1
  %153 = getelementptr inbounds i16, ptr %148, i64 1
  %154 = load i16, ptr %152, align 2, !tbaa !136
  %155 = load i16, ptr %153, align 2, !tbaa !136
  %156 = icmp eq i16 %154, %155
  br i1 %156, label %146, label %160, !llvm.loop !213

157:                                              ; preds = %146, %143
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %127, i64 0, i32 31
  %159 = load i32, ptr %158, align 8, !tbaa !214
  br label %160

160:                                              ; preds = %151, %139, %157, %143
  %161 = phi i32 [ %159, %157 ], [ %135, %143 ], [ %135, %139 ], [ %135, %151 ]
  %162 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %127, i64 0, i32 28
  %163 = load i32, ptr %162, align 4, !tbaa !202
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %127, i32 noundef %161)
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi ptr [ %166, %165 ], [ null, %160 ]
  %169 = load ptr, ptr %106, align 8, !tbaa !87
  %170 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %126)
  %171 = load ptr, ptr %169, align 8, !tbaa !57
  %172 = getelementptr inbounds ptr, ptr %171, i64 17
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(293) %169, ptr noundef %168, ptr noundef %170)
  br label %185

175:                                              ; preds = %124
  %176 = load ptr, ptr %107, align 8, !tbaa !87
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %126, i64 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !209
  %179 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %178, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !207
  %181 = load ptr, ptr %176, align 8, !tbaa !57
  %182 = getelementptr inbounds ptr, ptr %181, i64 9
  %183 = load ptr, ptr %182, align 8
  %184 = tail call noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(293) %176, ptr noundef %180)
  br label %185

185:                                              ; preds = %175, %167
  %186 = phi i64 [ 45, %175 ], [ 52, %167 ]
  %187 = phi ptr [ %184, %175 ], [ %174, %167 ]
  %188 = load ptr, ptr %103, align 8, !tbaa !57
  %189 = getelementptr inbounds ptr, ptr %188, i64 %186
  %190 = load ptr, ptr %189, align 8
  %191 = tail call noundef ptr %190(ptr noundef nonnull align 8 dereferenceable(96) %103, ptr noundef %187)
  %192 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %126, i64 0, i32 5
  %193 = load ptr, ptr %192, align 8, !tbaa !215
  %194 = load ptr, ptr %187, align 8, !tbaa !57
  %195 = getelementptr inbounds ptr, ptr %194, i64 43
  %196 = load ptr, ptr %195, align 8
  tail call void %196(ptr noundef nonnull align 8 dereferenceable(72) %187, ptr noundef %193)
  %197 = icmp eq ptr %191, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %185
  %199 = load ptr, ptr %191, align 8, !tbaa !57
  %200 = getelementptr inbounds ptr, ptr %199, i64 39
  %201 = load ptr, ptr %200, align 8
  tail call void %201(ptr noundef nonnull align 8 dereferenceable(8) %191)
  br label %202

202:                                              ; preds = %198, %185
  %203 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %126, i64 0, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !216
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %223

206:                                              ; preds = %202
  %207 = load ptr, ptr %108, align 8, !tbaa !87
  %208 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %207, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !217
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %207, i64 noundef 56)
  %213 = load ptr, ptr %108, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %212, i32 noundef 500, ptr noundef %213)
  %214 = load ptr, ptr %108, align 8, !tbaa !87
  %215 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %214, i64 0, i32 3
  store ptr %212, ptr %215, align 8, !tbaa !217
  br label %216

216:                                              ; preds = %211, %206
  %217 = load ptr, ptr %108, align 8, !tbaa !87
  %218 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !217
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %219, ptr noundef nonnull %187)
  %220 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %187, i64 0, i32 1, i32 1
  %221 = load i16, ptr %220, align 8, !tbaa !218
  %222 = or i16 %109, %221
  store i16 %222, ptr %220, align 8, !tbaa !218
  br label %223

223:                                              ; preds = %216, %202
  %224 = load i8, ptr %126, align 8, !tbaa !219, !range !85, !noundef !86
  %225 = icmp ne i8 %224, 0
  %226 = load ptr, ptr %187, align 8, !tbaa !57
  %227 = getelementptr inbounds ptr, ptr %226, i64 47
  %228 = load ptr, ptr %227, align 8
  tail call void %228(ptr noundef nonnull align 8 dereferenceable(72) %187, i1 noundef zeroext %225)
  %229 = load i8, ptr %110, align 2, !tbaa !77, !range !85, !noundef !86
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %243, label %231

231:                                              ; preds = %223
  %232 = load i32, ptr %203, align 4, !tbaa !216
  %233 = load ptr, ptr %187, align 8, !tbaa !57
  %234 = getelementptr inbounds ptr, ptr %233, i64 49
  %235 = load ptr, ptr %234, align 8
  %236 = icmp ult i32 %232, 10
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = zext nneg i32 %232 to i64
  %239 = getelementptr inbounds [10 x ptr], ptr @switch.table._ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb.4, i64 0, i64 %238
  %240 = load ptr, ptr %239, align 8
  br label %241

241:                                              ; preds = %231, %237
  %242 = phi ptr [ %240, %237 ], [ @_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE, %231 ]
  tail call void %235(ptr noundef nonnull align 8 dereferenceable(72) %187, ptr noundef nonnull %242)
  br label %243

243:                                              ; preds = %241, %223
  %244 = add nuw i32 %125, 1
  %245 = icmp eq i32 %244, %5
  br i1 %245, label %111, label %124, !llvm.loop !220

246:                                              ; preds = %119, %383
  %247 = phi i32 [ 0, %119 ], [ %387, %383 ]
  %248 = load ptr, ptr %20, align 8, !tbaa !57
  %249 = getelementptr inbounds ptr, ptr %248, i64 14
  %250 = load ptr, ptr %249, align 8
  %251 = call noundef nonnull align 8 dereferenceable(56) ptr %250(ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef %247)
  %252 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %251, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !221
  %254 = icmp ult i32 %253, 2
  br i1 %254, label %255, label %383

255:                                              ; preds = %246
  %256 = load ptr, ptr %21, align 8, !tbaa !95
  %257 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %256, i64 0, i32 4
  %258 = load i8, ptr %257, align 2, !tbaa !140, !range !85, !noundef !86
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %336, label %260

260:                                              ; preds = %255
  %261 = load ptr, ptr %251, align 8, !tbaa !57
  %262 = getelementptr inbounds ptr, ptr %261, i64 5
  %263 = load ptr, ptr %262, align 8
  %264 = call noundef ptr %263(ptr noundef nonnull align 8 dereferenceable(56) %251)
  %265 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #24
  store i32 -1, ptr %9, align 4, !tbaa !225
  %266 = load ptr, ptr %21, align 8, !tbaa !95
  %267 = load ptr, ptr %266, align 8, !tbaa !57
  %268 = getelementptr inbounds ptr, ptr %267, i64 7
  %269 = load ptr, ptr %268, align 8
  %270 = invoke noundef i32 %269(ptr noundef nonnull align 8 dereferenceable(776) %266, ptr noundef %264, ptr noundef nonnull align 8 dereferenceable(40) %265, i16 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %271 unwind label %295

271:                                              ; preds = %260
  %272 = icmp eq ptr %264, null
  br i1 %272, label %277, label %273

273:                                              ; preds = %271
  %274 = load i16, ptr %264, align 2, !tbaa !136
  %275 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !136
  %276 = icmp eq i16 %274, %275
  br i1 %276, label %280, label %299

277:                                              ; preds = %271
  %278 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !136
  %279 = icmp eq i16 %278, 0
  br i1 %279, label %291, label %299

280:                                              ; preds = %273, %285
  %281 = phi i16 [ %288, %285 ], [ %274, %273 ]
  %282 = phi ptr [ %287, %285 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %273 ]
  %283 = phi ptr [ %286, %285 ], [ %264, %273 ]
  %284 = icmp eq i16 %281, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds i16, ptr %283, i64 1
  %287 = getelementptr inbounds i16, ptr %282, i64 1
  %288 = load i16, ptr %286, align 2, !tbaa !136
  %289 = load i16, ptr %287, align 2, !tbaa !136
  %290 = icmp eq i16 %288, %289
  br i1 %290, label %280, label %299, !llvm.loop !213

291:                                              ; preds = %280, %277
  %292 = load ptr, ptr %21, align 8, !tbaa !95
  %293 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %292, i64 0, i32 31
  %294 = load i32, ptr %293, align 8, !tbaa !214
  br label %299

295:                                              ; preds = %260
  %296 = landingpad { ptr, i32 }
          cleanup
  br label %331

297:                                              ; preds = %307, %305
  %298 = landingpad { ptr, i32 }
          cleanup
  br label %331

299:                                              ; preds = %285, %273, %291, %277
  %300 = phi i32 [ %294, %291 ], [ %270, %277 ], [ %270, %273 ], [ %270, %285 ]
  %301 = load ptr, ptr %21, align 8, !tbaa !95
  %302 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %301, i64 0, i32 28
  %303 = load i32, ptr %302, align 4, !tbaa !202
  %304 = icmp eq i32 %300, %303
  br i1 %304, label %307, label %305

305:                                              ; preds = %299
  %306 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %301, i32 noundef %300)
          to label %307 unwind label %297

307:                                              ; preds = %305, %299
  %308 = phi ptr [ null, %299 ], [ %306, %305 ]
  %309 = load ptr, ptr %121, align 8, !tbaa !87
  %310 = load ptr, ptr %309, align 8, !tbaa !57
  %311 = getelementptr inbounds ptr, ptr %310, i64 17
  %312 = load ptr, ptr %311, align 8
  %313 = invoke noundef ptr %312(ptr noundef nonnull align 8 dereferenceable(293) %309, ptr noundef %308, ptr noundef %264)
          to label %314 unwind label %297

314:                                              ; preds = %307
  %315 = load ptr, ptr %103, align 8, !tbaa !57
  %316 = getelementptr inbounds ptr, ptr %315, i64 62
  %317 = load ptr, ptr %316, align 8
  %318 = invoke noundef ptr %317(ptr noundef nonnull align 8 dereferenceable(96) %103, ptr noundef %313)
          to label %319 unwind label %325

319:                                              ; preds = %314
  %320 = icmp eq ptr %318, null
  br i1 %320, label %327, label %321

321:                                              ; preds = %319
  %322 = load ptr, ptr %318, align 8, !tbaa !57
  %323 = getelementptr inbounds ptr, ptr %322, i64 39
  %324 = load ptr, ptr %323, align 8
  invoke void %324(ptr noundef nonnull align 8 dereferenceable(8) %318)
          to label %327 unwind label %325

325:                                              ; preds = %321, %314
  %326 = landingpad { ptr, i32 }
          cleanup
  br label %331

327:                                              ; preds = %321, %319
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #24
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %120, ptr noundef nonnull align 8 dereferenceable(40) %265)
          to label %355 unwind label %328

328:                                              ; preds = %327
  %329 = landingpad { ptr, i32 }
          catch ptr null
  %330 = extractvalue { ptr, i32 } %329, 0
  call void @__clang_call_terminate(ptr %330) #25
  unreachable

331:                                              ; preds = %297, %325, %295
  %332 = phi { ptr, i32 } [ %296, %295 ], [ %326, %325 ], [ %298, %297 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #24
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %120, ptr noundef nonnull align 8 dereferenceable(40) %265)
          to label %418 unwind label %333

333:                                              ; preds = %331
  %334 = landingpad { ptr, i32 }
          catch ptr null
  %335 = extractvalue { ptr, i32 } %334, 0
  call void @__clang_call_terminate(ptr %335) #25
  unreachable

336:                                              ; preds = %255
  %337 = load ptr, ptr %122, align 8, !tbaa !87
  %338 = load ptr, ptr %251, align 8, !tbaa !57
  %339 = getelementptr inbounds ptr, ptr %338, i64 5
  %340 = load ptr, ptr %339, align 8
  %341 = call noundef ptr %340(ptr noundef nonnull align 8 dereferenceable(56) %251)
  %342 = load ptr, ptr %337, align 8, !tbaa !57
  %343 = getelementptr inbounds ptr, ptr %342, i64 9
  %344 = load ptr, ptr %343, align 8
  %345 = call noundef ptr %344(ptr noundef nonnull align 8 dereferenceable(293) %337, ptr noundef %341)
  %346 = load ptr, ptr %103, align 8, !tbaa !57
  %347 = getelementptr inbounds ptr, ptr %346, i64 61
  %348 = load ptr, ptr %347, align 8
  %349 = call noundef ptr %348(ptr noundef nonnull align 8 dereferenceable(96) %103, ptr noundef %345)
  %350 = icmp eq ptr %349, null
  br i1 %350, label %355, label %351

351:                                              ; preds = %336
  %352 = load ptr, ptr %349, align 8, !tbaa !57
  %353 = getelementptr inbounds ptr, ptr %352, i64 39
  %354 = load ptr, ptr %353, align 8
  call void %354(ptr noundef nonnull align 8 dereferenceable(8) %349)
  br label %355

355:                                              ; preds = %327, %336, %351
  %356 = phi ptr [ %345, %351 ], [ %345, %336 ], [ %313, %327 ]
  %357 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %251, i64 0, i32 7
  %358 = load ptr, ptr %357, align 8, !tbaa !226
  %359 = icmp eq ptr %358, null
  br i1 %359, label %367, label %360

360:                                              ; preds = %355
  %361 = load ptr, ptr %356, align 8, !tbaa !57
  %362 = getelementptr inbounds ptr, ptr %361, i64 43
  %363 = load ptr, ptr %362, align 8
  call void %363(ptr noundef nonnull align 8 dereferenceable(72) %356, ptr noundef nonnull %358)
  %364 = load ptr, ptr %356, align 8, !tbaa !57
  %365 = getelementptr inbounds ptr, ptr %364, i64 47
  %366 = load ptr, ptr %365, align 8
  call void %366(ptr noundef nonnull align 8 dereferenceable(72) %356, i1 noundef zeroext false)
  br label %367

367:                                              ; preds = %360, %355
  %368 = load i8, ptr %123, align 2, !tbaa !77, !range !85, !noundef !86
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %251, i64 0, i32 2
  %372 = load i32, ptr %371, align 4, !tbaa !227
  %373 = load ptr, ptr %356, align 8, !tbaa !57
  %374 = getelementptr inbounds ptr, ptr %373, i64 49
  %375 = load ptr, ptr %374, align 8
  %376 = icmp ult i32 %372, 10
  br i1 %376, label %377, label %381

377:                                              ; preds = %370
  %378 = zext nneg i32 %372 to i64
  %379 = getelementptr inbounds [10 x ptr], ptr @switch.table._ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb.4, i64 0, i64 %378
  %380 = load ptr, ptr %379, align 8
  br label %381

381:                                              ; preds = %370, %377
  %382 = phi ptr [ %380, %377 ], [ @_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE, %370 ]
  call void %375(ptr noundef nonnull align 8 dereferenceable(72) %356, ptr noundef nonnull %382)
  br label %383

383:                                              ; preds = %381, %367, %246
  %384 = load ptr, ptr %251, align 8, !tbaa !57
  %385 = getelementptr inbounds ptr, ptr %384, i64 6
  %386 = load ptr, ptr %385, align 8
  call void %386(ptr noundef nonnull align 8 dereferenceable(56) %251)
  %387 = add nuw i32 %247, 1
  %388 = load ptr, ptr %20, align 8, !tbaa !57
  %389 = getelementptr inbounds ptr, ptr %388, i64 13
  %390 = load ptr, ptr %389, align 8
  %391 = call noundef i32 %390(ptr noundef nonnull align 8 dereferenceable(16) %20)
  %392 = icmp ult i32 %387, %391
  br i1 %392, label %246, label %393, !llvm.loop !228

393:                                              ; preds = %383, %113, %111
  %394 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %395 = load ptr, ptr %394, align 8, !tbaa !182
  %396 = load ptr, ptr %395, align 8, !tbaa !57
  %397 = getelementptr inbounds ptr, ptr %396, i64 17
  %398 = load ptr, ptr %397, align 8
  %399 = call noundef ptr %398(ptr noundef nonnull align 8 dereferenceable(8) %395, ptr noundef %103)
  %400 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %401 = load ptr, ptr %400, align 8, !tbaa !90
  %402 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %401, i64 0, i32 1
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %402, i32 noundef 1)
  %403 = load ptr, ptr %394, align 8, !tbaa !82
  %404 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %401, i64 0, i32 1, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !93
  %406 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %401, i64 0, i32 1, i32 1
  %407 = load i32, ptr %406, align 4, !tbaa !117
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds ptr, ptr %405, i64 %408
  store ptr %403, ptr %409, align 8, !tbaa !82
  %410 = add i32 %407, 1
  store i32 %410, ptr %406, align 4, !tbaa !117
  store ptr %103, ptr %394, align 8, !tbaa !182
  %411 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %103, ptr %411, align 8, !tbaa !183
  %412 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 1, ptr %412, align 2, !tbaa !73
  br i1 %6, label %413, label %417

413:                                              ; preds = %393
  %414 = load ptr, ptr %0, align 8, !tbaa !57
  %415 = getelementptr inbounds ptr, ptr %414, i64 6
  %416 = load ptr, ptr %415, align 8
  call void %416(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %7, ptr noundef %3)
  br label %417

417:                                              ; preds = %413, %393
  ret void

418:                                              ; preds = %331, %69
  %419 = phi { ptr, i32 } [ %70, %69 ], [ %332, %331 ]
  resume { ptr, i32 } %419
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !230
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !232

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !233
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !234
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  ret ptr %18
}

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !235
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds ptr, ptr %7, i64 41
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(130) %6)
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %4)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %18, i64 0, i32 49
  %20 = tail call noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80) %19)
  %21 = load ptr, ptr %14, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 44
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(129) %14, ptr noundef %20)
  br label %24

24:                                               ; preds = %16, %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 16
  store ptr %14, ptr %25, align 8, !tbaa !237
  %26 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 5
  %27 = load i8, ptr %26, align 8, !tbaa !60, !range !85, !noundef !86
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl29createEntityReferenceByParserEPKt(ptr noundef nonnull align 8 dereferenceable(293) %31, ptr noundef %4)
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds ptr, ptr %33, i64 40
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(88) %32, i1 noundef zeroext false, i1 noundef zeroext true)
  %36 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !182
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = getelementptr inbounds ptr, ptr %38, i64 17
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %32)
  %42 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %44, i32 noundef 1)
  %45 = load ptr, ptr %36, align 8, !tbaa !82
  %46 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !93
  %48 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %43, i64 0, i32 1, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !117
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50
  store ptr %45, ptr %51, align 8, !tbaa !82
  %52 = add i32 %49, 1
  store i32 %52, ptr %48, align 4, !tbaa !117
  store ptr %32, ptr %36, align 8, !tbaa !182
  %53 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %32, ptr %53, align 8, !tbaa !183
  br i1 %15, label %58, label %54

54:                                               ; preds = %29
  %55 = load ptr, ptr %14, align 8, !tbaa !57
  %56 = getelementptr inbounds ptr, ptr %55, i64 52
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(129) %14, ptr noundef nonnull %32)
  br label %58

58:                                               ; preds = %29, %54, %24
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl29createEntityReferenceByParserEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !56 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %3, null
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgYesStringE, align 2, !tbaa !136
  br i1 %8, label %13, label %10, !prof !88

10:                                               ; preds = %5
  %11 = load i16, ptr %3, align 2, !tbaa !136
  %12 = icmp eq i16 %9, %11
  br i1 %12, label %15, label %26, !prof !88

13:                                               ; preds = %5
  %14 = icmp eq i16 %9, 0
  br label %26

15:                                               ; preds = %10, %20
  %16 = phi i16 [ %23, %20 ], [ %9, %10 ]
  %17 = phi ptr [ %22, %20 ], [ %3, %10 ]
  %18 = phi ptr [ %21, %20 ], [ @_ZN11xercesc_2_76XMLUni11fgYesStringE, %10 ]
  %19 = icmp eq i16 %16, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i16, ptr %18, i64 1
  %22 = getelementptr inbounds i16, ptr %17, i64 1
  %23 = load i16, ptr %21, align 2, !tbaa !136
  %24 = load i16, ptr %22, align 2, !tbaa !136
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %15, label %26, !prof !88, !llvm.loop !213

26:                                               ; preds = %15, %20, %10, %13
  %27 = phi i1 [ %14, %13 ], [ false, %10 ], [ %19, %20 ], [ %19, %15 ]
  %28 = load ptr, ptr %7, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 25
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(293) %7, i1 noundef zeroext %27), !prof !238
  %31 = load ptr, ptr %6, align 8, !tbaa !87
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds ptr, ptr %32, i64 27
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(293) %31, ptr noundef %1), !prof !239
  %35 = load ptr, ptr %6, align 8, !tbaa !87
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds ptr, ptr %36, i64 23
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(293) %35, ptr noundef %2), !prof !240
  %39 = load ptr, ptr %6, align 8, !tbaa !87
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds ptr, ptr %40, i64 21
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(293) %39, ptr noundef %4), !prof !200
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds ptr, ptr %6, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %1, ptr noundef %2)
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser15getDoValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #16 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 8, !tbaa !145
  %6 = icmp eq i32 %5, 1
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser15setDoValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 8, !tbaa !161
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 51
  %8 = zext i1 %1 to i32
  store i32 %8, ptr %7, align 8, !tbaa !145
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #4 align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %6)
  br i1 %7, label %8, label %321

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %12, label %13, label %321

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %15 = load ptr, ptr %14, align 8, !tbaa !133
  %16 = load ptr, ptr %2, align 8, !tbaa !57
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(72) %2)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %19)
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !227
  switch i32 %21, label %242 [
    i32 0, label %22
    i32 1, label %37
    i32 2, label %52
    i32 3, label %67
    i32 4, label %82
    i32 5, label %97
    i32 6, label %112
    i32 7, label %127
    i32 8, label %142
    i32 9, label %157
  ]

22:                                               ; preds = %13
  %23 = load ptr, ptr %14, align 8, !tbaa !133
  %24 = load i32, ptr %23, align 8, !tbaa !134
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %23, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !203
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 1)
  br label %29

29:                                               ; preds = %22, %28
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %23, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !135
  %32 = load i32, ptr %23, align 8, !tbaa !134
  %33 = add i32 %32, 1
  store i32 %33, ptr %23, align 8, !tbaa !134
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i16, ptr %31, i64 %34
  store i16 32, ptr %35, align 2, !tbaa !136
  %36 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgCDATAStringE)
  br label %242

37:                                               ; preds = %13
  %38 = load ptr, ptr %14, align 8, !tbaa !133
  %39 = load i32, ptr %38, align 8, !tbaa !134
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !203
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1)
  br label %44

44:                                               ; preds = %37, %43
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %38, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !135
  %47 = load i32, ptr %38, align 8, !tbaa !134
  %48 = add i32 %47, 1
  store i32 %48, ptr %38, align 8, !tbaa !134
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i16, ptr %46, i64 %49
  store i16 32, ptr %50, align 2, !tbaa !136
  %51 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %51, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgIDStringE)
  br label %242

52:                                               ; preds = %13
  %53 = load ptr, ptr %14, align 8, !tbaa !133
  %54 = load i32, ptr %53, align 8, !tbaa !134
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %53, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !203
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 1)
  br label %59

59:                                               ; preds = %52, %58
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %53, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !135
  %62 = load i32, ptr %53, align 8, !tbaa !134
  %63 = add i32 %62, 1
  store i32 %63, ptr %53, align 8, !tbaa !134
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i16, ptr %61, i64 %64
  store i16 32, ptr %65, align 2, !tbaa !136
  %66 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %66, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgIDRefStringE)
  br label %242

67:                                               ; preds = %13
  %68 = load ptr, ptr %14, align 8, !tbaa !133
  %69 = load i32, ptr %68, align 8, !tbaa !134
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %68, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !203
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef 1)
  br label %74

74:                                               ; preds = %67, %73
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %68, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !135
  %77 = load i32, ptr %68, align 8, !tbaa !134
  %78 = add i32 %77, 1
  store i32 %78, ptr %68, align 8, !tbaa !134
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i16, ptr %76, i64 %79
  store i16 32, ptr %80, align 2, !tbaa !136
  %81 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIDRefsStringE)
  br label %242

82:                                               ; preds = %13
  %83 = load ptr, ptr %14, align 8, !tbaa !133
  %84 = load i32, ptr %83, align 8, !tbaa !134
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %83, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !203
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %83, i32 noundef 1)
  br label %89

89:                                               ; preds = %82, %88
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %83, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !135
  %92 = load i32, ptr %83, align 8, !tbaa !134
  %93 = add i32 %92, 1
  store i32 %93, ptr %83, align 8, !tbaa !134
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i16, ptr %91, i64 %94
  store i16 32, ptr %95, align 2, !tbaa !136
  %96 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %96, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE)
  br label %242

97:                                               ; preds = %13
  %98 = load ptr, ptr %14, align 8, !tbaa !133
  %99 = load i32, ptr %98, align 8, !tbaa !134
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %98, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !203
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %98, i32 noundef 1)
  br label %104

104:                                              ; preds = %97, %103
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %98, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !135
  %107 = load i32, ptr %98, align 8, !tbaa !134
  %108 = add i32 %107, 1
  store i32 %108, ptr %98, align 8, !tbaa !134
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i16, ptr %106, i64 %109
  store i16 32, ptr %110, align 2, !tbaa !136
  %111 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %111, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgEntitiesStringE)
  br label %242

112:                                              ; preds = %13
  %113 = load ptr, ptr %14, align 8, !tbaa !133
  %114 = load i32, ptr %113, align 8, !tbaa !134
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %113, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !203
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %113, i32 noundef 1)
  br label %119

119:                                              ; preds = %112, %118
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %113, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !135
  %122 = load i32, ptr %113, align 8, !tbaa !134
  %123 = add i32 %122, 1
  store i32 %123, ptr %113, align 8, !tbaa !134
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds i16, ptr %121, i64 %124
  store i16 32, ptr %125, align 2, !tbaa !136
  %126 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %126, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE)
  br label %242

127:                                              ; preds = %13
  %128 = load ptr, ptr %14, align 8, !tbaa !133
  %129 = load i32, ptr %128, align 8, !tbaa !134
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %128, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !203
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %128, i32 noundef 1)
  br label %134

134:                                              ; preds = %127, %133
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %128, i64 0, i32 6
  %136 = load ptr, ptr %135, align 8, !tbaa !135
  %137 = load i32, ptr %128, align 8, !tbaa !134
  %138 = add i32 %137, 1
  store i32 %138, ptr %128, align 8, !tbaa !134
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i16, ptr %136, i64 %139
  store i16 32, ptr %140, align 2, !tbaa !136
  %141 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %141, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNmTokensStringE)
  br label %242

142:                                              ; preds = %13
  %143 = load ptr, ptr %14, align 8, !tbaa !133
  %144 = load i32, ptr %143, align 8, !tbaa !134
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %143, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !203
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %143, i32 noundef 1)
  br label %149

149:                                              ; preds = %142, %148
  %150 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %143, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !135
  %152 = load i32, ptr %143, align 8, !tbaa !134
  %153 = add i32 %152, 1
  store i32 %153, ptr %143, align 8, !tbaa !134
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i16, ptr %151, i64 %154
  store i16 32, ptr %155, align 2, !tbaa !136
  %156 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %156, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE)
  br label %242

157:                                              ; preds = %13
  %158 = load ptr, ptr %14, align 8, !tbaa !133
  %159 = load i32, ptr %158, align 8, !tbaa !134
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %158, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !203
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %158, i32 noundef 1)
  br label %164

164:                                              ; preds = %157, %163
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %158, i64 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !135
  %167 = load i32, ptr %158, align 8, !tbaa !134
  %168 = add i32 %167, 1
  store i32 %168, ptr %158, align 8, !tbaa !134
  %169 = zext i32 %167 to i64
  %170 = getelementptr inbounds i16, ptr %166, i64 %169
  store i16 32, ptr %170, align 2, !tbaa !136
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 8
  %172 = load ptr, ptr %171, align 8, !tbaa !241
  %173 = icmp eq ptr %172, null
  br i1 %173, label %188, label %174

174:                                              ; preds = %164
  %175 = load i16, ptr %172, align 2, !tbaa !136
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %174, %177
  %178 = phi ptr [ %179, %177 ], [ %172, %174 ]
  %179 = getelementptr inbounds i16, ptr %178, i64 1
  %180 = load i16, ptr %179, align 2, !tbaa !136
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %177, !llvm.loop !163

182:                                              ; preds = %177
  %183 = ptrtoint ptr %179 to i64
  %184 = ptrtoint ptr %172 to i64
  %185 = sub i64 %183, %184
  %186 = lshr exact i64 %185, 1
  %187 = trunc i64 %186 to i32
  br label %188

188:                                              ; preds = %164, %174, %182
  %189 = phi i32 [ %187, %182 ], [ 0, %174 ], [ 0, %164 ]
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %242

191:                                              ; preds = %188
  %192 = load ptr, ptr %14, align 8, !tbaa !133
  %193 = load i32, ptr %192, align 8, !tbaa !134
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %192, i64 0, i32 1
  %195 = load i32, ptr %194, align 4, !tbaa !203
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %192, i32 noundef 1)
  br label %198

198:                                              ; preds = %191, %197
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %192, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !135
  %201 = load i32, ptr %192, align 8, !tbaa !134
  %202 = add i32 %201, 1
  store i32 %202, ptr %192, align 8, !tbaa !134
  %203 = zext i32 %201 to i64
  %204 = getelementptr inbounds i16, ptr %200, i64 %203
  store i16 40, ptr %204, align 2, !tbaa !136
  %205 = tail call i32 @llvm.smax.i32(i32 %189, i32 1)
  %206 = zext nneg i32 %205 to i64
  br label %221

207:                                              ; preds = %233
  %208 = load ptr, ptr %14, align 8, !tbaa !133
  %209 = load i32, ptr %208, align 8, !tbaa !134
  %210 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %208, i64 0, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !203
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %208, i32 noundef 1)
  br label %214

214:                                              ; preds = %207, %213
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %208, i64 0, i32 6
  %216 = load ptr, ptr %215, align 8, !tbaa !135
  %217 = load i32, ptr %208, align 8, !tbaa !134
  %218 = add i32 %217, 1
  store i32 %218, ptr %208, align 8, !tbaa !134
  %219 = zext i32 %217 to i64
  %220 = getelementptr inbounds i16, ptr %216, i64 %219
  store i16 41, ptr %220, align 2, !tbaa !136
  br label %242

221:                                              ; preds = %198, %233
  %222 = phi i64 [ 0, %198 ], [ %240, %233 ]
  %223 = getelementptr inbounds i16, ptr %172, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !136
  %225 = icmp eq i16 %224, 32
  %226 = load ptr, ptr %14, align 8, !tbaa !133
  %227 = load i32, ptr %226, align 8, !tbaa !134
  %228 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %226, i64 0, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !203
  %230 = icmp eq i32 %227, %229
  %231 = select i1 %225, i16 124, i16 %224
  br i1 %230, label %232, label %233

232:                                              ; preds = %221
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %226, i32 noundef 1)
  br label %233

233:                                              ; preds = %221, %232
  %234 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %226, i64 0, i32 6
  %235 = load ptr, ptr %234, align 8, !tbaa !135
  %236 = load i32, ptr %226, align 8, !tbaa !134
  %237 = add i32 %236, 1
  store i32 %237, ptr %226, align 8, !tbaa !134
  %238 = zext i32 %236 to i64
  %239 = getelementptr inbounds i16, ptr %235, i64 %238
  store i16 %231, ptr %239, align 2, !tbaa !136
  %240 = add nuw nsw i64 %222, 1
  %241 = icmp eq i64 %240, %206
  br i1 %241, label %207, label %221, !llvm.loop !242

242:                                              ; preds = %188, %214, %13, %149, %134, %119, %104, %89, %74, %59, %44, %29
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 1
  %244 = load i32, ptr %243, align 8, !tbaa !221
  switch i32 %244, label %276 [
    i32 2, label %245
    i32 4, label %251
    i32 1, label %257
  ]

245:                                              ; preds = %242
  %246 = load ptr, ptr %14, align 8, !tbaa !133
  %247 = load i32, ptr %246, align 8, !tbaa !134
  %248 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %246, i64 0, i32 1
  %249 = load i32, ptr %248, align 4, !tbaa !203
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %263, label %266

251:                                              ; preds = %242
  %252 = load ptr, ptr %14, align 8, !tbaa !133
  %253 = load i32, ptr %252, align 8, !tbaa !134
  %254 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %252, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !203
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %263, label %266

257:                                              ; preds = %242
  %258 = load ptr, ptr %14, align 8, !tbaa !133
  %259 = load i32, ptr %258, align 8, !tbaa !134
  %260 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %258, i64 0, i32 1
  %261 = load i32, ptr %260, align 4, !tbaa !203
  %262 = icmp eq i32 %259, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %257, %251, %245
  %264 = phi ptr [ %246, %245 ], [ %252, %251 ], [ %258, %257 ]
  %265 = phi ptr [ @_ZN11xercesc_2_76XMLUni16fgRequiredStringE, %245 ], [ @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, %251 ], [ @_ZN11xercesc_2_76XMLUni13fgFixedStringE, %257 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %264, i32 noundef 1)
  br label %266

266:                                              ; preds = %263, %257, %251, %245
  %267 = phi ptr [ %246, %245 ], [ %252, %251 ], [ %258, %257 ], [ %264, %263 ]
  %268 = phi ptr [ @_ZN11xercesc_2_76XMLUni16fgRequiredStringE, %245 ], [ @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, %251 ], [ @_ZN11xercesc_2_76XMLUni13fgFixedStringE, %257 ], [ %265, %263 ]
  %269 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %267, i64 0, i32 6
  %270 = load ptr, ptr %269, align 8, !tbaa !135
  %271 = load i32, ptr %267, align 8, !tbaa !134
  %272 = add i32 %271, 1
  store i32 %272, ptr %267, align 8, !tbaa !134
  %273 = zext i32 %271 to i64
  %274 = getelementptr inbounds i16, ptr %270, i64 %273
  store i16 32, ptr %274, align 2, !tbaa !136
  %275 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %275, ptr noundef nonnull %268)
  br label %276

276:                                              ; preds = %266, %242
  %277 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 7
  %278 = load ptr, ptr %277, align 8, !tbaa !226
  %279 = icmp eq ptr %278, null
  br i1 %279, label %321, label %280

280:                                              ; preds = %276
  %281 = load ptr, ptr %14, align 8, !tbaa !133
  %282 = load i32, ptr %281, align 8, !tbaa !134
  %283 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %281, i64 0, i32 1
  %284 = load i32, ptr %283, align 4, !tbaa !203
  %285 = icmp eq i32 %282, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %281, i32 noundef 1)
  br label %287

287:                                              ; preds = %280, %286
  %288 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %281, i64 0, i32 6
  %289 = load ptr, ptr %288, align 8, !tbaa !135
  %290 = load i32, ptr %281, align 8, !tbaa !134
  %291 = add i32 %290, 1
  store i32 %291, ptr %281, align 8, !tbaa !134
  %292 = zext i32 %290 to i64
  %293 = getelementptr inbounds i16, ptr %289, i64 %292
  store i16 32, ptr %293, align 2, !tbaa !136
  %294 = load ptr, ptr %14, align 8, !tbaa !133
  %295 = load i32, ptr %294, align 8, !tbaa !134
  %296 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %294, i64 0, i32 1
  %297 = load i32, ptr %296, align 4, !tbaa !203
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %287
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %294, i32 noundef 1)
  br label %300

300:                                              ; preds = %287, %299
  %301 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %294, i64 0, i32 6
  %302 = load ptr, ptr %301, align 8, !tbaa !135
  %303 = load i32, ptr %294, align 8, !tbaa !134
  %304 = add i32 %303, 1
  store i32 %304, ptr %294, align 8, !tbaa !134
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds i16, ptr %302, i64 %305
  store i16 34, ptr %306, align 2, !tbaa !136
  %307 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %307, ptr noundef nonnull %278)
  %308 = load ptr, ptr %14, align 8, !tbaa !133
  %309 = load i32, ptr %308, align 8, !tbaa !134
  %310 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %308, i64 0, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !203
  %312 = icmp eq i32 %309, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %300
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %308, i32 noundef 1)
  br label %314

314:                                              ; preds = %300, %313
  %315 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %308, i64 0, i32 6
  %316 = load ptr, ptr %315, align 8, !tbaa !135
  %317 = load i32, ptr %308, align 8, !tbaa !134
  %318 = add i32 %317, 1
  store i32 %318, ptr %308, align 8, !tbaa !134
  %319 = zext i32 %317 to i64
  %320 = getelementptr inbounds i16, ptr %316, i64 %319
  store i16 34, ptr %320, align 2, !tbaa !136
  br label %321

321:                                              ; preds = %276, %314, %8, %4
  ret void
}

declare noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 !prof !243 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !244

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !136
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !245

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !136
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !246, !llvm.loop !247

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !134
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !203
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !248

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !135
  %24 = load i32, ptr %0, align 8, !tbaa !134
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !249
  %28 = load i32, ptr %0, align 8, !tbaa !134
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !134
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #18 align 2 !prof !55 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !201
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %4)
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %77

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE)
  %11 = load ptr, ptr %9, align 8, !tbaa !133
  %12 = load i32, ptr %11, align 8, !tbaa !134
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !203
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1)
  br label %17

17:                                               ; preds = %8, %16
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !135
  %20 = load i32, ptr %11, align 8, !tbaa !134
  %21 = add i32 %20, 1
  store i32 %21, ptr %11, align 8, !tbaa !134
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds i16, ptr %19, i64 %22
  store i16 32, ptr %23, align 2, !tbaa !136
  %24 = load ptr, ptr %9, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull %1)
  %25 = load ptr, ptr %9, align 8, !tbaa !133
  %26 = load i32, ptr %25, align 8, !tbaa !134
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %25, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !203
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 1)
  br label %31

31:                                               ; preds = %17, %30
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !135
  %34 = load i32, ptr %25, align 8, !tbaa !134
  %35 = add i32 %34, 1
  store i32 %35, ptr %25, align 8, !tbaa !134
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i16, ptr %33, i64 %36
  store i16 32, ptr %37, align 2, !tbaa !136
  %38 = load ptr, ptr %9, align 8, !tbaa !133
  %39 = load i32, ptr %38, align 8, !tbaa !134
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !203
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1)
  br label %44

44:                                               ; preds = %31, %43
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %38, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !135
  %47 = load i32, ptr %38, align 8, !tbaa !134
  %48 = add i32 %47, 1
  store i32 %48, ptr %38, align 8, !tbaa !134
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i16, ptr %46, i64 %49
  store i16 45, ptr %50, align 2, !tbaa !136
  %51 = load ptr, ptr %9, align 8, !tbaa !133
  %52 = load i32, ptr %51, align 8, !tbaa !134
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %51, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !203
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %51, i32 noundef 1)
  br label %57

57:                                               ; preds = %44, %56
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %51, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !135
  %60 = load i32, ptr %51, align 8, !tbaa !134
  %61 = add i32 %60, 1
  store i32 %61, ptr %51, align 8, !tbaa !134
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i16, ptr %59, i64 %62
  store i16 45, ptr %63, align 2, !tbaa !136
  %64 = load ptr, ptr %9, align 8, !tbaa !133
  %65 = load i32, ptr %64, align 8, !tbaa !134
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %64, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !203
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %64, i32 noundef 1)
  br label %70

70:                                               ; preds = %57, %69
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %64, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !135
  %73 = load i32, ptr %64, align 8, !tbaa !134
  %74 = add i32 %73, 1
  store i32 %74, ptr %64, align 8, !tbaa !134
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i16, ptr %72, i64 %75
  store i16 62, ptr %76, align 2, !tbaa !136
  br label %77

77:                                               ; preds = %70, %2
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #18 align 2 !prof !55 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #4 align 2 !prof !55 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !204
  %11 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %12 = load ptr, ptr %8, align 8, !tbaa !57
  %13 = getelementptr inbounds ptr, ptr %12, i64 38
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %11, ptr noundef %2, ptr noundef %3)
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  store ptr %15, ptr %16, align 8, !tbaa !201
  %17 = load ptr, ptr %7, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293) %17, ptr noundef %15)
  ret void
}

declare void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture noundef %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #18 align 2 !prof !55 {
  %7 = getelementptr inbounds i8, ptr %0, i64 64
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !204
  %11 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %12 = load ptr, ptr %8, align 8, !tbaa !57
  %13 = getelementptr inbounds ptr, ptr %12, i64 38
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %11, ptr noundef %2, ptr noundef %3)
  %16 = getelementptr inbounds i8, ptr %0, i64 80
  store ptr %15, ptr %16, align 8, !tbaa !201
  %17 = load ptr, ptr %7, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293) %17, ptr noundef %15)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5)
  br i1 %6, label %7, label %76

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = load i32, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !203
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !135
  %18 = load i32, ptr %9, align 8, !tbaa !134
  %19 = add i32 %18, 1
  store i32 %19, ptr %9, align 8, !tbaa !134
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds i16, ptr %17, i64 %20
  store i16 60, ptr %21, align 2, !tbaa !136
  %22 = load ptr, ptr %8, align 8, !tbaa !133
  %23 = load i32, ptr %22, align 8, !tbaa !134
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %22, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !203
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 1)
  br label %28

28:                                               ; preds = %15, %27
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %22, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  %31 = load i32, ptr %22, align 8, !tbaa !134
  %32 = add i32 %31, 1
  store i32 %32, ptr %22, align 8, !tbaa !134
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i16, ptr %30, i64 %33
  store i16 63, ptr %34, align 2, !tbaa !136
  %35 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef %1)
  %36 = load ptr, ptr %8, align 8, !tbaa !133
  %37 = load i32, ptr %36, align 8, !tbaa !134
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %36, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !203
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef 1)
  br label %42

42:                                               ; preds = %28, %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %36, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !135
  %45 = load i32, ptr %36, align 8, !tbaa !134
  %46 = add i32 %45, 1
  store i32 %46, ptr %36, align 8, !tbaa !134
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i16, ptr %44, i64 %47
  store i16 32, ptr %48, align 2, !tbaa !136
  %49 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %49, ptr noundef %2)
  %50 = load ptr, ptr %8, align 8, !tbaa !133
  %51 = load i32, ptr %50, align 8, !tbaa !134
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %50, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !203
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %50, i32 noundef 1)
  br label %56

56:                                               ; preds = %42, %55
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %50, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !135
  %59 = load i32, ptr %50, align 8, !tbaa !134
  %60 = add i32 %59, 1
  store i32 %60, ptr %50, align 8, !tbaa !134
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i16, ptr %58, i64 %61
  store i16 63, ptr %62, align 2, !tbaa !136
  %63 = load ptr, ptr %8, align 8, !tbaa !133
  %64 = load i32, ptr %63, align 8, !tbaa !134
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %63, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !203
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %63, i32 noundef 1)
  br label %69

69:                                               ; preds = %56, %68
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %63, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !135
  %72 = load i32, ptr %63, align 8, !tbaa !134
  %73 = add i32 %72, 1
  store i32 %73, ptr %63, align 8, !tbaa !134
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i16, ptr %71, i64 %74
  store i16 62, ptr %75, align 2, !tbaa !136
  br label %76

76:                                               ; preds = %69, %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #18 align 2 !prof !55 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, i32 %2) unnamed_addr #4 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %1)
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) unnamed_addr #18 align 2 !prof !55 {
  %4 = getelementptr inbounds i8, ptr %0, i64 80
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 160
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %1)
  br label %10

10:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #4 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5)
  br i1 %6, label %7, label %87

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = load i32, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !203
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !135
  %18 = load i32, ptr %9, align 8, !tbaa !134
  %19 = add i32 %18, 1
  store i32 %19, ptr %9, align 8, !tbaa !134
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds i16, ptr %17, i64 %20
  store i16 60, ptr %21, align 2, !tbaa !136
  %22 = load ptr, ptr %8, align 8, !tbaa !133
  %23 = load i32, ptr %22, align 8, !tbaa !134
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %22, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !203
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 1)
  br label %28

28:                                               ; preds = %15, %27
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %22, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  %31 = load i32, ptr %22, align 8, !tbaa !134
  %32 = add i32 %31, 1
  store i32 %32, ptr %22, align 8, !tbaa !134
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i16, ptr %30, i64 %33
  store i16 33, ptr %34, align 2, !tbaa !136
  %35 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgElemStringE)
  %36 = load ptr, ptr %8, align 8, !tbaa !133
  %37 = load i32, ptr %36, align 8, !tbaa !134
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %36, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !203
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef 1)
  br label %42

42:                                               ; preds = %28, %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %36, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !135
  %45 = load i32, ptr %36, align 8, !tbaa !134
  %46 = add i32 %45, 1
  store i32 %46, ptr %36, align 8, !tbaa !134
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i16, ptr %44, i64 %47
  store i16 32, ptr %48, align 2, !tbaa !136
  %49 = load ptr, ptr %8, align 8, !tbaa !133
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !204
  %52 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %51)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %49, ptr noundef %52)
  %53 = load ptr, ptr %1, align 8, !tbaa !57
  %54 = getelementptr inbounds ptr, ptr %53, i64 15
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(80) %1)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %42
  %59 = load ptr, ptr %8, align 8, !tbaa !133
  %60 = load i32, ptr %59, align 8, !tbaa !134
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %59, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !203
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %59, i32 noundef 1)
  br label %65

65:                                               ; preds = %58, %64
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %59, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !135
  %68 = load i32, ptr %59, align 8, !tbaa !134
  %69 = add i32 %68, 1
  store i32 %69, ptr %59, align 8, !tbaa !134
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i16, ptr %67, i64 %70
  store i16 32, ptr %71, align 2, !tbaa !136
  %72 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %72, ptr noundef nonnull %56)
  br label %73

73:                                               ; preds = %65, %42
  %74 = load ptr, ptr %8, align 8, !tbaa !133
  %75 = load i32, ptr %74, align 8, !tbaa !134
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %74, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !203
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef 1)
  br label %80

80:                                               ; preds = %73, %79
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %74, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !135
  %83 = load i32, ptr %74, align 8, !tbaa !134
  %84 = add i32 %83, 1
  store i32 %84, ptr %74, align 8, !tbaa !134
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i16, ptr %82, i64 %85
  store i16 62, ptr %86, align 2, !tbaa !136
  br label %87

87:                                               ; preds = %80, %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #18 align 2 !prof !55 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = alloca [1000 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %5)
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = load i32, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !203
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !135
  %18 = load i32, ptr %9, align 8, !tbaa !134
  %19 = add i32 %18, 1
  store i32 %19, ptr %9, align 8, !tbaa !134
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds i16, ptr %17, i64 %20
  store i16 62, ptr %21, align 2, !tbaa !136
  br label %22

22:                                               ; preds = %15, %2
  %23 = load ptr, ptr %1, align 8, !tbaa !57
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %26, label %27, label %217

27:                                               ; preds = %22
  %28 = load ptr, ptr %1, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef nonnull align 8 dereferenceable(16) ptr %30(ptr noundef nonnull align 8 dereferenceable(80) %1)
  %32 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !204
  %36 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %35)
  %37 = load ptr, ptr %33, align 8, !tbaa !57
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(293) %33, ptr noundef %36)
  %41 = load ptr, ptr %31, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 13
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(16) %31)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %27
  %47 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %48 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %49 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %50 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  br label %62

51:                                               ; preds = %206, %27
  %52 = load ptr, ptr %4, align 8, !tbaa !201
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = getelementptr inbounds ptr, ptr %53, i64 50
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(130) %52)
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %40)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %217, label %213

62:                                               ; preds = %46, %206
  %63 = phi i32 [ 0, %46 ], [ %207, %206 ]
  %64 = load ptr, ptr %31, align 8, !tbaa !57
  %65 = getelementptr inbounds ptr, ptr %64, i64 14
  %66 = load ptr, ptr %65, align 8
  %67 = call noundef nonnull align 8 dereferenceable(56) ptr %66(ptr noundef nonnull align 8 dereferenceable(16) %31, i32 noundef %63)
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !226
  %70 = icmp eq ptr %69, null
  br i1 %70, label %206, label %71

71:                                               ; preds = %62
  %72 = load ptr, ptr %47, align 8, !tbaa !95
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %72, i64 0, i32 4
  %74 = load i8, ptr %73, align 2, !tbaa !140, !range !85, !noundef !86
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %178, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %67, align 8, !tbaa !57
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(56) %67)
  %81 = call noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %80)
  %82 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %48)
  %83 = icmp sgt i32 %81, 0
  br i1 %83, label %84, label %127

84:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %3) #24
  %85 = icmp sgt i32 %81, 999
  br i1 %85, label %86, label %99

86:                                               ; preds = %84
  %87 = load ptr, ptr %49, align 8, !tbaa !79
  %88 = shl nuw i32 %81, 1
  %89 = add i32 %88, 2
  %90 = zext i32 %89 to i64
  %91 = load ptr, ptr %87, align 8, !tbaa !57
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %87, i64 noundef %90)
          to label %99 unwind label %97

95:                                               ; preds = %144, %143
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %172

97:                                               ; preds = %118, %121, %99, %86
  %98 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %3) #24
  br label %172

99:                                               ; preds = %86, %84
  %100 = phi ptr [ %3, %84 ], [ %94, %86 ]
  %101 = load ptr, ptr %50, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %80, i32 noundef 0, i32 noundef %81, ptr noundef %101)
          to label %102 unwind label %97

102:                                              ; preds = %99
  %103 = icmp eq ptr %100, null
  br i1 %103, label %118, label %104

104:                                              ; preds = %102
  %105 = load i16, ptr %100, align 2, !tbaa !136
  %106 = icmp eq i16 %105, 120
  br i1 %106, label %107, label %118

107:                                              ; preds = %104, %112
  %108 = phi i16 [ %115, %112 ], [ 1, %104 ]
  %109 = phi ptr [ %114, %112 ], [ @_ZZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS, %104 ]
  %110 = phi ptr [ %113, %112 ], [ %100, %104 ]
  %111 = icmp eq i16 %108, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds i16, ptr %110, i64 1
  %114 = getelementptr inbounds i16, ptr %109, i64 1
  %115 = load i16, ptr %113, align 2, !tbaa !136
  %116 = load i16, ptr %114, align 2, !tbaa !136
  %117 = icmp eq i16 %115, %116
  br i1 %117, label %107, label %118, !llvm.loop !213

118:                                              ; preds = %112, %107, %102, %104
  %119 = phi ptr [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %104 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %102 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %112 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %107 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %82, ptr noundef nonnull %119)
          to label %120 unwind label %97

120:                                              ; preds = %118
  br i1 %85, label %121, label %126

121:                                              ; preds = %120
  %122 = load ptr, ptr %50, align 8, !tbaa !79
  %123 = load ptr, ptr %122, align 8, !tbaa !57
  %124 = getelementptr inbounds ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8
  invoke void %125(ptr noundef nonnull align 8 dereferenceable(8) %122, ptr noundef %100)
          to label %126 unwind label %97

126:                                              ; preds = %121, %120
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %3) #24
  br label %144

127:                                              ; preds = %76
  %128 = icmp eq ptr %80, null
  br i1 %128, label %144, label %129

129:                                              ; preds = %127
  %130 = load i16, ptr %80, align 2, !tbaa !136
  %131 = icmp eq i16 %130, 120
  br i1 %131, label %132, label %144

132:                                              ; preds = %129, %137
  %133 = phi i16 [ %140, %137 ], [ 1, %129 ]
  %134 = phi ptr [ %139, %137 ], [ @_ZZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS, %129 ]
  %135 = phi ptr [ %138, %137 ], [ %80, %129 ]
  %136 = icmp eq i16 %133, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds i16, ptr %135, i64 1
  %139 = getelementptr inbounds i16, ptr %134, i64 1
  %140 = load i16, ptr %138, align 2, !tbaa !136
  %141 = load i16, ptr %139, align 2, !tbaa !136
  %142 = icmp eq i16 %140, %141
  br i1 %142, label %132, label %144, !llvm.loop !213

143:                                              ; preds = %132
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %82, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE)
          to label %144 unwind label %95

144:                                              ; preds = %137, %129, %143, %127, %126
  %145 = load ptr, ptr %32, align 8, !tbaa !87
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %82, i64 0, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !135
  %148 = load i32, ptr %82, align 8, !tbaa !134
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i16, ptr %147, i64 %149
  store i16 0, ptr %150, align 2, !tbaa !136
  %151 = load ptr, ptr %145, align 8, !tbaa !57
  %152 = getelementptr inbounds ptr, ptr %151, i64 17
  %153 = load ptr, ptr %152, align 8
  %154 = invoke noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(293) %145, ptr noundef %147, ptr noundef %80)
          to label %155 unwind label %95

155:                                              ; preds = %144
  %156 = load ptr, ptr %40, align 8, !tbaa !57
  %157 = getelementptr inbounds ptr, ptr %156, i64 52
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(96) %40, ptr noundef %154)
          to label %160 unwind label %166

160:                                              ; preds = %155
  %161 = icmp eq ptr %159, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %160
  %163 = load ptr, ptr %159, align 8, !tbaa !57
  %164 = getelementptr inbounds ptr, ptr %163, i64 39
  %165 = load ptr, ptr %164, align 8
  invoke void %165(ptr noundef nonnull align 8 dereferenceable(8) %159)
          to label %168 unwind label %166

166:                                              ; preds = %162, %155
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %172

168:                                              ; preds = %162, %160
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(40) %82)
          to label %197 unwind label %169

169:                                              ; preds = %168
  %170 = landingpad { ptr, i32 }
          catch ptr null
  %171 = extractvalue { ptr, i32 } %170, 0
  call void @__clang_call_terminate(ptr %171) #25
  unreachable

172:                                              ; preds = %166, %97, %95
  %173 = phi { ptr, i32 } [ %167, %166 ], [ %96, %95 ], [ %98, %97 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(40) %82)
          to label %177 unwind label %174

174:                                              ; preds = %172
  %175 = landingpad { ptr, i32 }
          catch ptr null
  %176 = extractvalue { ptr, i32 } %175, 0
  call void @__clang_call_terminate(ptr %176) #25
  unreachable

177:                                              ; preds = %172
  resume { ptr, i32 } %173

178:                                              ; preds = %71
  %179 = load ptr, ptr %32, align 8, !tbaa !87
  %180 = load ptr, ptr %67, align 8, !tbaa !57
  %181 = getelementptr inbounds ptr, ptr %180, i64 5
  %182 = load ptr, ptr %181, align 8
  %183 = call noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(56) %67)
  %184 = load ptr, ptr %179, align 8, !tbaa !57
  %185 = getelementptr inbounds ptr, ptr %184, i64 9
  %186 = load ptr, ptr %185, align 8
  %187 = call noundef ptr %186(ptr noundef nonnull align 8 dereferenceable(293) %179, ptr noundef %183)
  %188 = load ptr, ptr %40, align 8, !tbaa !57
  %189 = getelementptr inbounds ptr, ptr %188, i64 45
  %190 = load ptr, ptr %189, align 8
  %191 = call noundef ptr %190(ptr noundef nonnull align 8 dereferenceable(96) %40, ptr noundef %187)
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %178
  %194 = load ptr, ptr %191, align 8, !tbaa !57
  %195 = getelementptr inbounds ptr, ptr %194, i64 39
  %196 = load ptr, ptr %195, align 8
  call void %196(ptr noundef nonnull align 8 dereferenceable(8) %191)
  br label %197

197:                                              ; preds = %168, %178, %193
  %198 = phi ptr [ %187, %193 ], [ %187, %178 ], [ %154, %168 ]
  %199 = load ptr, ptr %68, align 8, !tbaa !226
  %200 = load ptr, ptr %198, align 8, !tbaa !57
  %201 = getelementptr inbounds ptr, ptr %200, i64 43
  %202 = load ptr, ptr %201, align 8
  call void %202(ptr noundef nonnull align 8 dereferenceable(72) %198, ptr noundef %199)
  %203 = load ptr, ptr %198, align 8, !tbaa !57
  %204 = getelementptr inbounds ptr, ptr %203, i64 47
  %205 = load ptr, ptr %204, align 8
  call void %205(ptr noundef nonnull align 8 dereferenceable(72) %198, i1 noundef zeroext false)
  br label %206

206:                                              ; preds = %62, %197
  %207 = add nuw i32 %63, 1
  %208 = load ptr, ptr %31, align 8, !tbaa !57
  %209 = getelementptr inbounds ptr, ptr %208, i64 13
  %210 = load ptr, ptr %209, align 8
  %211 = call noundef i32 %210(ptr noundef nonnull align 8 dereferenceable(16) %31)
  %212 = icmp ult i32 %207, %211
  br i1 %212, label %62, label %51, !llvm.loop !250

213:                                              ; preds = %51
  %214 = load ptr, ptr %60, align 8, !tbaa !57
  %215 = getelementptr inbounds ptr, ptr %214, i64 39
  %216 = load ptr, ptr %215, align 8
  call void %216(ptr noundef nonnull align 8 dereferenceable(8) %60)
  br label %217

217:                                              ; preds = %51, %213, %22
  ret void
}

declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #18 align 2 !prof !55 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = load i32, ptr %5, align 8, !tbaa !134
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %7, i64 %9
  store i16 0, ptr %10, align 2, !tbaa !136
  %11 = load ptr, ptr %3, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(130) %3, ptr noundef %7)
  %14 = load ptr, ptr %2, align 8, !tbaa !201
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %14, i64 0, i32 11
  store i8 0, ptr %15, align 8, !tbaa !251
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #18 align 2 !prof !55 {
  %2 = getelementptr inbounds i8, ptr %0, i64 80
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = getelementptr inbounds i8, ptr %0, i64 160
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = load i32, ptr %5, align 8, !tbaa !134
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %7, i64 %9
  store i16 0, ptr %10, align 2, !tbaa !136
  %11 = load ptr, ptr %3, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(130) %3, ptr noundef %7)
  %14 = load ptr, ptr %2, align 8, !tbaa !201
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %14, i64 0, i32 11
  store i8 0, ptr %15, align 8, !tbaa !251
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #19 align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #19 align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #4 align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !235
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 36
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %8)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !255
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 50
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef %14)
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !256
  %20 = load ptr, ptr %12, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 51
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef %19)
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !257
  %25 = load ptr, ptr %12, align 8, !tbaa !57
  %26 = getelementptr inbounds ptr, ptr %25, i64 49
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef %24)
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !258
  %30 = load ptr, ptr %12, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %30, i64 54
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef %29)
  %33 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !201
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds ptr, ptr %35, i64 41
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(130) %34)
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull %12)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %4
  %45 = load ptr, ptr %42, align 8, !tbaa !57
  %46 = getelementptr inbounds ptr, ptr %45, i64 39
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(129) %42)
  br label %48

48:                                               ; preds = %44, %4
  %49 = load ptr, ptr %33, align 8, !tbaa !201
  %50 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %49)
  br i1 %50, label %51, label %310

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %53 = load ptr, ptr %52, align 8, !tbaa !133
  %54 = load i32, ptr %53, align 8, !tbaa !134
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %53, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !203
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 1)
  br label %59

59:                                               ; preds = %51, %58
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %53, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !135
  %62 = load i32, ptr %53, align 8, !tbaa !134
  %63 = add i32 %62, 1
  store i32 %63, ptr %53, align 8, !tbaa !134
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i16, ptr %61, i64 %64
  store i16 60, ptr %65, align 2, !tbaa !136
  %66 = load ptr, ptr %52, align 8, !tbaa !133
  %67 = load i32, ptr %66, align 8, !tbaa !134
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %66, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !203
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %66, i32 noundef 1)
  br label %72

72:                                               ; preds = %59, %71
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %66, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !135
  %75 = load i32, ptr %66, align 8, !tbaa !134
  %76 = add i32 %75, 1
  store i32 %76, ptr %66, align 8, !tbaa !134
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i16, ptr %74, i64 %77
  store i16 33, ptr %78, align 2, !tbaa !136
  %79 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE)
  %80 = load ptr, ptr %52, align 8, !tbaa !133
  %81 = load i32, ptr %80, align 8, !tbaa !134
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %80, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !203
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %80, i32 noundef 1)
  br label %86

86:                                               ; preds = %72, %85
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %80, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !135
  %89 = load i32, ptr %80, align 8, !tbaa !134
  %90 = add i32 %89, 1
  store i32 %90, ptr %80, align 8, !tbaa !134
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i16, ptr %88, i64 %91
  store i16 32, ptr %92, align 2, !tbaa !136
  %93 = load ptr, ptr %52, align 8, !tbaa !133
  %94 = load ptr, ptr %7, align 8, !tbaa !235
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %93, ptr noundef %94)
  %95 = load ptr, ptr %12, align 8, !tbaa !57
  %96 = getelementptr inbounds ptr, ptr %95, i64 40
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(129) %12)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %155, label %100

100:                                              ; preds = %86
  %101 = load ptr, ptr %52, align 8, !tbaa !133
  %102 = load i32, ptr %101, align 8, !tbaa !134
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %101, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !203
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %101, i32 noundef 1)
  br label %107

107:                                              ; preds = %100, %106
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %101, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !135
  %110 = load i32, ptr %101, align 8, !tbaa !134
  %111 = add i32 %110, 1
  store i32 %111, ptr %101, align 8, !tbaa !134
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i16, ptr %109, i64 %112
  store i16 32, ptr %113, align 2, !tbaa !136
  %114 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %114, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE)
  %115 = load ptr, ptr %52, align 8, !tbaa !133
  %116 = load i32, ptr %115, align 8, !tbaa !134
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %115, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !203
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %115, i32 noundef 1)
  br label %121

121:                                              ; preds = %107, %120
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %115, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !135
  %124 = load i32, ptr %115, align 8, !tbaa !134
  %125 = add i32 %124, 1
  store i32 %125, ptr %115, align 8, !tbaa !134
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i16, ptr %123, i64 %126
  store i16 32, ptr %127, align 2, !tbaa !136
  %128 = load ptr, ptr %52, align 8, !tbaa !133
  %129 = load i32, ptr %128, align 8, !tbaa !134
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %128, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !203
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %128, i32 noundef 1)
  br label %134

134:                                              ; preds = %121, %133
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %128, i64 0, i32 6
  %136 = load ptr, ptr %135, align 8, !tbaa !135
  %137 = load i32, ptr %128, align 8, !tbaa !134
  %138 = add i32 %137, 1
  store i32 %138, ptr %128, align 8, !tbaa !134
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i16, ptr %136, i64 %139
  store i16 34, ptr %140, align 2, !tbaa !136
  %141 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %141, ptr noundef nonnull %98)
  %142 = load ptr, ptr %52, align 8, !tbaa !133
  %143 = load i32, ptr %142, align 8, !tbaa !134
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %142, i64 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !203
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %134
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %142, i32 noundef 1)
  br label %148

148:                                              ; preds = %134, %147
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %142, i64 0, i32 6
  %150 = load ptr, ptr %149, align 8, !tbaa !135
  %151 = load i32, ptr %142, align 8, !tbaa !134
  %152 = add i32 %151, 1
  store i32 %152, ptr %142, align 8, !tbaa !134
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds i16, ptr %150, i64 %153
  store i16 34, ptr %154, align 2, !tbaa !136
  br label %155

155:                                              ; preds = %148, %86
  %156 = load ptr, ptr %12, align 8, !tbaa !57
  %157 = getelementptr inbounds ptr, ptr %156, i64 41
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(129) %12)
  %160 = icmp eq ptr %159, null
  br i1 %160, label %216, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr %52, align 8, !tbaa !133
  %163 = load i32, ptr %162, align 8, !tbaa !134
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %162, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !203
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %162, i32 noundef 1)
  br label %168

168:                                              ; preds = %161, %167
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %162, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !135
  %171 = load i32, ptr %162, align 8, !tbaa !134
  %172 = add i32 %171, 1
  store i32 %172, ptr %162, align 8, !tbaa !134
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds i16, ptr %170, i64 %173
  store i16 32, ptr %174, align 2, !tbaa !136
  %175 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %175, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE)
  %176 = load ptr, ptr %52, align 8, !tbaa !133
  %177 = load i32, ptr %176, align 8, !tbaa !134
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %176, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !203
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %176, i32 noundef 1)
  br label %182

182:                                              ; preds = %168, %181
  %183 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %176, i64 0, i32 6
  %184 = load ptr, ptr %183, align 8, !tbaa !135
  %185 = load i32, ptr %176, align 8, !tbaa !134
  %186 = add i32 %185, 1
  store i32 %186, ptr %176, align 8, !tbaa !134
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i16, ptr %184, i64 %187
  store i16 32, ptr %188, align 2, !tbaa !136
  %189 = load ptr, ptr %52, align 8, !tbaa !133
  %190 = load i32, ptr %189, align 8, !tbaa !134
  %191 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %189, i64 0, i32 1
  %192 = load i32, ptr %191, align 4, !tbaa !203
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %182
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %189, i32 noundef 1)
  br label %195

195:                                              ; preds = %182, %194
  %196 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %189, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !135
  %198 = load i32, ptr %189, align 8, !tbaa !134
  %199 = add i32 %198, 1
  store i32 %199, ptr %189, align 8, !tbaa !134
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds i16, ptr %197, i64 %200
  store i16 34, ptr %201, align 2, !tbaa !136
  %202 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %202, ptr noundef nonnull %159)
  %203 = load ptr, ptr %52, align 8, !tbaa !133
  %204 = load i32, ptr %203, align 8, !tbaa !134
  %205 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %203, i64 0, i32 1
  %206 = load i32, ptr %205, align 4, !tbaa !203
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %195
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %203, i32 noundef 1)
  br label %209

209:                                              ; preds = %195, %208
  %210 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %203, i64 0, i32 6
  %211 = load ptr, ptr %210, align 8, !tbaa !135
  %212 = load i32, ptr %203, align 8, !tbaa !134
  %213 = add i32 %212, 1
  store i32 %213, ptr %203, align 8, !tbaa !134
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds i16, ptr %211, i64 %214
  store i16 34, ptr %215, align 2, !tbaa !136
  br label %216

216:                                              ; preds = %209, %155
  %217 = load ptr, ptr %12, align 8, !tbaa !57
  %218 = getelementptr inbounds ptr, ptr %217, i64 42
  %219 = load ptr, ptr %218, align 8
  %220 = tail call noundef ptr %219(ptr noundef nonnull align 8 dereferenceable(129) %12)
  %221 = icmp eq ptr %220, null
  br i1 %221, label %251, label %222

222:                                              ; preds = %216
  %223 = load ptr, ptr %52, align 8, !tbaa !133
  %224 = load i32, ptr %223, align 8, !tbaa !134
  %225 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %223, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !203
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %223, i32 noundef 1)
  br label %229

229:                                              ; preds = %222, %228
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %223, i64 0, i32 6
  %231 = load ptr, ptr %230, align 8, !tbaa !135
  %232 = load i32, ptr %223, align 8, !tbaa !134
  %233 = add i32 %232, 1
  store i32 %233, ptr %223, align 8, !tbaa !134
  %234 = zext i32 %232 to i64
  %235 = getelementptr inbounds i16, ptr %231, i64 %234
  store i16 32, ptr %235, align 2, !tbaa !136
  %236 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %236, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE)
  %237 = load ptr, ptr %52, align 8, !tbaa !133
  %238 = load i32, ptr %237, align 8, !tbaa !134
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %237, i64 0, i32 1
  %240 = load i32, ptr %239, align 4, !tbaa !203
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %229
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %237, i32 noundef 1)
  br label %243

243:                                              ; preds = %229, %242
  %244 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %237, i64 0, i32 6
  %245 = load ptr, ptr %244, align 8, !tbaa !135
  %246 = load i32, ptr %237, align 8, !tbaa !134
  %247 = add i32 %246, 1
  store i32 %247, ptr %237, align 8, !tbaa !134
  %248 = zext i32 %246 to i64
  %249 = getelementptr inbounds i16, ptr %245, i64 %248
  store i16 32, ptr %249, align 2, !tbaa !136
  %250 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %250, ptr noundef nonnull %220)
  br label %251

251:                                              ; preds = %243, %216
  %252 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !259
  %254 = icmp eq ptr %253, null
  br i1 %254, label %296, label %255

255:                                              ; preds = %251
  %256 = load ptr, ptr %52, align 8, !tbaa !133
  %257 = load i32, ptr %256, align 8, !tbaa !134
  %258 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %256, i64 0, i32 1
  %259 = load i32, ptr %258, align 4, !tbaa !203
  %260 = icmp eq i32 %257, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %256, i32 noundef 1)
  br label %262

262:                                              ; preds = %255, %261
  %263 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %256, i64 0, i32 6
  %264 = load ptr, ptr %263, align 8, !tbaa !135
  %265 = load i32, ptr %256, align 8, !tbaa !134
  %266 = add i32 %265, 1
  store i32 %266, ptr %256, align 8, !tbaa !134
  %267 = zext i32 %265 to i64
  %268 = getelementptr inbounds i16, ptr %264, i64 %267
  store i16 32, ptr %268, align 2, !tbaa !136
  %269 = load ptr, ptr %52, align 8, !tbaa !133
  %270 = load i32, ptr %269, align 8, !tbaa !134
  %271 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %269, i64 0, i32 1
  %272 = load i32, ptr %271, align 4, !tbaa !203
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %262
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %269, i32 noundef 1)
  br label %275

275:                                              ; preds = %262, %274
  %276 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %269, i64 0, i32 6
  %277 = load ptr, ptr %276, align 8, !tbaa !135
  %278 = load i32, ptr %269, align 8, !tbaa !134
  %279 = add i32 %278, 1
  store i32 %279, ptr %269, align 8, !tbaa !134
  %280 = zext i32 %278 to i64
  %281 = getelementptr inbounds i16, ptr %277, i64 %280
  store i16 34, ptr %281, align 2, !tbaa !136
  %282 = load ptr, ptr %52, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %282, ptr noundef nonnull %253)
  %283 = load ptr, ptr %52, align 8, !tbaa !133
  %284 = load i32, ptr %283, align 8, !tbaa !134
  %285 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %283, i64 0, i32 1
  %286 = load i32, ptr %285, align 4, !tbaa !203
  %287 = icmp eq i32 %284, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %275
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %283, i32 noundef 1)
  br label %289

289:                                              ; preds = %275, %288
  %290 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %283, i64 0, i32 6
  %291 = load ptr, ptr %290, align 8, !tbaa !135
  %292 = load i32, ptr %283, align 8, !tbaa !134
  %293 = add i32 %292, 1
  store i32 %293, ptr %283, align 8, !tbaa !134
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds i16, ptr %291, i64 %294
  store i16 34, ptr %295, align 2, !tbaa !136
  br label %296

296:                                              ; preds = %289, %251
  %297 = load ptr, ptr %52, align 8, !tbaa !133
  %298 = load i32, ptr %297, align 8, !tbaa !134
  %299 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %297, i64 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !203
  %301 = icmp eq i32 %298, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %297, i32 noundef 1)
  br label %303

303:                                              ; preds = %296, %302
  %304 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %297, i64 0, i32 6
  %305 = load ptr, ptr %304, align 8, !tbaa !135
  %306 = load i32, ptr %297, align 8, !tbaa !134
  %307 = add i32 %306, 1
  store i32 %307, ptr %297, align 8, !tbaa !134
  %308 = zext i32 %306 to i64
  %309 = getelementptr inbounds i16, ptr %305, i64 %308
  store i16 62, ptr %309, align 2, !tbaa !136
  br label %310

310:                                              ; preds = %303, %48
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #18 align 2 !prof !55 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext poison, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(200) %0) unnamed_addr #12 align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  store ptr null, ptr %2, align 8, !tbaa !201
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr nocapture noundef writeonly %0) unnamed_addr #12 align 2 !prof !55 {
  %2 = getelementptr inbounds i8, ptr %0, i64 80
  store ptr null, ptr %2, align 8, !tbaa !201
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #4 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !260
  %8 = load ptr, ptr %5, align 8, !tbaa !57
  %9 = getelementptr inbounds ptr, ptr %8, i64 39
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %7)
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !262
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = getelementptr inbounds ptr, ptr %14, i64 42
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %13)
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !263
  %19 = load ptr, ptr %11, align 8, !tbaa !57
  %20 = getelementptr inbounds ptr, ptr %19, i64 43
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %18)
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !264
  %24 = load ptr, ptr %11, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %24, i64 44
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %23)
  %27 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !201
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds ptr, ptr %29, i64 42
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(130) %28)
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %11)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %3
  %39 = load ptr, ptr %36, align 8, !tbaa !57
  %40 = getelementptr inbounds ptr, ptr %39, i64 39
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %36)
  br label %42

42:                                               ; preds = %38, %3
  %43 = load ptr, ptr %27, align 8, !tbaa !201
  %44 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %43)
  br i1 %44, label %45, label %224

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %47 = load ptr, ptr %46, align 8, !tbaa !133
  %48 = load i32, ptr %47, align 8, !tbaa !134
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %47, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !203
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef 1)
  br label %53

53:                                               ; preds = %45, %52
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %47, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !135
  %56 = load i32, ptr %47, align 8, !tbaa !134
  %57 = add i32 %56, 1
  store i32 %57, ptr %47, align 8, !tbaa !134
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i16, ptr %55, i64 %58
  store i16 60, ptr %59, align 2, !tbaa !136
  %60 = load ptr, ptr %46, align 8, !tbaa !133
  %61 = load i32, ptr %60, align 8, !tbaa !134
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %60, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !203
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %60, i32 noundef 1)
  br label %66

66:                                               ; preds = %53, %65
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %60, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !135
  %69 = load i32, ptr %60, align 8, !tbaa !134
  %70 = add i32 %69, 1
  store i32 %70, ptr %60, align 8, !tbaa !134
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i16, ptr %68, i64 %71
  store i16 33, ptr %72, align 2, !tbaa !136
  %73 = load ptr, ptr %46, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %73, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE)
  %74 = load ptr, ptr %46, align 8, !tbaa !133
  %75 = load i32, ptr %74, align 8, !tbaa !134
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %74, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !203
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef 1)
  br label %80

80:                                               ; preds = %66, %79
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %74, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !135
  %83 = load i32, ptr %74, align 8, !tbaa !134
  %84 = add i32 %83, 1
  store i32 %84, ptr %74, align 8, !tbaa !134
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i16, ptr %82, i64 %85
  store i16 32, ptr %86, align 2, !tbaa !136
  %87 = load ptr, ptr %46, align 8, !tbaa !133
  %88 = load ptr, ptr %6, align 8, !tbaa !260
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %87, ptr noundef %88)
  %89 = load ptr, ptr %11, align 8, !tbaa !57
  %90 = getelementptr inbounds ptr, ptr %89, i64 40
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(56) %11)
  %93 = icmp eq ptr %92, null
  br i1 %93, label %149, label %94

94:                                               ; preds = %80
  %95 = load ptr, ptr %46, align 8, !tbaa !133
  %96 = load i32, ptr %95, align 8, !tbaa !134
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %95, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !203
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %95, i32 noundef 1)
  br label %101

101:                                              ; preds = %94, %100
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %95, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !135
  %104 = load i32, ptr %95, align 8, !tbaa !134
  %105 = add i32 %104, 1
  store i32 %105, ptr %95, align 8, !tbaa !134
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i16, ptr %103, i64 %106
  store i16 32, ptr %107, align 2, !tbaa !136
  %108 = load ptr, ptr %46, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %108, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE)
  %109 = load ptr, ptr %46, align 8, !tbaa !133
  %110 = load i32, ptr %109, align 8, !tbaa !134
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %109, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !203
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %109, i32 noundef 1)
  br label %115

115:                                              ; preds = %101, %114
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %109, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !135
  %118 = load i32, ptr %109, align 8, !tbaa !134
  %119 = add i32 %118, 1
  store i32 %119, ptr %109, align 8, !tbaa !134
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds i16, ptr %117, i64 %120
  store i16 32, ptr %121, align 2, !tbaa !136
  %122 = load ptr, ptr %46, align 8, !tbaa !133
  %123 = load i32, ptr %122, align 8, !tbaa !134
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %122, i64 0, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !203
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %122, i32 noundef 1)
  br label %128

128:                                              ; preds = %115, %127
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %122, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !135
  %131 = load i32, ptr %122, align 8, !tbaa !134
  %132 = add i32 %131, 1
  store i32 %132, ptr %122, align 8, !tbaa !134
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i16, ptr %130, i64 %133
  store i16 34, ptr %134, align 2, !tbaa !136
  %135 = load ptr, ptr %46, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %135, ptr noundef nonnull %92)
  %136 = load ptr, ptr %46, align 8, !tbaa !133
  %137 = load i32, ptr %136, align 8, !tbaa !134
  %138 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %136, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !203
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %136, i32 noundef 1)
  br label %142

142:                                              ; preds = %128, %141
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %136, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !135
  %145 = load i32, ptr %136, align 8, !tbaa !134
  %146 = add i32 %145, 1
  store i32 %146, ptr %136, align 8, !tbaa !134
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds i16, ptr %144, i64 %147
  store i16 34, ptr %148, align 2, !tbaa !136
  br label %149

149:                                              ; preds = %142, %80
  %150 = load ptr, ptr %11, align 8, !tbaa !57
  %151 = getelementptr inbounds ptr, ptr %150, i64 41
  %152 = load ptr, ptr %151, align 8
  %153 = tail call noundef ptr %152(ptr noundef nonnull align 8 dereferenceable(56) %11)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %210, label %155

155:                                              ; preds = %149
  %156 = load ptr, ptr %46, align 8, !tbaa !133
  %157 = load i32, ptr %156, align 8, !tbaa !134
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %156, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !203
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %156, i32 noundef 1)
  br label %162

162:                                              ; preds = %155, %161
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %156, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !135
  %165 = load i32, ptr %156, align 8, !tbaa !134
  %166 = add i32 %165, 1
  store i32 %166, ptr %156, align 8, !tbaa !134
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds i16, ptr %164, i64 %167
  store i16 32, ptr %168, align 2, !tbaa !136
  %169 = load ptr, ptr %46, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %169, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE)
  %170 = load ptr, ptr %46, align 8, !tbaa !133
  %171 = load i32, ptr %170, align 8, !tbaa !134
  %172 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %170, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !203
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %170, i32 noundef 1)
  br label %176

176:                                              ; preds = %162, %175
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %170, i64 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !135
  %179 = load i32, ptr %170, align 8, !tbaa !134
  %180 = add i32 %179, 1
  store i32 %180, ptr %170, align 8, !tbaa !134
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds i16, ptr %178, i64 %181
  store i16 32, ptr %182, align 2, !tbaa !136
  %183 = load ptr, ptr %46, align 8, !tbaa !133
  %184 = load i32, ptr %183, align 8, !tbaa !134
  %185 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %183, i64 0, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !203
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %183, i32 noundef 1)
  br label %189

189:                                              ; preds = %176, %188
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %183, i64 0, i32 6
  %191 = load ptr, ptr %190, align 8, !tbaa !135
  %192 = load i32, ptr %183, align 8, !tbaa !134
  %193 = add i32 %192, 1
  store i32 %193, ptr %183, align 8, !tbaa !134
  %194 = zext i32 %192 to i64
  %195 = getelementptr inbounds i16, ptr %191, i64 %194
  store i16 34, ptr %195, align 2, !tbaa !136
  %196 = load ptr, ptr %46, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %196, ptr noundef nonnull %153)
  %197 = load ptr, ptr %46, align 8, !tbaa !133
  %198 = load i32, ptr %197, align 8, !tbaa !134
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %197, i64 0, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !203
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %197, i32 noundef 1)
  br label %203

203:                                              ; preds = %189, %202
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %197, i64 0, i32 6
  %205 = load ptr, ptr %204, align 8, !tbaa !135
  %206 = load i32, ptr %197, align 8, !tbaa !134
  %207 = add i32 %206, 1
  store i32 %207, ptr %197, align 8, !tbaa !134
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds i16, ptr %205, i64 %208
  store i16 34, ptr %209, align 2, !tbaa !136
  br label %210

210:                                              ; preds = %203, %149
  %211 = load ptr, ptr %46, align 8, !tbaa !133
  %212 = load i32, ptr %211, align 8, !tbaa !134
  %213 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %211, i64 0, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !203
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %211, i32 noundef 1)
  br label %217

217:                                              ; preds = %210, %216
  %218 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %211, i64 0, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !135
  %220 = load i32, ptr %211, align 8, !tbaa !134
  %221 = add i32 %220, 1
  store i32 %221, ptr %211, align 8, !tbaa !134
  %222 = zext i32 %220 to i64
  %223 = getelementptr inbounds i16, ptr %219, i64 %222
  store i16 62, ptr %223, align 2, !tbaa !136
  br label %224

224:                                              ; preds = %217, %42
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #18 align 2 !prof !55 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) unnamed_addr #4 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !201
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(130) %4)
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = load i32, ptr %8, align 8, !tbaa !134
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %8, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !203
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %8, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = load i32, ptr %8, align 8, !tbaa !134
  %18 = add i32 %17, 1
  store i32 %18, ptr %8, align 8, !tbaa !134
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds i16, ptr %16, i64 %19
  store i16 60, ptr %20, align 2, !tbaa !136
  %21 = load ptr, ptr %7, align 8, !tbaa !133
  %22 = load i32, ptr %21, align 8, !tbaa !134
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !203
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 1)
  br label %27

27:                                               ; preds = %14, %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = load i32, ptr %21, align 8, !tbaa !134
  %31 = add i32 %30, 1
  store i32 %31, ptr %21, align 8, !tbaa !134
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i16, ptr %29, i64 %32
  store i16 33, ptr %33, align 2, !tbaa !136
  %34 = load ptr, ptr %7, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgAttListStringE)
  %35 = load ptr, ptr %7, align 8, !tbaa !133
  %36 = load i32, ptr %35, align 8, !tbaa !134
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %35, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !203
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef 1)
  br label %41

41:                                               ; preds = %27, %40
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %35, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !135
  %44 = load i32, ptr %35, align 8, !tbaa !134
  %45 = add i32 %44, 1
  store i32 %45, ptr %35, align 8, !tbaa !134
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i16, ptr %43, i64 %46
  store i16 32, ptr %47, align 2, !tbaa !136
  %48 = load ptr, ptr %7, align 8, !tbaa !133
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !204
  %51 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %50)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %48, ptr noundef %51)
  br label %52

52:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) unnamed_addr #18 align 2 !prof !55 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #17 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %3, i64 0, i32 11
  store i8 1, ptr %4, align 8, !tbaa !251
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #17 align 2 !prof !55 {
  %2 = getelementptr inbounds i8, ptr %0, i64 80
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %3, i64 0, i32 11
  store i8 1, ptr %4, align 8, !tbaa !251
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #19 align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #19 align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !57
  %9 = getelementptr inbounds ptr, ptr %8, i64 48
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
  %11 = load ptr, ptr %4, align 8, !tbaa !237
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds ptr, ptr %12, i64 46
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %2)
  br label %15

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #18 align 2 !prof !55 {
  %4 = getelementptr inbounds i8, ptr %0, i64 56
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !57
  %9 = getelementptr inbounds ptr, ptr %8, i64 48
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
  %11 = load ptr, ptr %4, align 8, !tbaa !237
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds ptr, ptr %12, i64 46
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %2)
  br label %15

15:                                               ; preds = %3, %7
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711PSVIHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711PSVIHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @llvm.trap() #25
  unreachable
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !265
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !57
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !123, !range !85, !noundef !86
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !125
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !127
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(293) %15) #24
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !125
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !268

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = load ptr, ptr %28, align 8, !tbaa !57
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !125
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !123, !range !85, !noundef !86
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !57
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(293) %23) #24
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !127
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !82
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !125
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !125
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !123, !range !85, !noundef !86
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !127
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(293) %18) #24
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !127
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !82
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !125
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !269
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !125
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !123, !range !85, !noundef !86
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !127
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !57
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(293) %22) #24
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !125
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !127
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !82
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !270

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !127
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !82
  store i32 %30, ptr %3, align 4, !tbaa !125
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !125
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !125
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !123, !range !85, !noundef !86
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(293) %15) #24
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !123, !range !85, !noundef !86
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !125
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !127
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(293) %15) #24
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !125
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !271

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = load ptr, ptr %28, align 8, !tbaa !57
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !265
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !57
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !125
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !125
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !82
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !127
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !82
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !82
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !272

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !128
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !127
  %52 = load ptr, ptr %49, align 8, !tbaa !57
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !127
  store i32 %12, ptr %6, align 8, !tbaa !126
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !117
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !273

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !117
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !273

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #24
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef 116, ptr noundef %9)
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
  br i1 %15, label %30, label %16, !prof !273

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
  %24 = load ptr, ptr %19, align 8, !tbaa !93
  %25 = add nuw nsw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr %27, ptr %28, align 8, !tbaa !82
  %29 = icmp eq i64 %25, %21
  br i1 %29, label %30, label %22, !llvm.loop !274

30:                                               ; preds = %22, %16, %13
  %31 = add i32 %4, -1
  store i32 %31, ptr %3, align 4, !tbaa !117
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !265
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !57
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #24
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !117
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !118
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !186

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !117
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !91
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = load ptr, ptr %28, align 8, !tbaa !57
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !93
  store i32 %13, ptr %6, align 8, !tbaa !118
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !93
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !82
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !275

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!39 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, ptr @_ZN11xercesc_2_715GrammarResolverD1Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!41 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser10initializeEv, ptr @_ZN11xercesc_2_717AbstractDOMParser5resetEv, i64 1}
!45 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_717AbstractDOMParser7cleanUpEv, i64 1}
!46 = !{ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgrD1Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser5resetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv, i64 2}
!48 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, i64 550}
!49 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, i64 550}
!50 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser5resetEv, i64 1}
!51 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv, i64 1}
!53 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!"function_entry_count", i64 1}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !59, i64 0}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!61, !67, i64 40}
!61 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !62, i64 0, !63, i64 8, !64, i64 16, !65, i64 24, !66, i64 32, !67, i64 40, !67, i64 41, !67, i64 42, !67, i64 43, !67, i64 44, !67, i64 45, !67, i64 46, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !69, i64 120, !69, i64 128, !69, i64 136, !69, i64 144, !69, i64 152, !70, i64 160, !69, i64 184, !69, i64 192}
!62 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!63 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!64 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!65 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!66 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!67 = !{!"bool", !68, i64 0}
!68 = !{!"omnipotent char", !59, i64 0}
!69 = !{!"any pointer", !68, i64 0}
!70 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !71, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!"int", !68, i64 0}
!72 = !{!61, !67, i64 41}
!73 = !{!61, !67, i64 42}
!74 = !{!61, !67, i64 43}
!75 = !{!61, !67, i64 44}
!76 = !{!61, !67, i64 45}
!77 = !{!61, !67, i64 46}
!78 = !{!61, !69, i64 136}
!79 = !{!61, !69, i64 144}
!80 = !{!61, !69, i64 152}
!81 = !{!"branch_weights", i32 1, i32 0}
!82 = !{!69, !69, i64 0}
!83 = !{!61, !69, i64 192}
!84 = !{!61, !69, i64 112}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!61, !69, i64 88}
!88 = !{!"branch_weights", i32 0, i32 1}
!89 = !{!"VP", i32 0, i64 1, i64 -7911791174232846254, i64 1}
!90 = !{!61, !69, i64 96}
!91 = !{!92, !69, i64 24}
!92 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEE", !67, i64 0, !71, i64 4, !71, i64 8, !69, i64 16, !69, i64 24}
!93 = !{!92, !69, i64 16}
!94 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!95 = !{!61, !69, i64 48}
!96 = !{!"VP", i32 0, i64 1, i64 7919472901623622104, i64 1}
!97 = !{!61, !69, i64 120}
!98 = !{!61, !69, i64 56}
!99 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!100 = !{!101, !69, i64 8}
!101 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !67, i64 0, !67, i64 1, !67, i64 2, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72}
!102 = !{!61, !69, i64 128}
!103 = !{!104, !69, i64 120}
!104 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !105, i64 0, !106, i64 8, !67, i64 16, !67, i64 17, !67, i64 18, !67, i64 19, !67, i64 20, !67, i64 21, !67, i64 22, !67, i64 23, !67, i64 24, !67, i64 25, !67, i64 26, !67, i64 27, !67, i64 28, !67, i64 29, !67, i64 30, !67, i64 31, !67, i64 32, !67, i64 33, !67, i64 34, !67, i64 35, !67, i64 36, !67, i64 37, !67, i64 38, !71, i64 40, !71, i64 44, !71, i64 48, !71, i64 52, !71, i64 56, !71, i64 60, !71, i64 64, !71, i64 68, !69, i64 72, !71, i64 80, !71, i64 84, !71, i64 88, !71, i64 92, !71, i64 96, !69, i64 104, !69, i64 112, !69, i64 120, !69, i64 128, !69, i64 136, !69, i64 144, !69, i64 152, !69, i64 160, !69, i64 168, !67, i64 176, !107, i64 184, !69, i64 264, !110, i64 272, !69, i64 280, !69, i64 288, !69, i64 296, !69, i64 304, !69, i64 312, !69, i64 320, !69, i64 328, !69, i64 336, !69, i64 344, !109, i64 352, !69, i64 360, !70, i64 368, !111, i64 392, !111, i64 432, !111, i64 472, !111, i64 512, !111, i64 552, !111, i64 592, !111, i64 632, !112, i64 672}
!105 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!106 = !{!"long", !68, i64 0}
!107 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !108, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !71, i64 40, !69, i64 48, !67, i64 56, !109, i64 60, !67, i64 64, !69, i64 72}
!108 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!109 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !68, i64 0}
!110 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !68, i64 0}
!111 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !71, i64 0, !71, i64 4, !71, i64 8, !67, i64 12, !69, i64 16, !69, i64 24, !69, i64 32}
!112 = !{!"_ZTSN11xercesc_2_79ElemStackE", !71, i64 0, !71, i64 4, !113, i64 8, !69, i64 48, !71, i64 56, !71, i64 60, !71, i64 64, !71, i64 68, !71, i64 72, !71, i64 76, !71, i64 80, !69, i64 88, !69, i64 96}
!113 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !114, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !71, i64 32, !71, i64 36}
!114 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!115 = !{!104, !69, i64 128}
!116 = !{!92, !67, i64 0}
!117 = !{!92, !71, i64 4}
!118 = !{!92, !71, i64 8}
!119 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!120 = !{!"VP", i32 1, i64 1, i64 512, i64 1}
!121 = !{!"function_entry_count", i64 2}
!122 = !{!"branch_weights", i32 0, i32 2}
!123 = !{!124, !67, i64 8}
!124 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15DOMDocumentImplEEE", !67, i64 8, !71, i64 12, !71, i64 16, !69, i64 24, !69, i64 32}
!125 = !{!124, !71, i64 12}
!126 = !{!124, !71, i64 16}
!127 = !{!124, !69, i64 24}
!128 = !{!124, !69, i64 32}
!129 = distinct !{!129, !130, !131}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!"llvm.loop.unroll.disable"}
!132 = !{!"VP", i32 0, i64 2, i64 5830809306095649304, i64 2}
!133 = !{!61, !69, i64 184}
!134 = !{!111, !71, i64 0}
!135 = !{!111, !69, i64 32}
!136 = !{!137, !137, i64 0}
!137 = !{!"short", !68, i64 0}
!138 = !{!"function_entry_count", i64 551}
!139 = !{!104, !69, i64 264}
!140 = !{!104, !67, i64 18}
!141 = !{!104, !67, i64 33}
!142 = !{!104, !67, i64 34}
!143 = !{!104, !67, i64 19}
!144 = !{!104, !67, i64 20}
!145 = !{!104, !110, i64 272}
!146 = !{!104, !67, i64 26}
!147 = !{!104, !67, i64 27}
!148 = !{!104, !67, i64 28}
!149 = !{!104, !71, i64 40}
!150 = !{!104, !69, i64 328}
!151 = !{!104, !69, i64 336}
!152 = !{!104, !69, i64 344}
!153 = !{!104, !67, i64 31}
!154 = !{!104, !67, i64 17}
!155 = !{!104, !67, i64 16}
!156 = !{!104, !67, i64 36}
!157 = !{!104, !67, i64 37}
!158 = !{!104, !67, i64 38}
!159 = !{!104, !69, i64 160}
!160 = !{!"branch_weights", i32 0, i32 2, i32 0}
!161 = !{!104, !67, i64 24}
!162 = !{!104, !69, i64 360}
!163 = distinct !{!163, !130, !131}
!164 = !{!104, !71, i64 44}
!165 = !{!104, !71, i64 48}
!166 = !{!107, !67, i64 64}
!167 = !{!"VP", i32 0, i64 1, i64 -4721723792287405904, i64 1}
!168 = !{!169, !170, i64 48}
!169 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !170, i64 48, !171, i64 52, !67, i64 56, !69, i64 64, !69, i64 72}
!170 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !68, i64 0}
!171 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !68, i64 0}
!172 = !{!169, !171, i64 52}
!173 = !{!174, !177, i64 36}
!174 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !175, i64 0, !177, i64 36, !137, i64 40, !69, i64 48}
!175 = !{!"_ZTSN11xercesc_2_78XSObjectE", !176, i64 8, !69, i64 16, !69, i64 24, !71, i64 32}
!176 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !68, i64 0}
!177 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !68, i64 0}
!178 = !{!179, !69, i64 80}
!179 = !{!"_ZTSN11xercesc_2_711PSVIElementE", !169, i64 0, !69, i64 80, !69, i64 88, !69, i64 96}
!180 = !{!169, !69, i64 32}
!181 = !{!169, !69, i64 24}
!182 = !{!61, !69, i64 64}
!183 = !{!61, !69, i64 72}
!184 = distinct !{!184, !130, !131}
!185 = !{!"function_entry_count", i64 550}
!186 = !{!"branch_weights", i32 0, i32 550}
!187 = !{!188, !67, i64 292}
!188 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !189, i64 0, !194, i64 32, !195, i64 48, !69, i64 80, !69, i64 88, !69, i64 96, !67, i64 104, !69, i64 112, !69, i64 120, !69, i64 128, !113, i64 136, !69, i64 176, !69, i64 184, !69, i64 192, !106, i64 200, !69, i64 208, !69, i64 216, !69, i64 224, !69, i64 232, !69, i64 240, !69, i64 248, !69, i64 256, !69, i64 264, !69, i64 272, !69, i64 280, !71, i64 288, !67, i64 292}
!189 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !190, i64 0, !191, i64 8, !192, i64 16, !193, i64 24}
!190 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!191 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!192 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!193 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!194 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !69, i64 0, !137, i64 8}
!195 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !69, i64 0, !69, i64 8, !196, i64 16}
!196 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !197, i64 0, !69, i64 8}
!197 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!198 = !{!"VP", i32 0, i64 1, i64 5022939057761369713, i64 1}
!199 = !{!"VP", i32 0, i64 1, i64 2650720542985320692, i64 1}
!200 = !{!"VP", i32 0, i64 1, i64 4501482330384957873, i64 1}
!201 = !{!61, !69, i64 104}
!202 = !{!104, !71, i64 52}
!203 = !{!111, !71, i64 4}
!204 = !{!205, !69, i64 16}
!205 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !114, i64 0, !69, i64 8, !69, i64 16, !206, i64 24, !71, i64 28, !67, i64 32}
!206 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !68, i64 0}
!207 = !{!208, !69, i64 32}
!208 = !{!"_ZTSN11xercesc_2_75QNameE", !114, i64 0, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48}
!209 = !{!210, !69, i64 24}
!210 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !67, i64 0, !211, i64 4, !71, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !67, i64 48}
!211 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !68, i64 0}
!212 = !{!208, !71, i64 20}
!213 = distinct !{!213, !130, !131}
!214 = !{!104, !71, i64 64}
!215 = !{!210, !69, i64 16}
!216 = !{!210, !211, i64 4}
!217 = !{!188, !69, i64 80}
!218 = !{!194, !137, i64 8}
!219 = !{!210, !67, i64 0}
!220 = distinct !{!220, !130, !131}
!221 = !{!222, !223, i64 8}
!222 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !114, i64 0, !223, i64 8, !211, i64 12, !224, i64 16, !67, i64 20, !67, i64 21, !71, i64 24, !69, i64 32, !69, i64 40, !69, i64 48}
!223 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !68, i64 0}
!224 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !68, i64 0}
!225 = !{!71, !71, i64 0}
!226 = !{!222, !69, i64 32}
!227 = !{!222, !211, i64 12}
!228 = distinct !{!228, !130, !131}
!229 = !{!"function_entry_count", i64 1366334}
!230 = !{!231, !71, i64 12}
!231 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !67, i64 8, !71, i64 12, !71, i64 16, !69, i64 24, !69, i64 32}
!232 = !{!"branch_weights", i32 1366334, i32 0}
!233 = !{!231, !69, i64 32}
!234 = !{!231, !69, i64 24}
!235 = !{!236, !69, i64 24}
!236 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !114, i64 0, !71, i64 8, !71, i64 12, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64}
!237 = !{!61, !69, i64 80}
!238 = !{!"VP", i32 0, i64 1, i64 4426790994008356700, i64 1}
!239 = !{!"VP", i32 0, i64 1, i64 728799260578053474, i64 1}
!240 = !{!"VP", i32 0, i64 1, i64 -5449259795958750030, i64 1}
!241 = !{!222, !69, i64 40}
!242 = distinct !{!242, !130, !131}
!243 = !{!"function_entry_count", i64 789922}
!244 = !{!"branch_weights", i32 0, i32 789922}
!245 = !{!"branch_weights", i32 284, i32 789638}
!246 = !{!"branch_weights", i32 789638, i32 41628303}
!247 = distinct !{!247, !130, !131}
!248 = !{!"branch_weights", i32 789636, i32 2}
!249 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!250 = distinct !{!250, !130, !131}
!251 = !{!252, !67, i64 128}
!252 = !{!"_ZTSN11xercesc_2_719DOMDocumentTypeImplE", !253, i64 0, !194, i64 8, !195, i64 24, !254, i64 56, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !69, i64 120, !67, i64 128, !67, i64 129}
!253 = !{!"_ZTSN11xercesc_2_715DOMDocumentTypeE", !193, i64 0}
!254 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !69, i64 0, !69, i64 8}
!255 = !{!236, !69, i64 40}
!256 = !{!236, !69, i64 48}
!257 = !{!236, !69, i64 32}
!258 = !{!236, !69, i64 56}
!259 = !{!236, !69, i64 16}
!260 = !{!261, !69, i64 16}
!261 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !114, i64 0, !71, i64 8, !71, i64 12, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48}
!262 = !{!261, !69, i64 24}
!263 = !{!261, !69, i64 32}
!264 = !{!261, !69, i64 40}
!265 = !{!266, !69, i64 40}
!266 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !267, i64 8, !69, i64 16, !71, i64 24, !69, i64 32, !69, i64 40}
!267 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !68, i64 0}
!268 = distinct !{!268, !130, !131}
!269 = distinct !{!269, !130, !131}
!270 = distinct !{!270, !130, !131}
!271 = distinct !{!271, !130, !131}
!272 = distinct !{!272, !130, !131}
!273 = !{!"branch_weights", i32 550, i32 0}
!274 = distinct !{!274, !130, !131}
!275 = distinct !{!275, !130, !131}
