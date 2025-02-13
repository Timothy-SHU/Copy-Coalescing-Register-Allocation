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
%"struct.xercesc_2_7::PrefMapElem" = type { i32, i32 }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::ValueVectorOf.0" = type { i8, i32, i32, ptr, ptr }
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
%"class.xercesc_2_7::DOMAttrImpl" = type { %"class.xercesc_2_7::DOMAttr", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr }
%"class.xercesc_2_7::DOMAttr" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.1" }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::XMLStringPool::PoolElem" = type { i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_77LocatorD2Ev = comdat any

$_ZN11xercesc_2_716XSDErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjED2Ev = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZNK11xercesc_2_710XMLScanner10getLocatorEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj = comdat any

$_ZNK11xercesc_2_710XMLScanner11getPrefixIdEPKt = comdat any

$_ZNK11xercesc_2_710XMLScanner19getNamespaceContextEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE15containsElementERKjj = comdat any

$_ZNK11xercesc_2_710XMLScanner14getPrefixForIdEj = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79XMLBufBid3setEPKtj = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getTypeEv = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb = comdat any

$_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_ = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_79ElemStack11getPrefixIdEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool5getIdEPKt = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

$_ZNK11xercesc_2_79ElemStack14getPrefixForIdEj = comdat any

$_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

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
@_ZN11xercesc_2_713SchemaSymbols16fgELT_ANNOTATIONE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !135
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !135
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !135
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !135
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !138
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  store i32 -1, ptr %10, align 4, !tbaa !157
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  store i32 -1, ptr %11, align 8, !tbaa !158
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  store i32 -1, ptr %12, align 4, !tbaa !159
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 1023, ptr noundef %2) #14
          to label %16 unwind label %26

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef null) #14
          to label %18 unwind label %28

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 10
  invoke void @_ZN11xercesc_2_710XSDLocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %19) #14
          to label %20 unwind label %30

20:                                               ; preds = %18
  %21 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %2) #14
          to label %22 unwind label %32

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 16, ptr noundef %2, i1 noundef zeroext false) #14
          to label %23 unwind label %34

23:                                               ; preds = %22
  store ptr %21, ptr %14, align 8, !tbaa !160
  tail call void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull %5) #14
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0) #14
          to label %24 unwind label %32

24:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true) #14
          to label %25 unwind label %32

25:                                               ; preds = %24
  ret void

26:                                               ; preds = %4
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %42

28:                                               ; preds = %16
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %40

30:                                               ; preds = %18
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %38

32:                                               ; preds = %24, %23, %20
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %22
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %2) #15
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %35, %34 ]
  tail call void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %19) #15
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #15
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %29, %28 ]
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #15
  br label %42

42:                                               ; preds = %40, %26
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %27, %26 ]
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #15
  resume { ptr, i32 } %43
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !161 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i32 0, ptr %0, align 8, !tbaa !162
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !163
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !164
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !165
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !166
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !135
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !167
  store i16 0, ptr %16, align 2, !tbaa !168
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSDLocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 !prof !170 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i8 %5, ptr %0, align 8, !tbaa !171
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !173
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !174
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !175
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !176
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !135
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #14
  store ptr %15, ptr %8, align 8, !tbaa !175
  %16 = load i32, ptr %7, align 8, !tbaa !174
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !178
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !179 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !177 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = load ptr, ptr %3, align 8, !tbaa !135
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 !prof !134 {
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !135
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !135
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !135
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_712XSDDOMParserE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !135
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 10
  tail call void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #15
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #15
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = load ptr, ptr %3, align 8, !tbaa !135
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_712XSDDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_712XSDDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSDDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_712XSDDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_712XSDDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_712XSDDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_712XSDDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !180 {
  %4 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %6) #14
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %8 = call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #14
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !184
  %13 = load ptr, ptr %8, align 8, !tbaa !135
  %14 = getelementptr inbounds ptr, ptr %13, i64 40
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1, ptr noundef %2, i64 noundef %10, i64 noundef %12) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser15startAnnotationERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !186 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 60) #14
  %9 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %9) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 32) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !160
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #14
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  br label %21

15:                                               ; preds = %40, %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !181
  %18 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner19getNamespaceContextEv(ptr noundef nonnull align 8 dereferenceable(776) %17) #14
  %19 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %45

21:                                               ; preds = %13, %40
  %22 = phi i32 [ 0, %13 ], [ %42, %40 ]
  %23 = call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %22) #14
  %24 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %23) #14
  %25 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %23) #14
  %26 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %25, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load ptr, ptr %10, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %29 = load ptr, ptr %14, align 8, !tbaa !181
  %30 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner11getPrefixIdEPKt(ptr noundef nonnull align 8 dereferenceable(776) %29, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
  store i32 %30, ptr %5, align 4, !tbaa !187
  call void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %40

31:                                               ; preds = %21
  %32 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %23) #14
  %33 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load ptr, ptr %10, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %37 = load ptr, ptr %14, align 8, !tbaa !181
  %38 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %23) #14
  %39 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner11getPrefixIdEPKt(ptr noundef nonnull align 8 dereferenceable(776) %37, ptr noundef %38) #14
  store i32 %39, ptr %6, align 4, !tbaa !187
  call void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 4 dereferenceable(4) %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %40

40:                                               ; preds = %31, %35, %27
  %41 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %23) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %41) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 61) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 34) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %24) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 34) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 32) #14
  %42 = add nuw i32 %22, 1
  %43 = icmp eq i32 %42, %3
  br i1 %43, label %15, label %21, !llvm.loop !188

44:                                               ; preds = %66, %15
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 62) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 10) #14
  ret void

45:                                               ; preds = %15, %66
  %46 = phi i32 [ %67, %66 ], [ 0, %15 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %46) #14
  %48 = load ptr, ptr %47, align 8, !tbaa !190
  %49 = load i32, ptr %48, align 4, !tbaa !191
  store i32 %49, ptr %7, align 4, !tbaa !187
  %50 = load ptr, ptr %10, align 8, !tbaa !160
  %51 = call noundef zeroext i1 @_ZN11xercesc_2_713ValueVectorOfIjE15containsElementERKjj(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 0) #14
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %16, align 8, !tbaa !181
  %54 = load i32, ptr %7, align 4, !tbaa !187
  %55 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner14getPrefixForIdEj(ptr noundef nonnull align 8 dereferenceable(776) %53, i32 noundef %54) #14
  %56 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %55, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br label %59

58:                                               ; preds = %52
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %55) #14
  br label %59

59:                                               ; preds = %58, %57
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 61) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 34) #14
  %60 = load ptr, ptr %16, align 8, !tbaa !181
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %46) #14
  %62 = load ptr, ptr %61, align 8, !tbaa !190
  %63 = getelementptr inbounds %"struct.xercesc_2_7::PrefMapElem", ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !193
  %65 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %60, i32 noundef %64) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %65) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 34) #14
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 32) #14
  br label %66

66:                                               ; preds = %59, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %67 = add nuw i32 %46, 1
  %68 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %45, label %44, !llvm.loop !194
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !195 {
  %3 = load i32, ptr %0, align 8, !tbaa !162
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !163
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !196

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %8 = load i32, ptr %0, align 8, !tbaa !162
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !162
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !168
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !197 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !198

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !168
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !199

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !168
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !200, !llvm.loop !201

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !162
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !163
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !202

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #14
  %21 = load i32, ptr %0, align 8, !tbaa !162
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !167
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !162
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !162
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !203 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !209 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !210
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !212

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !214
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !190
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !215 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !219 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !220

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !168
  %8 = load i16, ptr %1, align 2, !tbaa !168
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !221

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !222

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !168
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !223

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !224

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !168
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !225

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !226

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !168
  %28 = load i16, ptr %26, align 2, !tbaa !168
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !227, !llvm.loop !228

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 !prof !231 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #14
  %3 = load i32, ptr %1, align 4, !tbaa !187
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !173
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !187
  %10 = load i32, ptr %6, align 4, !tbaa !173
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner11getPrefixIdEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79ElemStack11getPrefixIdEPKt(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %1) #14
  ret i32 %4
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner19getNamespaceContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79ElemStack15getNamespaceMapEv(ptr noundef nonnull align 8 dereferenceable(104) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !232
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !232
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !234
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !235
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_713ValueVectorOfIjE15containsElementERKjj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !236 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !173
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %27, !prof !237

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !175
  %10 = load i32, ptr %1, align 4, !tbaa !187
  %11 = zext i32 %2 to i64
  %12 = zext i32 %5 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !187
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %27, label %16, !prof !238

16:                                               ; preds = %7, %21
  %17 = phi i64 [ %18, %21 ], [ %11, %7 ]
  %18 = add nuw nsw i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %5, %19
  br i1 %20, label %25, label %21, !prof !239, !llvm.loop !240

21:                                               ; preds = %16
  %22 = getelementptr inbounds i32, ptr %9, i64 %18
  %23 = load i32, ptr %22, align 4, !tbaa !187
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %25, label %16, !prof !241, !llvm.loop !240

25:                                               ; preds = %16, %21
  %26 = icmp ult i64 %18, %12
  br label %27

27:                                               ; preds = %25, %7, %3
  %28 = phi i1 [ false, %3 ], [ true, %7 ], [ %26, %25 ]
  ret i1 %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner14getPrefixForIdEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = tail call noundef ptr @_ZNK11xercesc_2_79ElemStack14getPrefixForIdEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %1) #14
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser22startAnnotationElementERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !186 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 60) #14
  %6 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %6) #14
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %4
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 62) #14
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i32 [ %14, %9 ], [ 0, %4 ]
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %10) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 32) #14
  %12 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %11) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %12) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 61) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 34) #14
  %13 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %11) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %13) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 34) #14
  %14 = add nuw i32 %10, 1
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %8, label %9, !llvm.loop !242
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20endAnnotationElementERKNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !186 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  br i1 %2, label %5, label %20

5:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 10) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 60) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 47) #14
  %6 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %6) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 62) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %10 = load ptr, ptr %8, align 8, !tbaa !135
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %9) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !244
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 17
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %13) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  br label %22

20:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 60) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 47) #14
  %21 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %21) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 62) #14
  br label %22

22:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !245 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = load i32, ptr %0, align 8, !tbaa !162
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !168
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !246 {
  store i32 0, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  store i16 0, ptr %3, align 2, !tbaa !168
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !247
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !248 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !257
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !208 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !258
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %9 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %10 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !159
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !159
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !157
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %26, !prof !259

18:                                               ; preds = %8
  %19 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %19, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgELT_ANNOTATIONE) #14
  br i1 %20, label %21, label %35, !prof !260

21:                                               ; preds = %18
  %22 = tail call noundef ptr @_ZNK11xercesc_2_715XercesDOMParser10getURITextEj(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %2) #14
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %22, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #14
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, ptr %12, align 4, !tbaa !159
  store i32 %25, ptr %15, align 4, !tbaa !157
  tail call void @_ZN11xercesc_2_712XSDDOMParser15startAnnotationERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5) #14
  br label %35

26:                                               ; preds = %8
  %27 = icmp eq i32 %13, %16
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  store i32 %14, ptr %29, align 8, !tbaa !158
  tail call void @_ZN11xercesc_2_712XSDDOMParser22startAnnotationElementERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5) #14
  br label %35

30:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_712XSDDOMParser22startAnnotationElementERKNS_14XMLElementDeclERKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5) #14
  br i1 %6, label %31, label %256

31:                                               ; preds = %30
  %32 = load ptr, ptr %0, align 8, !tbaa !135
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %7, ptr noundef %3) #14
  br label %256

35:                                               ; preds = %18, %21, %24, %28
  %36 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  %38 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %37) #14
  %39 = icmp eq i32 %38, %2
  br i1 %39, label %70, label %40, !prof !260

40:                                               ; preds = %35
  %41 = icmp eq ptr %3, null
  br i1 %41, label %62, label %42, !prof !260

42:                                               ; preds = %40
  %43 = load i16, ptr %3, align 2, !tbaa !168
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %62, label %45, !prof !259

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %46 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %46) #14
  invoke void @_ZN11xercesc_2_79XMLBufBid3setEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %3, i32 noundef 0) #14
          to label %47 unwind label %60

47:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %9, i16 noundef zeroext 58) #14
          to label %48 unwind label %60

48:                                               ; preds = %47
  %49 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %49, i32 noundef 0) #14
          to label %50 unwind label %60

50:                                               ; preds = %48
  %51 = load ptr, ptr %36, align 8, !tbaa !181
  %52 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %51, i32 noundef %2) #14
          to label %53 unwind label %60

53:                                               ; preds = %50
  %54 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  %55 = load ptr, ptr %0, align 8, !tbaa !135
  %56 = getelementptr inbounds ptr, ptr %55, i64 35
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %52, ptr noundef %54) #14
          to label %59 unwind label %60

59:                                               ; preds = %53
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  br label %76

60:                                               ; preds = %53, %50, %48, %47, %45
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  br label %257

62:                                               ; preds = %42, %40
  %63 = load ptr, ptr %36, align 8, !tbaa !181
  %64 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %63, i32 noundef %2) #14
  %65 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %66 = load ptr, ptr %0, align 8, !tbaa !135
  %67 = getelementptr inbounds ptr, ptr %66, i64 35
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %64, ptr noundef %65) #14
  br label %76

70:                                               ; preds = %35
  %71 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %72 = load ptr, ptr %0, align 8, !tbaa !135
  %73 = getelementptr inbounds ptr, ptr %72, i64 35
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef null, ptr noundef %71) #14
  br label %76

76:                                               ; preds = %59, %62, %70
  %77 = phi ptr [ %58, %59 ], [ %69, %62 ], [ %75, %70 ]
  %78 = icmp eq i32 %5, 0
  br i1 %78, label %81, label %79, !prof !261

79:                                               ; preds = %76
  %80 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  br label %86

81:                                               ; preds = %140, %76
  %82 = load ptr, ptr %1, align 8, !tbaa !135
  %83 = getelementptr inbounds ptr, ptr %82, i64 8
  %84 = load ptr, ptr %83, align 8
  %85 = call noundef zeroext i1 %84(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  br i1 %85, label %147, label %241, !prof !260

86:                                               ; preds = %79, %140
  %87 = phi i32 [ 0, %79 ], [ %145, %140 ]
  %88 = call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %87) #14
  %89 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %88) #14
  %90 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %88) #14
  %91 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %90, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %91, label %92, label %95, !prof !262

92:                                               ; preds = %86
  %93 = load ptr, ptr %36, align 8, !tbaa !181
  %94 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %93) #14
  br label %95

95:                                               ; preds = %92, %86
  %96 = phi i32 [ %94, %92 ], [ %89, %86 ]
  %97 = load ptr, ptr %36, align 8, !tbaa !181
  %98 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %97) #14
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %103, label %100, !prof !263

100:                                              ; preds = %95
  %101 = load ptr, ptr %36, align 8, !tbaa !181
  %102 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %101, i32 noundef %96) #14
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi ptr [ %102, %100 ], [ null, %95 ]
  %105 = load ptr, ptr %80, align 8, !tbaa !243
  %106 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %88) #14
  %107 = load ptr, ptr %105, align 8, !tbaa !135
  %108 = getelementptr inbounds ptr, ptr %107, i64 17
  %109 = load ptr, ptr %108, align 8
  %110 = call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(293) %105, ptr noundef %104, ptr noundef %106) #14
  %111 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %88) #14
  %112 = load ptr, ptr %110, align 8, !tbaa !135
  %113 = getelementptr inbounds ptr, ptr %112, i64 43
  %114 = load ptr, ptr %113, align 8
  call void %114(ptr noundef nonnull align 8 dereferenceable(72) %110, ptr noundef %111) #14
  %115 = load ptr, ptr %77, align 8, !tbaa !135
  %116 = getelementptr inbounds ptr, ptr %115, i64 52
  %117 = load ptr, ptr %116, align 8
  %118 = call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(96) %77, ptr noundef nonnull %110) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120, !prof !264

120:                                              ; preds = %103
  %121 = load ptr, ptr %118, align 8, !tbaa !135
  %122 = getelementptr inbounds ptr, ptr %121, i64 39
  %123 = load ptr, ptr %122, align 8
  call void %123(ptr noundef nonnull align 8 dereferenceable(8) %118) #14
  br label %124

124:                                              ; preds = %120, %103
  %125 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %88) #14
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %140, !prof !265

127:                                              ; preds = %124
  %128 = load ptr, ptr %80, align 8, !tbaa !243
  %129 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %128, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !266
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 56, ptr noundef nonnull %128) #14
  %134 = load ptr, ptr %80, align 8, !tbaa !243
  call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %133, i32 noundef 500, ptr noundef %134) #14
  %135 = load ptr, ptr %80, align 8, !tbaa !243
  %136 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %135, i64 0, i32 3
  store ptr %133, ptr %136, align 8, !tbaa !266
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi ptr [ %133, %132 ], [ %130, %127 ]
  call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %138, ptr noundef nonnull %110) #14
  %139 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %110, i64 0, i32 1
  call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %139, i1 noundef zeroext true) #14
  br label %140

140:                                              ; preds = %137, %124
  %141 = call noundef zeroext i1 @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(49) %88) #14
  %142 = load ptr, ptr %110, align 8, !tbaa !135
  %143 = getelementptr inbounds ptr, ptr %142, i64 47
  %144 = load ptr, ptr %143, align 8
  call void %144(ptr noundef nonnull align 8 dereferenceable(72) %110, i1 noundef zeroext %141) #14
  %145 = add nuw i32 %87, 1
  %146 = icmp eq i32 %145, %5
  br i1 %146, label %81, label %86, !prof !277, !llvm.loop !278

147:                                              ; preds = %81
  %148 = load ptr, ptr %1, align 8, !tbaa !135
  %149 = getelementptr inbounds ptr, ptr %148, i64 6
  %150 = load ptr, ptr %149, align 8
  %151 = call noundef nonnull align 8 dereferenceable(16) ptr %150(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %152 = load ptr, ptr %151, align 8, !tbaa !135
  %153 = getelementptr inbounds ptr, ptr %152, i64 13
  %154 = load ptr, ptr %153, align 8
  %155 = call noundef i32 %154(ptr noundef nonnull align 8 dereferenceable(16) %151) #14
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %241, label %157

157:                                              ; preds = %147
  %158 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 26
  %159 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 17
  br label %160

160:                                              ; preds = %157, %231
  %161 = phi i32 [ 0, %157 ], [ %235, %231 ]
  %162 = load ptr, ptr %151, align 8, !tbaa !135
  %163 = getelementptr inbounds ptr, ptr %162, i64 14
  %164 = load ptr, ptr %163, align 8
  %165 = call noundef nonnull align 8 dereferenceable(56) ptr %164(ptr noundef nonnull align 8 dereferenceable(16) %151, i32 noundef %161) #14
  %166 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %165) #14
  %167 = icmp ult i32 %166, 2
  br i1 %167, label %168, label %231

168:                                              ; preds = %160
  %169 = load ptr, ptr %165, align 8, !tbaa !135
  %170 = getelementptr inbounds ptr, ptr %169, i64 5
  %171 = load ptr, ptr %170, align 8
  %172 = call noundef ptr %171(ptr noundef nonnull align 8 dereferenceable(56) %165) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %158) #14
  %173 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 -1, ptr %11, align 4, !tbaa !187
  %174 = load ptr, ptr %36, align 8, !tbaa !181
  %175 = load ptr, ptr %174, align 8, !tbaa !135
  %176 = getelementptr inbounds ptr, ptr %175, i64 7
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef i32 %177(ptr noundef nonnull align 8 dereferenceable(776) %174, ptr noundef %172, ptr noundef nonnull align 8 dereferenceable(40) %173, i16 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %11) #14
          to label %179 unwind label %184

179:                                              ; preds = %168
  %180 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %172, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #14
  br i1 %180, label %181, label %188

181:                                              ; preds = %179
  %182 = load ptr, ptr %36, align 8, !tbaa !181
  %183 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %182) #14
  br label %188

184:                                              ; preds = %168
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %229

186:                                              ; preds = %196, %193
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %229

188:                                              ; preds = %181, %179
  %189 = phi i32 [ %183, %181 ], [ %178, %179 ]
  %190 = load ptr, ptr %36, align 8, !tbaa !181
  %191 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %190) #14
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %196, label %193

193:                                              ; preds = %188
  %194 = load ptr, ptr %36, align 8, !tbaa !181
  %195 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %194, i32 noundef %189) #14
          to label %196 unwind label %186

196:                                              ; preds = %193, %188
  %197 = phi ptr [ null, %188 ], [ %195, %193 ]
  %198 = load ptr, ptr %159, align 8, !tbaa !243
  %199 = load ptr, ptr %198, align 8, !tbaa !135
  %200 = getelementptr inbounds ptr, ptr %199, i64 17
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(293) %198, ptr noundef %197, ptr noundef %172) #14
          to label %203 unwind label %186

203:                                              ; preds = %196
  %204 = load ptr, ptr %77, align 8, !tbaa !135
  %205 = getelementptr inbounds ptr, ptr %204, i64 62
  %206 = load ptr, ptr %205, align 8
  %207 = invoke noundef ptr %206(ptr noundef nonnull align 8 dereferenceable(96) %77, ptr noundef %202) #14
          to label %208 unwind label %214

208:                                              ; preds = %203
  %209 = icmp eq ptr %207, null
  br i1 %209, label %216, label %210

210:                                              ; preds = %208
  %211 = load ptr, ptr %207, align 8, !tbaa !135
  %212 = getelementptr inbounds ptr, ptr %211, i64 39
  %213 = load ptr, ptr %212, align 8
  invoke void %213(ptr noundef nonnull align 8 dereferenceable(8) %207) #14
          to label %216 unwind label %214

214:                                              ; preds = %224, %219, %210, %203
  %215 = landingpad { ptr, i32 }
          cleanup
  br label %229

216:                                              ; preds = %210, %208
  %217 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %165) #14
  %218 = icmp eq ptr %217, null
  br i1 %218, label %228, label %219

219:                                              ; preds = %216
  %220 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %165) #14
  %221 = load ptr, ptr %202, align 8, !tbaa !135
  %222 = getelementptr inbounds ptr, ptr %221, i64 43
  %223 = load ptr, ptr %222, align 8
  invoke void %223(ptr noundef nonnull align 8 dereferenceable(72) %202, ptr noundef %220) #14
          to label %224 unwind label %214

224:                                              ; preds = %219
  %225 = load ptr, ptr %202, align 8, !tbaa !135
  %226 = getelementptr inbounds ptr, ptr %225, i64 47
  %227 = load ptr, ptr %226, align 8
  invoke void %227(ptr noundef nonnull align 8 dereferenceable(72) %202, i1 noundef zeroext false) #14
          to label %228 unwind label %214

228:                                              ; preds = %224, %216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  br label %231

229:                                              ; preds = %186, %214, %184
  %230 = phi { ptr, i32 } [ %185, %184 ], [ %215, %214 ], [ %187, %186 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  br label %257

231:                                              ; preds = %160, %228
  %232 = load ptr, ptr %165, align 8, !tbaa !135
  %233 = getelementptr inbounds ptr, ptr %232, i64 6
  %234 = load ptr, ptr %233, align 8
  call void %234(ptr noundef nonnull align 8 dereferenceable(56) %165) #14
  %235 = add nuw i32 %161, 1
  %236 = load ptr, ptr %151, align 8, !tbaa !135
  %237 = getelementptr inbounds ptr, ptr %236, i64 13
  %238 = load ptr, ptr %237, align 8
  %239 = call noundef i32 %238(ptr noundef nonnull align 8 dereferenceable(16) %151) #14
  %240 = icmp ult i32 %235, %239
  br i1 %240, label %160, label %241, !llvm.loop !279

241:                                              ; preds = %231, %147, %81
  %242 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %243 = load ptr, ptr %242, align 8, !tbaa !280
  %244 = load ptr, ptr %243, align 8, !tbaa !135
  %245 = getelementptr inbounds ptr, ptr %244, i64 17
  %246 = load ptr, ptr %245, align 8
  %247 = call noundef ptr %246(ptr noundef nonnull align 8 dereferenceable(8) %243, ptr noundef %77) #14
  %248 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %249 = load ptr, ptr %248, align 8, !tbaa !281
  call void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %249, ptr noundef nonnull align 8 dereferenceable(8) %242) #14
  store ptr %77, ptr %242, align 8, !tbaa !280
  %250 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %77, ptr %250, align 8, !tbaa !244
  %251 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 1, ptr %251, align 2, !tbaa !282
  br i1 %6, label %252, label %256, !prof !260

252:                                              ; preds = %241
  %253 = load ptr, ptr %0, align 8, !tbaa !135
  %254 = getelementptr inbounds ptr, ptr %253, i64 6
  %255 = load ptr, ptr %254, align 8
  call void %255(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %7, ptr noundef %3) #14
  br label %256

256:                                              ; preds = %241, %252, %30, %31
  ret void

257:                                              ; preds = %229, %60
  %258 = phi { ptr, i32 } [ %230, %229 ], [ %61, %60 ]
  resume { ptr, i32 } %258
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !283 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_715XercesDOMParser10getURITextEj(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !284 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !285
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !286 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !190
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid3setEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %4 = load ptr, ptr %0, align 8, !tbaa !289
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %3 = load ptr, ptr %0, align 8, !tbaa !289
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %4 = load ptr, ptr %0, align 8, !tbaa !289
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !290 {
  %2 = load ptr, ptr %0, align 8, !tbaa !289
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  %5 = load i32, ptr %2, align 8, !tbaa !162
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !168
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !286 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  %4 = load ptr, ptr %0, align 8, !tbaa !289
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 !prof !291 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %3 = load i32, ptr %2, align 8, !tbaa !292
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !294
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !295 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #14
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !296
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !168
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !297 {
  %2 = load i8, ptr %0, align 8, !tbaa !298, !range !299, !noundef !300
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !301 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !302
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !306 {
  %2 = load ptr, ptr %0, align 8, !tbaa !289
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !307 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !180 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 %2, i1 zeroext %3, ptr nocapture readnone %4) unnamed_addr #2 align 2 !prof !180 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !157
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %23, !prof !260

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !158
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !159
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 -1, ptr %10, align 8, !tbaa !158
  br label %22

16:                                               ; preds = %9
  %17 = icmp eq i32 %7, %13
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 -1, ptr %6, align 4, !tbaa !157
  br label %22

19:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_712XSDDOMParser20endAnnotationElementERKNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext false) #14
  %20 = load i32, ptr %12, align 4, !tbaa !159
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %12, align 4, !tbaa !159
  br label %37

22:                                               ; preds = %18, %15
  tail call void @_ZN11xercesc_2_712XSDDOMParser20endAnnotationElementERKNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext %14) #14
  br label %23

23:                                               ; preds = %22, %5
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !159
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !159
  %27 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !280
  %29 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 15
  store ptr %28, ptr %29, align 8, !tbaa !244
  %30 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !281
  %32 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %31) #14
  store ptr %32, ptr %27, align 8, !tbaa !280
  %33 = load ptr, ptr %30, align 8, !tbaa !281
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %33) #14
  br i1 %34, label %35, label %37, !prof !309

35:                                               ; preds = %23
  %36 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %36, align 2, !tbaa !282
  br label %37

37:                                               ; preds = %19, %35, %23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !260

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.3, i32 noundef 70, i32 noundef 80, ptr noundef %7) #14
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #14
  %14 = load ptr, ptr %13, align 8, !tbaa !190
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #14
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !180 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 !prof !310 {
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 2, !tbaa !282, !range !299, !noundef !300
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %50, label %9, !prof !311

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !158
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %31, !prof !312

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(776) %15) #14
  %17 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %17, ptr noundef %1, i32 noundef %2) #14
  br i1 %18, label %50, label %19, !prof !312

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  %20 = load ptr, ptr %14, align 8, !tbaa !181
  %21 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(776) %20) #14
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %5, align 8, !tbaa !313
  %24 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !314
  %26 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %5, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !182
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %5, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !184
  call void @_ZN11xercesc_2_710XSDLocator9setValuesEPKtS2_ll(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef %23, ptr noundef %25, i64 noundef %27, i64 noundef %29) #14
  %30 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 9
  call void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %30, i32 noundef 108, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, ptr noundef nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %50

31:                                               ; preds = %9
  br i1 %3, label %37, label %32

32:                                               ; preds = %31
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  %36 = zext i32 %2 to i64
  br label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgCDataStartE) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef %1, i32 noundef %2) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgCDataEndE) #14
  br label %50

39:                                               ; preds = %34, %46
  %40 = phi i64 [ 0, %34 ], [ %48, %46 ]
  %41 = getelementptr inbounds i16, ptr %1, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !168
  switch i16 %42, label %46 [
    i16 38, label %44
    i16 60, label %43
  ]

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %39, %43
  %45 = phi ptr [ @_ZN11xercesc_2_76XMLUni4fgLTE, %43 ], [ @_ZN11xercesc_2_76XMLUni5fgAmpE, %39 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %35, i16 noundef zeroext 38) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull %45) #14
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i16 [ %42, %39 ], [ 59, %44 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %35, i16 noundef zeroext %47) #14
  %48 = add nuw nsw i64 %40, 1
  %49 = icmp eq i64 %48, %36
  br i1 %49, label %50, label %39, !llvm.loop !315

50:                                               ; preds = %46, %32, %37, %13, %19, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !316 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 !prof !317 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSDLocator9setValuesEPKtS2_ll(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !319 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !320

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !162
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !163
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !321

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #14
  %12 = load i32, ptr %0, align 8, !tbaa !162
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !162
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !162
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #14
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !157
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %1) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %7, i16 noundef zeroext 45) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %7, i16 noundef zeroext 45) #14
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %7, i16 noundef zeroext 62) #14
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, i32 noundef %2, i1 zeroext %3) unnamed_addr #2 align 2 !prof !208 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 2, !tbaa !282, !range !299, !noundef !300
  %7 = icmp ne i8 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !range !299
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %7, i1 %10, i1 false
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !322

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %1, i32 noundef %2) #14
  br label %18

18:                                               ; preds = %4, %16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSDDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #2 align 2 !prof !186 {
  %10 = icmp sgt i32 %3, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 1
  store i8 1, ptr %12, align 8, !tbaa !138
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !247
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !135
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #14
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSDDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #8 align 2 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSDDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(368) %10, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !186 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !135
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_712XSDDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #8 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = tail call noundef ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !257
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !135
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #14
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_712XSDDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  %4 = tail call noundef ptr @_ZN11xercesc_2_712XSDDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(368) %3, ptr noundef %1) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #4 comdat align 2 !prof !186 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 comdat align 2 !prof !134 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: noinline optsize uwtable
declare void @_ZThn8_N11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #8 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 1 %1) #14
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #8 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  ret i1 %5
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #8 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 1 %1) #14
  ret void
}

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef, ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #8 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !323 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !324 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !325
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ElemStack11getPrefixIdEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  %4 = tail call noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !327 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !329

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !330
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !332 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !333

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !334
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !336 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !339
  %8 = load ptr, ptr %0, align 8, !tbaa !340
  %9 = load ptr, ptr %5, align 8, !tbaa !135
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !187
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !341
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !342

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !337
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !343
  %23 = load ptr, ptr %20, align 8, !tbaa !135
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !344

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !190
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !345, !llvm.loop !346

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ElemStack15getNamespaceMapEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79ElemStack14getPrefixForIdEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !347 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %15, label %8, !prof !348

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !349
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 89, ptr noundef %11) #14
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #12
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !350
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !351
  ret ptr %22
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !186 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !186 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !208 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !356 {
  store i32 0, ptr %0, align 8, !tbaa !162
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !357 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !358
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !186 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !186 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !231 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !173
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !174
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !359

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !176
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !135
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #14
  %22 = load i32, ptr %3, align 4, !tbaa !173
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !175
  br i1 %23, label %26, label %32, !prof !360

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !176
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !135
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #14
  store ptr %21, ptr %28, align 8, !tbaa !175
  store i32 %13, ptr %6, align 8, !tbaa !174
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !187
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !187
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !173
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !361, !llvm.loop !362

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !180 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #14
  %3 = load ptr, ptr %1, align 8, !tbaa !190
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !363
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !365
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !190
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !365
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !180 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !365
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !366
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !260

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !367
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !135
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #14
  %22 = load i32, ptr %3, align 4, !tbaa !365
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !367
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !363
  %31 = load ptr, ptr %28, align 8, !tbaa !135
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #14
  store ptr %21, ptr %29, align 8, !tbaa !363
  store i32 %13, ptr %6, align 8, !tbaa !366
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !363
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !190
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !190
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !368

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !369 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !365
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !367
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !365
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !259

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !367
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !363
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !365
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !259

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !367
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !259

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
  %24 = load ptr, ptr %19, align 8, !tbaa !363
  %25 = add nuw nsw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !190
  %28 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr %27, ptr %28, align 8, !tbaa !190
  %29 = icmp eq i64 %25, %21
  br i1 %29, label %30, label %22, !llvm.loop !370

30:                                               ; preds = %22, %16, %13
  store i32 %14, ptr %3, align 4, !tbaa !365
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !186 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !186 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !135
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!133}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!35 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_710XSDLocatorC1Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb, i64 1}
!41 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_712XSDDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb, i64 1}
!44 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!45 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 12}
!46 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIjED2Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!48 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_77LocatorD2Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_716XSDErrorReporterD2Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 1}
!51 = !{ptr @_ZN11xercesc_2_712XSDDOMParserD2Ev, ptr @_ZN11xercesc_2_715XercesDOMParserD2Ev, i64 1}
!52 = !{ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, ptr @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev, i64 550}
!53 = !{ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, ptr @_ZNK11xercesc_2_710XMLScanner10getLocatorEv, i64 550}
!54 = !{ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, i64 550}
!55 = !{ptr @_ZN11xercesc_2_712XSDDOMParser19createElementNSNodeEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv, i64 550}
!56 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!57 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!58 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!59 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!60 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!61 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!62 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!63 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!64 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIjE10addElementERKj, ptr @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj, i64 833040}
!65 = !{ptr @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE, i64 1}
!66 = !{ptr @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 1}
!67 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!68 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 1099}
!69 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1209}
!70 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_715XercesDOMParser10getURITextEj, i64 1}
!71 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv, i64 1209}
!72 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, i64 11}
!73 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLBufBid3setEPKtj, i64 1}
!74 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLBufBid6appendEt, i64 1}
!75 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLBufBid6appendEPKtj, i64 1}
!76 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 557}
!77 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv, i64 1}
!78 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, i64 11}
!79 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 649}
!80 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, i64 649}
!81 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, i64 649}
!82 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv, i64 7}
!83 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 649}
!84 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv, i64 649}
!85 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr7getTypeEv, i64 649}
!86 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE, i64 1}
!87 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb, i64 1}
!88 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv, i64 649}
!89 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv, i64 20}
!90 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv, i64 10}
!91 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv, i64 16}
!92 = !{ptr @_ZN11xercesc_2_712XSDDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_, i64 550}
!93 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1666922}
!94 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!95 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!96 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!97 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!98 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!99 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE4pushERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_, i64 550}
!100 = !{ptr @_ZN11xercesc_2_712XSDDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712XSDDOMParser20endAnnotationElementERKNS_14XMLElementDeclEb, i64 1}
!101 = !{ptr @_ZN11xercesc_2_712XSDDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, i64 550}
!102 = !{ptr @_ZN11xercesc_2_712XSDDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv, i64 550}
!103 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv, i64 550}
!104 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @__cxa_allocate_exception, i64 1}
!105 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE16getMemoryManagerEv, i64 1}
!106 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!107 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, i64 549}
!108 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, i64 549}
!109 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_7DOMNodeEE5emptyEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE4sizeEv, i64 550}
!110 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZNK11xercesc_2_710XMLScanner12getReaderMgrEv, i64 666}
!111 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 665}
!112 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj, i64 665}
!113 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev, i64 1}
!114 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, i64 1}
!115 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_710XSDLocator9setValuesEPKtS2_ll, i64 1}
!116 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorE, i64 1}
!117 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 17}
!118 = !{ptr @_ZN11xercesc_2_712XSDDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 7}
!119 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!120 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!121 = !{ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1796708}
!122 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj, i64 1798414}
!123 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_allocate_exception, i64 2}
!124 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!125 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_throw, i64 1}
!126 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_free_exception, i64 1}
!127 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!128 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj, i64 550}
!129 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!130 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!131 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!132 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!133 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!134 = !{!"function_entry_count", i64 1}
!135 = !{!136, !136, i64 0}
!136 = !{!"vtable pointer", !137, i64 0}
!137 = !{!"Simple C++ TBAA"}
!138 = !{!139, !147, i64 224}
!139 = !{!"_ZTSN11xercesc_2_712XSDDOMParserE", !140, i64 0, !147, i64 224, !151, i64 228, !151, i64 232, !151, i64 236, !149, i64 240, !149, i64 248, !149, i64 256, !152, i64 264, !153, i64 304, !154, i64 328}
!140 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !141, i64 0, !149, i64 200, !149, i64 208, !149, i64 216}
!141 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !142, i64 0, !143, i64 8, !144, i64 16, !145, i64 24, !146, i64 32, !147, i64 40, !147, i64 41, !147, i64 42, !147, i64 43, !147, i64 44, !147, i64 45, !147, i64 46, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !150, i64 160, !149, i64 184, !149, i64 192}
!142 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!143 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!144 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!145 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!146 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!147 = !{!"bool", !148, i64 0}
!148 = !{!"omnipotent char", !137, i64 0}
!149 = !{!"any pointer", !148, i64 0}
!150 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !151, i64 0, !149, i64 8, !149, i64 16}
!151 = !{!"int", !148, i64 0}
!152 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !151, i64 0, !151, i64 4, !151, i64 8, !147, i64 12, !149, i64 16, !149, i64 24, !149, i64 32}
!153 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !147, i64 8, !149, i64 16}
!154 = !{!"_ZTSN11xercesc_2_710XSDLocatorE", !155, i64 0, !156, i64 8, !156, i64 16, !149, i64 24, !149, i64 32}
!155 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!156 = !{!"long", !148, i64 0}
!157 = !{!139, !151, i64 228}
!158 = !{!139, !151, i64 232}
!159 = !{!139, !151, i64 236}
!160 = !{!139, !149, i64 256}
!161 = !{!"function_entry_count", i64 496321}
!162 = !{!152, !151, i64 0}
!163 = !{!152, !151, i64 4}
!164 = !{!152, !151, i64 8}
!165 = !{!152, !147, i64 12}
!166 = !{!152, !149, i64 16}
!167 = !{!152, !149, i64 32}
!168 = !{!169, !169, i64 0}
!169 = !{!"short", !148, i64 0}
!170 = !{!"function_entry_count", i64 12}
!171 = !{!172, !147, i64 0}
!172 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !147, i64 0, !151, i64 4, !151, i64 8, !149, i64 16, !149, i64 24}
!173 = !{!172, !151, i64 4}
!174 = !{!172, !151, i64 8}
!175 = !{!172, !149, i64 16}
!176 = !{!172, !149, i64 24}
!177 = !{!"function_entry_count", i64 5}
!178 = !{!153, !149, i64 16}
!179 = !{!"function_entry_count", i64 855}
!180 = !{!"function_entry_count", i64 550}
!181 = !{!141, !149, i64 48}
!182 = !{!183, !156, i64 16}
!183 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !149, i64 0, !149, i64 8, !156, i64 16, !156, i64 24}
!184 = !{!183, !156, i64 24}
!185 = !{!"function_entry_count", i64 553}
!186 = !{!"function_entry_count", i64 0}
!187 = !{!151, !151, i64 0}
!188 = distinct !{!188, !189}
!189 = !{!"llvm.loop.mustprogress"}
!190 = !{!149, !149, i64 0}
!191 = !{!192, !151, i64 0}
!192 = !{!"_ZTSN11xercesc_2_711PrefMapElemE", !151, i64 0, !151, i64 4}
!193 = !{!192, !151, i64 4}
!194 = distinct !{!194, !189}
!195 = !{!"function_entry_count", i64 7992849}
!196 = !{!"branch_weights", i32 1, i32 7992850}
!197 = !{!"function_entry_count", i64 789922}
!198 = !{!"branch_weights", i32 1, i32 789923}
!199 = !{!"branch_weights", i32 285, i32 789639}
!200 = !{!"branch_weights", i32 789639, i32 41628304}
!201 = distinct !{!201, !189}
!202 = !{!"branch_weights", i32 789637, i32 3}
!203 = !{!"function_entry_count", i64 1668291}
!204 = !{!205, !149, i64 16}
!205 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !206, i64 0, !149, i64 8, !149, i64 16, !207, i64 24, !151, i64 28, !147, i64 32}
!206 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!207 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !148, i64 0}
!208 = !{!"function_entry_count", i64 2}
!209 = !{!"function_entry_count", i64 1366334}
!210 = !{!211, !151, i64 12}
!211 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !147, i64 8, !151, i64 12, !151, i64 16, !149, i64 24, !149, i64 32}
!212 = !{!"branch_weights", i32 1366335, i32 1}
!213 = !{!211, !149, i64 32}
!214 = !{!211, !149, i64 24}
!215 = !{!"function_entry_count", i64 360600}
!216 = !{!217, !149, i64 16}
!217 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !147, i64 0, !218, i64 4, !151, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !147, i64 48}
!218 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !148, i64 0}
!219 = !{!"function_entry_count", i64 1231717351}
!220 = !{!"branch_weights", i32 621, i32 -1469098093}
!221 = !{!"branch_weights", i32 408901017, i32 1}
!222 = !{!"branch_weights", i32 267, i32 4}
!223 = !{!"branch_weights", i32 1, i32 4}
!224 = !{!"branch_weights", i32 156, i32 112}
!225 = !{!"branch_weights", i32 1, i32 112}
!226 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!227 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!228 = distinct !{!228, !189}
!229 = !{!"function_entry_count", i64 159625}
!230 = !{!217, !149, i64 24}
!231 = !{!"function_entry_count", i64 833040}
!232 = !{!233, !151, i64 4}
!233 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_11PrefMapElemEEE", !147, i64 0, !151, i64 4, !151, i64 8, !149, i64 16, !149, i64 24}
!234 = !{!233, !149, i64 24}
!235 = !{!233, !149, i64 16}
!236 = !{!"function_entry_count", i64 130}
!237 = !{!"branch_weights", i32 130, i32 1}
!238 = !{!"branch_weights", i32 1, i32 127}
!239 = !{!"branch_weights", i32 130, i32 1470}
!240 = distinct !{!240, !189}
!241 = !{!"branch_weights", i32 127, i32 204673}
!242 = distinct !{!242, !189}
!243 = !{!141, !149, i64 88}
!244 = !{!141, !149, i64 72}
!245 = !{!"function_entry_count", i64 10769804}
!246 = !{!"function_entry_count", i64 8985736}
!247 = !{!139, !149, i64 240}
!248 = !{!"function_entry_count", i64 3}
!249 = !{!250, !149, i64 144}
!250 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !251, i64 0, !156, i64 8, !147, i64 16, !147, i64 17, !147, i64 18, !147, i64 19, !147, i64 20, !147, i64 21, !147, i64 22, !147, i64 23, !147, i64 24, !147, i64 25, !147, i64 26, !147, i64 27, !147, i64 28, !147, i64 29, !147, i64 30, !147, i64 31, !147, i64 32, !147, i64 33, !147, i64 34, !147, i64 35, !147, i64 36, !147, i64 37, !147, i64 38, !151, i64 40, !151, i64 44, !151, i64 48, !151, i64 52, !151, i64 56, !151, i64 60, !151, i64 64, !151, i64 68, !149, i64 72, !151, i64 80, !151, i64 84, !151, i64 88, !151, i64 92, !151, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !147, i64 176, !252, i64 184, !149, i64 264, !254, i64 272, !149, i64 280, !149, i64 288, !149, i64 296, !149, i64 304, !149, i64 312, !149, i64 320, !149, i64 328, !149, i64 336, !149, i64 344, !253, i64 352, !149, i64 360, !150, i64 368, !152, i64 392, !152, i64 432, !152, i64 472, !152, i64 512, !152, i64 552, !152, i64 592, !152, i64 632, !255, i64 672}
!251 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!252 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !155, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !151, i64 40, !149, i64 48, !147, i64 56, !253, i64 60, !147, i64 64, !149, i64 72}
!253 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !148, i64 0}
!254 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !148, i64 0}
!255 = !{!"_ZTSN11xercesc_2_79ElemStackE", !151, i64 0, !151, i64 4, !256, i64 8, !149, i64 48, !151, i64 56, !151, i64 60, !151, i64 64, !151, i64 68, !151, i64 72, !151, i64 76, !151, i64 80, !149, i64 88, !149, i64 96}
!256 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !206, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !151, i64 32, !151, i64 36}
!257 = !{!139, !149, i64 248}
!258 = !{!250, !149, i64 136}
!259 = !{!"branch_weights", i32 551, i32 1}
!260 = !{!"branch_weights", i32 1, i32 551}
!261 = !{!"branch_weights", i32 1, i32 550}
!262 = !{!"branch_weights", i32 2, i32 650}
!263 = !{!"branch_weights", i32 649, i32 3}
!264 = !{!"branch_weights", i32 651, i32 1}
!265 = !{!"branch_weights", i32 1, i32 651}
!266 = !{!267, !149, i64 80}
!267 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !268, i64 0, !273, i64 32, !274, i64 48, !149, i64 80, !149, i64 88, !149, i64 96, !147, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !256, i64 136, !149, i64 176, !149, i64 184, !149, i64 192, !156, i64 200, !149, i64 208, !149, i64 216, !149, i64 224, !149, i64 232, !149, i64 240, !149, i64 248, !149, i64 256, !149, i64 264, !149, i64 272, !149, i64 280, !151, i64 288, !147, i64 292}
!268 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !269, i64 0, !270, i64 8, !271, i64 16, !272, i64 24}
!269 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!270 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!271 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!272 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!273 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !149, i64 0, !169, i64 8}
!274 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !149, i64 0, !149, i64 8, !275, i64 16}
!275 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !276, i64 0, !149, i64 8}
!276 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!277 = !{!"branch_weights", i32 550, i32 101}
!278 = distinct !{!278, !189}
!279 = distinct !{!279, !189}
!280 = !{!141, !149, i64 64}
!281 = !{!141, !149, i64 96}
!282 = !{!141, !147, i64 42}
!283 = !{!"function_entry_count", i64 1666922}
!284 = !{!"function_entry_count", i64 344419}
!285 = !{!250, !151, i64 52}
!286 = !{!"function_entry_count", i64 379609}
!287 = !{!288, !149, i64 8}
!288 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !149, i64 0, !149, i64 8}
!289 = !{!288, !149, i64 0}
!290 = !{!"function_entry_count", i64 10}
!291 = !{!"function_entry_count", i64 360316}
!292 = !{!250, !151, i64 64}
!293 = !{!"function_entry_count", i64 201563}
!294 = !{!217, !218, i64 4}
!295 = !{!"function_entry_count", i64 2815}
!296 = !{!273, !169, i64 8}
!297 = !{!"function_entry_count", i64 650}
!298 = !{!217, !147, i64 0}
!299 = !{i8 0, i8 2}
!300 = !{}
!301 = !{!"function_entry_count", i64 401820}
!302 = !{!303, !304, i64 8}
!303 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !206, i64 0, !304, i64 8, !218, i64 12, !305, i64 16, !147, i64 20, !147, i64 21, !151, i64 24, !149, i64 32, !149, i64 40, !149, i64 48}
!304 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !148, i64 0}
!305 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !148, i64 0}
!306 = !{!"function_entry_count", i64 379607}
!307 = !{!"function_entry_count", i64 19496}
!308 = !{!303, !149, i64 32}
!309 = !{!"branch_weights", i32 2, i32 550}
!310 = !{!"function_entry_count", i64 667}
!311 = !{!"branch_weights", i32 1, i32 668}
!312 = !{!"branch_weights", i32 668, i32 1}
!313 = !{!183, !149, i64 0}
!314 = !{!183, !149, i64 8}
!315 = distinct !{!315, !189}
!316 = !{!"function_entry_count", i64 668}
!317 = !{!"function_entry_count", i64 7478295}
!318 = !{!252, !149, i64 16}
!319 = !{!"function_entry_count", i64 2718768}
!320 = !{!"branch_weights", i32 1, i32 2718769}
!321 = !{!"branch_weights", i32 2718765, i32 5}
!322 = !{!"branch_weights", i32 1, i32 15}
!323 = !{!"function_entry_count", i64 5836268}
!324 = !{!"function_entry_count", i64 2192223}
!325 = !{!326, !149, i64 32}
!326 = !{!"_ZTSN11xercesc_2_75QNameE", !206, i64 0, !151, i64 8, !151, i64 12, !151, i64 16, !151, i64 20, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48}
!327 = !{!"function_entry_count", i64 1796708}
!328 = !{!256, !149, i64 24}
!329 = !{!"branch_weights", i32 1, i32 1796709}
!330 = !{!331, !151, i64 0}
!331 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !151, i64 0, !149, i64 8}
!332 = !{!"function_entry_count", i64 1798414}
!333 = !{!"branch_weights", i32 291, i32 1798125}
!334 = !{!335, !149, i64 0}
!335 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !149, i64 0, !149, i64 8, !149, i64 16}
!336 = !{!"function_entry_count", i64 1798704}
!337 = !{!338, !149, i64 40}
!338 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !149, i64 0, !147, i64 8, !149, i64 16, !151, i64 24, !151, i64 28, !151, i64 32, !149, i64 40}
!339 = !{!338, !151, i64 24}
!340 = !{!338, !149, i64 0}
!341 = !{!338, !149, i64 16}
!342 = !{!"branch_weights", i32 1, i32 580}
!343 = !{!335, !149, i64 16}
!344 = !{!"branch_weights", i32 1798125, i32 634}
!345 = !{!"branch_weights", i32 580, i32 1798178}
!346 = distinct !{!346, !189}
!347 = !{!"function_entry_count", i64 2060280}
!348 = !{!"branch_weights", i32 -149696008, i32 4023}
!349 = !{!256, !149, i64 8}
!350 = !{!256, !149, i64 16}
!351 = !{!331, !149, i64 8}
!352 = !{!353, !149, i64 40}
!353 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !354, i64 8, !149, i64 16, !151, i64 24, !149, i64 32, !149, i64 40}
!354 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !148, i64 0}
!355 = !{!252, !149, i64 24}
!356 = !{!"function_entry_count", i64 695}
!357 = !{!"function_entry_count", i64 6553673}
!358 = !{!326, !151, i64 20}
!359 = !{!"branch_weights", i32 18, i32 833024}
!360 = !{!"branch_weights", i32 1, i32 143}
!361 = !{!"branch_weights", i32 2177, i32 143}
!362 = distinct !{!362, !189}
!363 = !{!364, !149, i64 16}
!364 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEE", !147, i64 0, !151, i64 4, !151, i64 8, !149, i64 16, !149, i64 24}
!365 = !{!364, !151, i64 4}
!366 = !{!364, !151, i64 8}
!367 = !{!364, !149, i64 24}
!368 = distinct !{!368, !189}
!369 = !{!"function_entry_count", i64 1100}
!370 = distinct !{!370, !189}
